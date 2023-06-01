.class Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkImsConfig.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsConfig;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 445
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 448
    iget-object v0, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .registers 9
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 594
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    const/4 v1, 0x0

    if-eqz p3, :cond_17

    invoke-interface {p3}, Lcom/android/ims/ImsConfigListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 598
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 599
    .local v1, "_status":Z
    if-nez v1, :cond_36

    .line 600
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 601
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/ims/internal/IMtkImsConfig;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 602
    return-void

    .line 607
    .end local v1    # "_status":Z
    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 608
    nop

    .line 609
    return-void

    .line 607
    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 608
    throw v1
.end method

.method public getImsResCapability(I)I
    .registers 7
    .param p1, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 776
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 777
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 778
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->getImsResCapability(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 778
    return v3

    .line 781
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 782
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 785
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 787
    nop

    .line 788
    return v2

    .line 785
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 787
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 452
    const-string v0, "com.mediatek.ims.internal.IMtkImsConfig"

    return-object v0
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .registers 7
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 500
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 501
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 502
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 502
    return-object v3

    .line 505
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move-object v2, v3

    .line 509
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 511
    nop

    .line 512
    return-object v2

    .line 509
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 511
    throw v2
.end method

.method public getProvisionedValue(I)I
    .registers 7
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 464
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 467
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 470
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 471
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 472
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->getProvisionedValue(I)I

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 472
    return v3

    .line 475
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move v2, v3

    .line 479
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    nop

    .line 482
    return v2

    .line 479
    .end local v2    # "_result":I
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    throw v2
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 691
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 692
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/android/ims/ImsConfigListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 693
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 694
    .local v1, "_status":Z
    if-nez v1, :cond_31

    .line 695
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 696
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 697
    return-void

    .line 702
    .end local v1    # "_status":Z
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    nop

    .line 704
    return-void

    .line 702
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 703
    throw v1
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .registers 10
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 624
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 626
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    if-eqz p4, :cond_1d

    invoke-interface {p4}, Lcom/android/ims/ImsConfigListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 631
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 632
    .local v2, "_status":Z
    if-nez v2, :cond_3f

    .line 633
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 634
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_4a

    .line 641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 635
    return-void

    .line 638
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4a

    .line 641
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 643
    nop

    .line 644
    return-void

    .line 641
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 643
    throw v2
.end method

.method public setImsResCapability(II)V
    .registers 8
    .param p1, "feature"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 742
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 744
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 748
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 749
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 750
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 751
    return-void

    .line 754
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 757
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 759
    nop

    .line 760
    return-void

    .line 757
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 759
    throw v2
.end method

.method public setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .registers 9
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 854
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 857
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 860
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 862
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 863
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 864
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_46

    .line 871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 864
    return-object v3

    .line 867
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 868
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_46

    move-object v2, v3

    .line 871
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 873
    nop

    .line 874
    return-object v2

    .line 871
    .end local v2    # "_result":[I
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 873
    throw v2
.end method

.method public setModemImsIwlanCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .registers 9
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 925
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 926
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 927
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 930
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 931
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 932
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setModemImsIwlanCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_46

    .line 939
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 932
    return-object v3

    .line 935
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 936
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_46

    move-object v2, v3

    .line 939
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 941
    nop

    .line 942
    return-object v2

    .line 939
    .end local v2    # "_result":[I
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 941
    throw v2
.end method

.method public setModemImsWoCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .registers 9
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 888
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 891
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 893
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 894
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 896
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 897
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 898
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setModemImsWoCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_46

    .line 905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 898
    return-object v3

    .line 901
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 902
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_46

    move-object v2, v3

    .line 905
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 907
    nop

    .line 908
    return-object v2

    .line 905
    .end local v2    # "_result":[I
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 907
    throw v2
.end method

.method public setMultiFeatureValues([I[I[ILcom/android/ims/ImsConfigListener;)V
    .registers 10
    .param p1, "feature"    # [I
    .param p2, "network"    # [I
    .param p3, "value"    # [I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 659
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 661
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 663
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 664
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 665
    if-eqz p4, :cond_1d

    invoke-interface {p4}, Lcom/android/ims/ImsConfigListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 666
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 667
    .local v2, "_status":Z
    if-nez v2, :cond_3f

    .line 668
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 669
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setMultiFeatureValues([I[I[ILcom/android/ims/ImsConfigListener;)V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_4a

    .line 676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    return-void

    .line 673
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4a

    .line 676
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 678
    nop

    .line 679
    return-void

    .line 676
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 678
    throw v2
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .registers 8
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 559
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 562
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 566
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 567
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 568
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_42

    .line 575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 568
    return v3

    .line 571
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_42

    move v2, v3

    .line 575
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    nop

    .line 578
    return v2

    .line 575
    .end local v2    # "_result":I
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    throw v2
.end method

.method public setProvisionedValue(II)I
    .registers 8
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 526
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 529
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 533
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 534
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 535
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setProvisionedValue(II)I

    move-result v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_42

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 535
    return v3

    .line 538
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_42

    move v2, v3

    .line 542
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    nop

    .line 545
    return v2

    .line 542
    .end local v2    # "_result":I
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw v2
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .registers 8
    .param p1, "quality"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConfigListener;
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
    const-string v1, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-interface {p2}, Lcom/android/ims/ImsConfigListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 721
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 722
    .local v1, "_status":Z
    if-nez v1, :cond_34

    .line 723
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 724
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_39

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 725
    return-void

    .line 730
    .end local v1    # "_status":Z
    :cond_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 731
    nop

    .line 732
    return-void

    .line 730
    :catchall_39
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 731
    throw v1
.end method

.method public setVoltePreference(I)V
    .registers 7
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 824
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 826
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 827
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 829
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 830
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 831
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setVoltePreference(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 832
    return-void

    .line 835
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 838
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 840
    nop

    .line 841
    return-void

    .line 838
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 840
    throw v2
.end method

.method public setWfcMode(I)V
    .registers 7
    .param p1, "mode"    # I
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

    .line 800
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsConfig"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 803
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 804
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 805
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setWfcMode(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 806
    return-void

    .line 809
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 812
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 814
    nop

    .line 815
    return-void

    .line 812
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 814
    throw v2
.end method

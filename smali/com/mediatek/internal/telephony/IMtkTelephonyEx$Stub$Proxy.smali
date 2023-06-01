.class Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkTelephonyEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkTelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkTelephonyEx;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1811
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1812
    return-void
.end method


# virtual methods
.method public abortFemtoCellList(I)Z
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3552
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3555
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3556
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3557
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3558
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3559
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3560
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->abortFemtoCellList(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 3567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3560
    return v3

    .line 3563
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3564
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 3567
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3569
    nop

    .line 3570
    return v2

    .line 3567
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3569
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1815
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelAvailableNetworks(I)Z
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3679
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3680
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3681
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3682
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->cancelAvailableNetworks(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 3689
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3682
    return v3

    .line 3685
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3686
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 3689
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3691
    nop

    .line 3692
    return v2

    .line 3689
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3691
    throw v2
.end method

.method public exitEmergencyCallbackMode(I)Z
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3078
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3081
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3082
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3083
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3084
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3085
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3086
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->exitEmergencyCallbackMode(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 3093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3086
    return v3

    .line 3089
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3090
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 3093
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3095
    nop

    .line 3096
    return v2

    .line 3093
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3095
    throw v2
.end method

.method public getAdnStorageInfo(I)[I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2853
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2856
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2857
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2858
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2859
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2860
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2861
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getAdnStorageInfo(I)[I

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2868
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2861
    return-object v3

    .line 2864
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2865
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 2868
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2870
    nop

    .line 2871
    return-object v2

    .line 2868
    .end local v2    # "_result":[I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2870
    throw v2
.end method

.method public getAllCellInfo(ILjava/lang/String;)Ljava/util/List;
    .registers 8
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

    .line 3408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3412
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3414
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3415
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3416
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 3417
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 3418
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getAllCellInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_45

    .line 3425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3418
    return-object v3

    .line 3421
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3422
    sget-object v3, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_45

    move-object v2, v3

    .line 3425
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3427
    nop

    .line 3428
    return-object v2

    .line 3425
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3427
    throw v2
.end method

.method public getApcInfoUsingSlotId(I)Lcom/mediatek/internal/telephony/PseudoCellInfo;
    .registers 7
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3141
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3144
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3146
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3147
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3148
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3149
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getApcInfoUsingSlotId(I)Lcom/mediatek/internal/telephony/PseudoCellInfo;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_4b

    .line 3161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3149
    return-object v3

    .line 3152
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3153
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_42

    .line 3154
    sget-object v3, Lcom/mediatek/internal/telephony/PseudoCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_4b

    .local v3, "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    goto :goto_43

    .line 3157
    .end local v3    # "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :cond_42
    const/4 v3, 0x0

    .line 3161
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :goto_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3163
    nop

    .line 3164
    return-object v3

    .line 3161
    .end local v3    # "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3163
    throw v2
.end method

.method public getCallSubAddressEnabled(I)Z
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4134
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4137
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4139
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4140
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 4141
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 4142
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getCallSubAddressEnabled(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 4149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4142
    return v3

    .line 4145
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4146
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 4149
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4151
    nop

    .line 4152
    return v2

    .line 4149
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4151
    throw v2
.end method

.method public getCdmaSubscriptionActStatus(I)I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3177
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3178
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3179
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3180
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3181
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3182
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getCdmaSubscriptionActStatus(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 3189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3182
    return v3

    .line 3185
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3186
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 3189
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3191
    nop

    .line 3192
    return v2

    .line 3189
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3191
    throw v2
.end method

.method public getCellLocationUsingSlotId(I)Landroid/os/Bundle;
    .registers 7
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2545
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2548
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2550
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2551
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2552
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2553
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getCellLocationUsingSlotId(I)Landroid/os/Bundle;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_4b

    .line 2565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2553
    return-object v3

    .line 2556
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2557
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_42

    .line 2558
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_4b

    .local v3, "_result":Landroid/os/Bundle;
    goto :goto_43

    .line 2561
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_42
    const/4 v3, 0x0

    .line 2565
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/os/Bundle;
    :goto_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2567
    nop

    .line 2568
    return-object v3

    .line 2565
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2567
    throw v2
.end method

.method public getDebuggingDsdaStatus()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3997
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4000
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4001
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4002
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 4003
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 4004
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getDebuggingDsdaStatus()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 4011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4004
    return v3

    .line 4007
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4008
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 4011
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4013
    nop

    .line 4014
    return v2

    .line 4011
    .end local v2    # "_result":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4013
    throw v2
.end method

.method public getDisable2G(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3496
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3499
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3501
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3502
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3503
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3504
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getDisable2G(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 3511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3504
    return v3

    .line 3507
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3508
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 3511
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3513
    nop

    .line 3514
    return v2

    .line 3511
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3513
    throw v2
.end method

.method public getFemtoCellList(I)Ljava/util/List;
    .registers 7
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

    .line 3523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3524
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3527
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3529
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3530
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3531
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3532
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getFemtoCellList(I)Ljava/util/List;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 3539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3532
    return-object v3

    .line 3535
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3536
    sget-object v3, Lcom/mediatek/internal/telephony/FemtoCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_42

    move-object v2, v3

    .line 3539
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3541
    nop

    .line 3542
    return-object v2

    .line 3539
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3541
    throw v2
.end method

.method public getIccAppFamily(I)I
    .registers 7
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1862
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1865
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1867
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1868
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 1869
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1870
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getIccAppFamily(I)I

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 1877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1870
    return v3

    .line 1873
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1874
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move v2, v3

    .line 1877
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1879
    nop

    .line 1880
    return v2

    .line 1877
    .end local v2    # "_result":I
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1879
    throw v2
.end method

.method public getIccAtr(I)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1976
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1979
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1981
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1982
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 1983
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1984
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getIccAtr(I)Ljava/lang/String;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 1991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1984
    return-object v3

    .line 1987
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1988
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move-object v2, v3

    .line 1991
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1993
    nop

    .line 1994
    return-object v2

    .line 1991
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1993
    throw v2
.end method

.method public getIccCardType(I)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1893
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1895
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1896
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 1897
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1898
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 1905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1898
    return-object v3

    .line 1901
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1902
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move-object v2, v3

    .line 1905
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1907
    nop

    .line 1908
    return-object v2

    .line 1905
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1907
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1819
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    return-object v0
.end method

.method public getIsLastEccIms()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3221
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3224
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3225
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3226
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 3227
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 3228
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getIsLastEccIms()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 3235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3228
    return v3

    .line 3231
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3232
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_40

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    :cond_37
    move v2, v4

    .line 3235
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3237
    nop

    .line 3238
    return v2

    .line 3235
    .end local v2    # "_result":Z
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3237
    throw v2
.end method

.method public getLocatedPlmn(I)Ljava/lang/String;
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3441
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3443
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3444
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3445
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3446
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getLocatedPlmn(I)Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 3453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3446
    return-object v3

    .line 3449
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3450
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 3453
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3455
    nop

    .line 3456
    return-object v2

    .line 3453
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3455
    throw v2
.end method

.method public getMainCapabilityPhoneId()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2731
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2734
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2735
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2736
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 2737
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2738
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getMainCapabilityPhoneId()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 2745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2738
    return v3

    .line 2741
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2742
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 2745
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2747
    nop

    .line 2748
    return v2

    .line 2745
    .end local v2    # "_result":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2747
    throw v2
.end method

.method public getMvnoMatchType(I)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2304
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2305
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2306
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2307
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2314
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2307
    return-object v3

    .line 2310
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2311
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 2314
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2316
    nop

    .line 2317
    return-object v2

    .line 2314
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2316
    throw v2
.end method

.method public getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2328
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2333
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2334
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2335
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 2336
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 2337
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 2344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2337
    return-object v3

    .line 2340
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2341
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move-object v2, v3

    .line 2344
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2346
    nop

    .line 2347
    return-object v2

    .line 2344
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2346
    throw v2
.end method

.method public getNrMapStatus(I)Ljava/lang/String;
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4109
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4111
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4112
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 4113
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 4114
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getNrMapStatus(I)Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 4121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4114
    return-object v3

    .line 4117
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4118
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 4121
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4123
    nop

    .line 4124
    return-object v2

    .line 4121
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4123
    throw v2
.end method

.method public getPCO520State(I)I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3049
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3052
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3054
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3055
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3056
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3057
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getPCO520State(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 3064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3057
    return v3

    .line 3060
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3061
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 3064
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3066
    nop

    .line 3067
    return v2

    .line 3064
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3066
    throw v2
.end method

.method public getRoamingEnable(I)[I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3895
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3898
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3899
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3900
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3901
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3902
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3903
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getRoamingEnable(I)[I

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 3910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3903
    return-object v3

    .line 3906
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3907
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 3910
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3912
    nop

    .line 3913
    return-object v2

    .line 3910
    .end local v2    # "_result":[I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3912
    throw v2
.end method

.method public getRxTestResult(I)[I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2943
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2946
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2947
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2948
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2949
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2950
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2951
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getRxTestResult(I)[I

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2951
    return-object v3

    .line 2954
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2955
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 2958
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2960
    nop

    .line 2961
    return-object v2

    .line 2958
    .end local v2    # "_result":[I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2960
    throw v2
.end method

.method public getSelfActivateState(I)I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3017
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3020
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3021
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3022
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3023
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3024
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3025
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSelfActivateState(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 3032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3025
    return v3

    .line 3028
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3029
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 3032
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3034
    nop

    .line 3035
    return v2

    .line 3032
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3034
    throw v2
.end method

.method public getServiceStateByPhoneId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3821
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3826
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3827
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3828
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3829
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 3830
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 3831
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getServiceStateByPhoneId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_51

    .line 3843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3831
    return-object v3

    .line 3834
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3835
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_48

    .line 3836
    sget-object v3, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ServiceState;
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_51

    .local v3, "_result":Landroid/telephony/ServiceState;
    goto :goto_49

    .line 3839
    .end local v3    # "_result":Landroid/telephony/ServiceState;
    :cond_48
    const/4 v3, 0x0

    .line 3843
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/telephony/ServiceState;
    :goto_49
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3845
    nop

    .line 3846
    return-object v3

    .line 3843
    .end local v3    # "_result":Landroid/telephony/ServiceState;
    :catchall_51
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3845
    throw v2
.end method

.method public getSimLockStateForRSU(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3731
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3734
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3735
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3736
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3737
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3738
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3739
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimLockStateForRSU(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 3746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3739
    return v3

    .line 3742
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3743
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 3746
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3748
    nop

    .line 3749
    return v2

    .line 3746
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3748
    throw v2
.end method

.method public getSimOnOffExecutingState(I)I
    .registers 7
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2180
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2183
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2185
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2186
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2187
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2188
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimOnOffExecutingState(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2195
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2188
    return v3

    .line 2191
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2192
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 2195
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2197
    nop

    .line 2198
    return v2

    .line 2195
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2197
    throw v2
.end method

.method public getSimOnOffState(I)I
    .registers 7
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2151
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2154
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2156
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2157
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2158
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2159
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimOnOffState(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2159
    return v3

    .line 2162
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2163
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 2166
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2168
    nop

    .line 2169
    return v2

    .line 2166
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2168
    throw v2
.end method

.method public getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2646
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2649
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2651
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2652
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2653
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2654
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2654
    return-object v3

    .line 2657
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2658
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 2661
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2663
    nop

    .line 2664
    return-object v2

    .line 2661
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2663
    throw v2
.end method

.method public getSimSerialNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2616
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2617
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2618
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 2619
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 2620
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimSerialNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 2627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2620
    return-object v3

    .line 2623
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2624
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move-object v2, v3

    .line 2627
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2629
    nop

    .line 2630
    return-object v2

    .line 2627
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2629
    throw v2
.end method

.method public getSuggestedPlmnList(IIIILjava/lang/String;)[Ljava/lang/String;
    .registers 16
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

    .line 3924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3925
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3928
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3929
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3930
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3931
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3932
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3933
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3934
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3935
    .local v2, "_status":Z
    if-nez v2, :cond_41

    .line 3936
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 3937
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v4

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSuggestedPlmnList(IIIILjava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_51

    .line 3944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3937
    return-object v3

    .line 3940
    :cond_41
    :try_start_41
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3941
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_51

    move-object v2, v3

    .line 3944
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3946
    nop

    .line 3947
    return-object v2

    .line 3944
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_51
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3946
    throw v2
.end method

.method public getUimSubscriberId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2580
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2583
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2584
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2586
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2587
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 2588
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 2589
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getUimSubscriberId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 2596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2589
    return-object v3

    .line 2592
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2593
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move-object v2, v3

    .line 2596
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2598
    nop

    .line 2599
    return-object v2

    .line 2596
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2598
    throw v2
.end method

.method public iccExchangeSimIOEx(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 26
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

    .line 2011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2012
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2015
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_83

    .line 2016
    move/from16 v13, p1

    :try_start_f
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_81

    .line 2017
    move/from16 v14, p2

    :try_start_14
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_7f

    .line 2018
    move/from16 v15, p3

    :try_start_19
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2019
    move/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2020
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2021
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2022
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2023
    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2024
    move-object/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2025
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2026
    .local v0, "_status":Z
    if-nez v0, :cond_6d

    .line 2027
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_6d

    .line 2028
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->iccExchangeSimIOEx(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_66
    .catchall {:try_start_19 .. :try_end_66} :catchall_7d

    .line 2035
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2028
    return-object v3

    .line 2031
    :cond_6d
    :try_start_6d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2032
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_7d

    move-object v0, v3

    .line 2035
    .local v0, "_result":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2037
    nop

    .line 2038
    return-object v0

    .line 2035
    .end local v0    # "_result":[B
    :catchall_7d
    move-exception v0

    goto :goto_8a

    :catchall_7f
    move-exception v0

    goto :goto_88

    :catchall_81
    move-exception v0

    goto :goto_86

    :catchall_83
    move-exception v0

    move/from16 v13, p1

    :goto_86
    move/from16 v14, p2

    :goto_88
    move/from16 v15, p3

    :goto_8a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2037
    throw v0
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .registers 8
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3305
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3308
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3309
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3310
    if-nez p2, :cond_17

    .line 3311
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 3314
    :cond_17
    array-length v2, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3316
    :goto_1b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3317
    .local v2, "_status":Z
    if-nez v2, :cond_3b

    .line 3318
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 3319
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->invokeOemRilRequestRaw([B[B)I

    move-result v3
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_4d

    .line 3327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3319
    return v3

    .line 3322
    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3323
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3324
    .local v3, "_result":I
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_4d

    .line 3327
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3329
    nop

    .line 3330
    return v3

    .line 3327
    .end local v3    # "_result":I
    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3329
    throw v2
.end method

.method public invokeOemRilRequestRawBySlot(I[B[B)I
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3345
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3348
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3349
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3350
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3351
    if-nez p3, :cond_1a

    .line 3352
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 3355
    :cond_1a
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3357
    :goto_1e
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3358
    .local v2, "_status":Z
    if-nez v2, :cond_3e

    .line 3359
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 3360
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->invokeOemRilRequestRawBySlot(I[B[B)I

    move-result v3
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_50

    .line 3368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3360
    return v3

    .line 3363
    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3364
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3365
    .local v3, "_result":I
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_50

    .line 3368
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3370
    nop

    .line 3371
    return v3

    .line 3368
    .end local v3    # "_result":I
    :catchall_50
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3370
    throw v2
.end method

.method public isAppTypeSupported(II)Z
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1919
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1922
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1924
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1925
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1926
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 1927
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1928
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isAppTypeSupported(II)Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_45

    .line 1935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1928
    return v3

    .line 1931
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1932
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_45

    if-eqz v3, :cond_3c

    const/4 v4, 0x1

    :cond_3c
    move v2, v4

    .line 1935
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1937
    nop

    .line 1938
    return v2

    .line 1935
    .end local v2    # "_result":Z
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1937
    throw v2
.end method

.method public isCapabilitySwitching()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2709
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2710
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 2711
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2712
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isCapabilitySwitching()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 2719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2712
    return v3

    .line 2715
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_40

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    :cond_37
    move v2, v4

    .line 2719
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2721
    nop

    .line 2722
    return v2

    .line 2719
    .end local v2    # "_result":Z
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2721
    throw v2
.end method

.method public isEmergencyNumber(ILjava/lang/String;)Z
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3969
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3972
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3973
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3974
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3975
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3976
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 3977
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 3978
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_46

    .line 3985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3978
    return v3

    .line 3981
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3982
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_46

    if-eqz v3, :cond_3d

    const/4 v4, 0x1

    :cond_3d
    move v2, v4

    .line 3985
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3987
    nop

    .line 3988
    return v2

    .line 3985
    .end local v2    # "_result":Z
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3987
    throw v2
.end method

.method public isFdnEnabled(I)Z
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2517
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2520
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2522
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2523
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2524
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2525
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isFdnEnabled(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 2532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2525
    return v3

    .line 2528
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2529
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 2532
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2534
    nop

    .line 2535
    return v2

    .line 2532
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2534
    throw v2
.end method

.method public isImsRegistered(I)Z
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2759
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2764
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2765
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2766
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2767
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isImsRegistered(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 2774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2767
    return v3

    .line 2770
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2771
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 2774
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2776
    nop

    .line 2777
    return v2

    .line 2774
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2776
    throw v2
.end method

.method public isInCsCall(I)Z
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3379
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3384
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3385
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3386
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3387
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isInCsCall(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 3394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3387
    return v3

    .line 3390
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 3394
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3396
    nop

    .line 3397
    return v2

    .line 3394
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3396
    throw v2
.end method

.method public isInHomeNetwork(I)Z
    .registers 8
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1831
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1834
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1836
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1837
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 1838
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 1839
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isInHomeNetwork(I)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_42

    .line 1846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1839
    return v3

    .line 1842
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1843
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_42

    if-eqz v5, :cond_39

    move v3, v4

    :cond_39
    move v2, v3

    .line 1846
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1848
    nop

    .line 1849
    return v2

    .line 1846
    .end local v2    # "_result":Z
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1848
    throw v2
.end method

.method public isNrMapEnabled(I)Z
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4078
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4081
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4082
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4083
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4084
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 4085
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 4086
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isNrMapEnabled(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 4093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4086
    return v3

    .line 4089
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4090
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 4093
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4095
    nop

    .line 4096
    return v2

    .line 4093
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4095
    throw v2
.end method

.method public isPhbReady(I)Z
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2886
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2887
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2888
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2889
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2890
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2891
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isPhbReady(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 2898
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2891
    return v3

    .line 2894
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2895
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 2898
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2900
    nop

    .line 2901
    return v2

    .line 2898
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2900
    throw v2
.end method

.method public isRadioOffBySimManagement(I)Z
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2485
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2488
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2490
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2491
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2492
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2493
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isRadioOffBySimManagement(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 2500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2493
    return v3

    .line 2496
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2497
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 2500
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2502
    nop

    .line 2503
    return v2

    .line 2500
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2502
    throw v2
.end method

.method public isTestIccCard(I)Z
    .registers 7
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1948
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1951
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1952
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1953
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1954
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 1955
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1956
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isTestIccCard(I)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_42

    .line 1963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1956
    return v3

    .line 1959
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1960
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_42

    if-eqz v3, :cond_39

    const/4 v4, 0x1

    :cond_39
    move v2, v4

    .line 1963
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1965
    nop

    .line 1966
    return v2

    .line 1963
    .end local v2    # "_result":Z
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1965
    throw v2
.end method

.method public isVolteEnabled(I)Z
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2788
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2791
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2793
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2794
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2795
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2796
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isVolteEnabled(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 2803
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2796
    return v3

    .line 2799
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2800
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 2803
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2805
    nop

    .line 2806
    return v2

    .line 2803
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2805
    throw v2
.end method

.method public isWifiCallingEnabled(I)Z
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2816
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2817
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2820
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2822
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2823
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2824
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2825
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isWifiCallingEnabled(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 2832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2825
    return v3

    .line 2828
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2829
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 2832
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2834
    nop

    .line 2835
    return v2

    .line 2832
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2834
    throw v2
.end method

.method public loadEFLinearFixedAll(IIILjava/lang/String;)Ljava/util/List;
    .registers 10
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

    .line 2084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2085
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2088
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2089
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2090
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2091
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2093
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2094
    .local v2, "_status":Z
    if-nez v2, :cond_39

    .line 2095
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 2096
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->loadEFLinearFixedAll(IIILjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_49

    .line 2103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2096
    return-object v3

    .line 2099
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2100
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_49

    move-object v2, v3

    .line 2103
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2105
    nop

    .line 2106
    return-object v2

    .line 2103
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2105
    throw v2
.end method

.method public loadEFTransparent(IIILjava/lang/String;)[B
    .registers 10
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "fileID"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2051
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2054
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2055
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2056
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2057
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2058
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2059
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2060
    .local v2, "_status":Z
    if-nez v2, :cond_39

    .line 2061
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 2062
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->loadEFTransparent(IIILjava/lang/String;)[B

    move-result-object v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_49

    .line 2069
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2062
    return-object v3

    .line 2065
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2066
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_49

    move-object v2, v3

    .line 2069
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2071
    nop

    .line 2072
    return-object v2

    .line 2069
    .end local v2    # "_result":[B
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2071
    throw v2
.end method

.method public manuallySetNrMap(II)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4051
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4053
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4054
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4055
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4056
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4057
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 4058
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 4059
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->manuallySetNrMap(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 4066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4060
    return-void

    .line 4063
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 4066
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4068
    nop

    .line 4069
    return-void

    .line 4066
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4068
    throw v2
.end method

.method public queryFemtoCellSystemSelectionMode(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3616
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3619
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3620
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3621
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3622
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3623
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3624
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->queryFemtoCellSystemSelectionMode(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 3631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3624
    return v3

    .line 3627
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3628
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 3631
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3633
    nop

    .line 3634
    return v2

    .line 3631
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3633
    throw v2
.end method

.method public queryNetworkLock(II)Landroid/os/Bundle;
    .registers 8
    .param p1, "subId"    # I
    .param p2, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2205
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2208
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2210
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2211
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2212
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 2213
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 2214
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->queryNetworkLock(II)Landroid/os/Bundle;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_4e

    .line 2226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2214
    return-object v3

    .line 2217
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2218
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_45

    .line 2219
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_4e

    .local v3, "_result":Landroid/os/Bundle;
    goto :goto_46

    .line 2222
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_45
    const/4 v3, 0x0

    .line 2226
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/os/Bundle;
    :goto_46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2228
    nop

    .line 2229
    return-object v3

    .line 2226
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2228
    throw v2
.end method

.method public registerAtUrcInd(ILcom/mediatek/telephony/IOemHookCallback;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "cb"    # Lcom/mediatek/telephony/IOemHookCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3246
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3248
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3250
    if-eqz p2, :cond_17

    invoke-interface {p2}, Lcom/mediatek/telephony/IOemHookCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3251
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3252
    .local v2, "_status":Z
    if-nez v2, :cond_3a

    .line 3253
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 3254
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->registerAtUrcInd(ILcom/mediatek/telephony/IOemHookCallback;)V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_45

    .line 3261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3255
    return-void

    .line 3258
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_45

    .line 3261
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3263
    nop

    .line 3264
    return-void

    .line 3261
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3263
    throw v2
.end method

.method public repollIccStateForNetworkLock(IZ)V
    .registers 8
    .param p1, "subId"    # I
    .param p2, "needIntent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2274
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2275
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2276
    .local v2, "_status":Z
    if-nez v2, :cond_37

    .line 2277
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 2278
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->repollIccStateForNetworkLock(IZ)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 2285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2279
    return-void

    .line 2282
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 2285
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2287
    nop

    .line 2288
    return-void

    .line 2285
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2287
    throw v2
.end method

.method public selectFemtoCell(ILcom/mediatek/internal/telephony/FemtoCellInfo;)Z
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "femtocell"    # Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3581
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3584
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3585
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3586
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1b

    .line 3587
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3588
    invoke-virtual {p2, v0, v3}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 3591
    :cond_1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3593
    :goto_1e
    iget-object v4, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x39

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 3594
    .local v4, "_status":Z
    if-nez v4, :cond_3d

    .line 3595
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v5

    if-eqz v5, :cond_3d

    .line 3596
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->selectFemtoCell(ILcom/mediatek/internal/telephony/FemtoCellInfo;)Z

    move-result v2
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_50

    .line 3603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3596
    return v2

    .line 3599
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3600
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_50

    if-eqz v5, :cond_47

    goto :goto_48

    :cond_47
    move v2, v3

    .line 3603
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3605
    nop

    .line 3606
    return v2

    .line 3603
    .end local v2    # "_result":Z
    :catchall_50
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3605
    throw v2
.end method

.method public selfActivationAction(ILandroid/os/Bundle;I)I
    .registers 9
    .param p1, "action"    # I
    .param p2, "param"    # Landroid/os/Bundle;
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2976
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2979
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2980
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2981
    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    .line 2982
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2983
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 2986
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2988
    :goto_1e
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2989
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2990
    .local v2, "_status":Z
    if-nez v2, :cond_40

    .line 2991
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 2992
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->selfActivationAction(ILandroid/os/Bundle;I)I

    move-result v3
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_50

    .line 2999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2992
    return v3

    .line 2995
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2996
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_50

    move v2, v3

    .line 2999
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3001
    nop

    .line 3002
    return v2

    .line 2999
    .end local v2    # "_result":I
    :catchall_50
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3001
    throw v2
.end method

.method public sendAtCmd(IJLjava/lang/String;Lcom/mediatek/telephony/IOemHookCallback;)V
    .registers 16
    .param p1, "slotId"    # I
    .param p2, "token"    # J
    .param p4, "atCmd"    # Ljava/lang/String;
    .param p5, "cb"    # Lcom/mediatek/telephony/IOemHookCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3271
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3274
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3275
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3276
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3277
    if-eqz p5, :cond_1d

    invoke-interface {p5}, Lcom/mediatek/telephony/IOemHookCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3278
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3279
    .local v2, "_status":Z
    if-nez v2, :cond_44

    .line 3280
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 3281
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->sendAtCmd(IJLjava/lang/String;Lcom/mediatek/telephony/IOemHookCallback;)V
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_4f

    .line 3288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3282
    return-void

    .line 3285
    :cond_44
    :try_start_44
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4f

    .line 3288
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3290
    nop

    .line 3291
    return-void

    .line 3288
    :catchall_4f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3290
    throw v2
.end method

.method public setApcModeUsingSlotId(IIZI)V
    .registers 10
    .param p1, "slotId"    # I
    .param p2, "mode"    # I
    .param p3, "reportOn"    # Z
    .param p4, "reportInterval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3112
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3114
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3115
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3116
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3117
    const/4 v2, 0x0

    if-eqz p3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    move v3, v2

    :goto_19
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3118
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3119
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3120
    .local v2, "_status":Z
    if-nez v2, :cond_3d

    .line 3121
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 3122
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setApcModeUsingSlotId(IIZI)V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_48

    .line 3129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3123
    return-void

    .line 3126
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_48

    .line 3129
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3131
    nop

    .line 3132
    return-void

    .line 3129
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3131
    throw v2
.end method

.method public setCallSubAddressEnabled(IZ)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4166
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4168
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4169
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4170
    .local v2, "_status":Z
    if-nez v2, :cond_37

    .line 4171
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 4172
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setCallSubAddressEnabled(IZ)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 4179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4173
    return-void

    .line 4176
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 4179
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4181
    nop

    .line 4182
    return-void

    .line 4179
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4181
    throw v2
.end method

.method public setDisable2G(IZ)Z
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3467
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3470
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3471
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3472
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v3

    :goto_17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3473
    iget-object v4, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x35

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 3474
    .local v4, "_status":Z
    if-nez v4, :cond_39

    .line 3475
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v5

    if-eqz v5, :cond_39

    .line 3476
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setDisable2G(IZ)Z

    move-result v2
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    .line 3483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3476
    return v2

    .line 3479
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3480
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4c

    if-eqz v5, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    .line 3483
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3485
    nop

    .line 3486
    return v2

    .line 3483
    .end local v2    # "_result":Z
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3485
    throw v2
.end method

.method public setFemtoCellSystemSelectionMode(II)Z
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3645
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3648
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3650
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3651
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3652
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 3653
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 3654
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setFemtoCellSystemSelectionMode(II)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_46

    .line 3661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3654
    return v3

    .line 3657
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3658
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_46

    if-eqz v3, :cond_3d

    const/4 v4, 0x1

    :cond_3d
    move v2, v4

    .line 3661
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3663
    nop

    .line 3664
    return v2

    .line 3661
    .end local v2    # "_result":Z
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3663
    throw v2
.end method

.method public setIsLastEccIms(Z)V
    .registers 7
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3200
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3202
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3203
    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3204
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3205
    .local v2, "_status":Z
    if-nez v2, :cond_34

    .line 3206
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 3207
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setIsLastEccIms(Z)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    .line 3214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3208
    return-void

    .line 3211
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    .line 3214
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3216
    nop

    .line 3217
    return-void

    .line 3214
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3216
    throw v2
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .registers 7
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2677
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2680
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2681
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2682
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 2683
    .local v3, "_status":Z
    if-nez v3, :cond_30

    .line 2684
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 2685
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v2
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 2692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2685
    return v2

    .line 2688
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2689
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_42

    if-eqz v4, :cond_3a

    const/4 v2, 0x1

    .line 2692
    .end local v3    # "_status":Z
    .local v2, "_result":Z
    :cond_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2694
    nop

    .line 2695
    return v2

    .line 2692
    .end local v2    # "_result":Z
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2694
    throw v2
.end method

.method public setRoamingEnable(I[I)Z
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "config"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3868
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3869
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3870
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3871
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3872
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 3873
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 3874
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setRoamingEnable(I[I)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_46

    .line 3881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3874
    return v3

    .line 3877
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3878
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_46

    if-eqz v3, :cond_3d

    const/4 v4, 0x1

    :cond_3d
    move v2, v4

    .line 3881
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3883
    nop

    .line 3884
    return v2

    .line 3881
    .end local v2    # "_result":Z
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3883
    throw v2
.end method

.method public setRxTestConfig(II)[I
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "config"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2916
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2919
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2920
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2921
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2922
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2923
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 2924
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 2925
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setRxTestConfig(II)[I

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 2932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2925
    return-object v3

    .line 2928
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2929
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move-object v2, v3

    .line 2932
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2934
    nop

    .line 2935
    return-object v2

    .line 2932
    .end local v2    # "_result":[I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2934
    throw v2
.end method

.method public setSimPower(II)I
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2127
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2129
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 2130
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 2131
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setSimPower(II)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 2138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2131
    return v3

    .line 2134
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2135
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 2138
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2140
    nop

    .line 2141
    return v2

    .line 2138
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2140
    throw v2
.end method

.method public setupPdnByType(ILjava/lang/String;)Z
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3792
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3795
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3796
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3797
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3798
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3799
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 3800
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 3801
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setupPdnByType(ILjava/lang/String;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_46

    .line 3808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3801
    return v3

    .line 3804
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3805
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_46

    if-eqz v3, :cond_3d

    const/4 v4, 0x1

    :cond_3d
    move v2, v4

    .line 3808
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3810
    nop

    .line 3811
    return v2

    .line 3808
    .end local v2    # "_result":Z
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3810
    throw v2
.end method

.method public simAkaAuthentication(II[B[B)[B
    .registers 10
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "byteRand"    # [B
    .param p4, "byteAutn"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2367
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2370
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2372
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2373
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2374
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2375
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2376
    .local v2, "_status":Z
    if-nez v2, :cond_39

    .line 2377
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 2378
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->simAkaAuthentication(II[B[B)[B

    move-result-object v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_49

    .line 2385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2378
    return-object v3

    .line 2381
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2382
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_49

    move-object v2, v3

    .line 2385
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2387
    nop

    .line 2388
    return-object v2

    .line 2385
    .end local v2    # "_result":[B
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2387
    throw v2
.end method

.method public simGbaAuthBootStrapMode(II[B[B)[B
    .registers 10
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "byteRand"    # [B
    .param p4, "byteAutn"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2411
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2413
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2414
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2415
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2416
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2417
    .local v2, "_status":Z
    if-nez v2, :cond_39

    .line 2418
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 2419
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->simGbaAuthBootStrapMode(II[B[B)[B

    move-result-object v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_49

    .line 2426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2419
    return-object v3

    .line 2422
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2423
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_49

    move-object v2, v3

    .line 2426
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2428
    nop

    .line 2429
    return-object v2

    .line 2426
    .end local v2    # "_result":[B
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2428
    throw v2
.end method

.method public simGbaAuthNafMode(II[B[B)[B
    .registers 10
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "byteNafId"    # [B
    .param p4, "byteImpi"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2449
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2452
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2454
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2455
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2456
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2457
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2458
    .local v2, "_status":Z
    if-nez v2, :cond_39

    .line 2459
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 2460
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->simGbaAuthNafMode(II[B[B)[B

    move-result-object v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_49

    .line 2467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2460
    return-object v3

    .line 2463
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2464
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_49

    move-object v2, v3

    .line 2467
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2469
    nop

    .line 2470
    return-object v2

    .line 2467
    .end local v2    # "_result":[B
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2469
    throw v2
.end method

.method public supplyDeviceNetworkDepersonalization(Ljava/lang/String;)[I
    .registers 7
    .param p1, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3702
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3705
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3706
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3707
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3708
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 3709
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3710
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->supplyDeviceNetworkDepersonalization(Ljava/lang/String;)[I

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 3717
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3710
    return-object v3

    .line 3713
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3714
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 3717
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3719
    nop

    .line 3720
    return-object v2

    .line 3717
    .end local v2    # "_result":[I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3719
    throw v2
.end method

.method public supplyNetworkDepersonalization(ILjava/lang/String;)I
    .registers 8
    .param p1, "subId"    # I
    .param p2, "strPasswd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2239
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2240
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2241
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 2242
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 2243
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->supplyNetworkDepersonalization(ILjava/lang/String;)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 2250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2243
    return v3

    .line 2246
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2247
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 2250
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2252
    nop

    .line 2253
    return v2

    .line 2250
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2252
    throw v2
.end method

.method public switchNrMap(IZ)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "sw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4024
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4026
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4027
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4028
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4029
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4030
    .local v2, "_status":Z
    if-nez v2, :cond_37

    .line 4031
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 4032
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->switchNrMap(IZ)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 4039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4033
    return-void

    .line 4036
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 4039
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4041
    nop

    .line 4042
    return-void

    .line 4039
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4041
    throw v2
.end method

.method public tearDownPdnByType(ILjava/lang/String;)Z
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3761
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3764
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3765
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3766
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3767
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3768
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 3769
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 3770
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->tearDownPdnByType(ILjava/lang/String;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_46

    .line 3777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3770
    return v3

    .line 3773
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3774
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_46

    if-eqz v3, :cond_3d

    const/4 v4, 0x1

    :cond_3d
    move v2, v4

    .line 3777
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3779
    nop

    .line 3780
    return v2

    .line 3777
    .end local v2    # "_result":Z
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3779
    throw v2
.end method

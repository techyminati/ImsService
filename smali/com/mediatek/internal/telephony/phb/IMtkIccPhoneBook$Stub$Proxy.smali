.class Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkIccPhoneBook.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1177
    return-void
.end method


# virtual methods
.method public addContactToGroup(III)Z
    .registers 9
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1786
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1791
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1792
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1793
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1794
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 1795
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1796
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->addContactToGroup(III)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_49

    .line 1803
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1796
    return v3

    .line 1799
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    if-eqz v3, :cond_40

    const/4 v4, 0x1

    :cond_40
    move v2, v4

    .line 1803
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1805
    nop

    .line 1806
    return v2

    .line 1803
    .end local v2    # "_result":Z
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1805
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAdnRecordsCapacityExt()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2512
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2513
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 2514
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2515
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getAdnRecordsCapacityExt()[I

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 2522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2515
    return-object v3

    .line 2518
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2519
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 2522
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2524
    nop

    .line 2525
    return-object v2

    .line 2522
    .end local v2    # "_result":[I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2524
    throw v2
.end method

.method public getAdnRecordsCapacityForSubscriber(I)[I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2545
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2546
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2547
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2548
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2549
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2550
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getAdnRecordsCapacityForSubscriber(I)[I

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2550
    return-object v3

    .line 2553
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2554
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 2557
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2559
    nop

    .line 2560
    return-object v2

    .line 2557
    .end local v2    # "_result":[I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2559
    throw v2
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .registers 7
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1196
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1202
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 1203
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1204
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_41

    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1204
    return-object v3

    .line 1207
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1208
    sget-object v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_41

    move-object v2, v3

    .line 1211
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1213
    nop

    .line 1214
    return-object v2

    .line 1211
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1213
    throw v2
.end method

.method public getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    .registers 8
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1227
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1230
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1234
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 1235
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1236
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_44

    .line 1243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1236
    return-object v3

    .line 1239
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1240
    sget-object v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_44

    move-object v2, v3

    .line 1243
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1245
    nop

    .line 1246
    return-object v2

    .line 1243
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1245
    throw v2
.end method

.method public getAnrCount(I)I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2141
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2143
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2144
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2145
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2146
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getAnrCount(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2146
    return v3

    .line 2149
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2150
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 2153
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2155
    nop

    .line 2156
    return v2

    .line 2153
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2155
    throw v2
.end method

.method public getEmailCount(I)I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2171
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2176
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2177
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2178
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2179
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getEmailCount(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2179
    return v3

    .line 2182
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2183
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 2186
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2188
    nop

    .line 2189
    return v2

    .line 2186
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2188
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1184
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    return-object v0
.end method

.method public getPhonebookMemStorageExt(I)[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2443
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2446
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2448
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2449
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2450
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2451
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getPhonebookMemStorageExt(I)[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_44

    .line 2458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2451
    return-object v3

    .line 2454
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2455
    sget-object v3, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_44

    move-object v2, v3

    .line 2458
    .local v2, "_result":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2460
    nop

    .line 2461
    return-object v2

    .line 2458
    .end local v2    # "_result":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2460
    throw v2
.end method

.method public getSneRecordLen(I)I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2379
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2384
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2385
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2386
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2387
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getSneRecordLen(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2387
    return v3

    .line 2390
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 2394
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2396
    nop

    .line 2397
    return v2

    .line 2394
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2396
    throw v2
.end method

.method public getUpbDone(I)I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2474
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2477
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2478
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2479
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2480
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2481
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2482
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUpbDone(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2482
    return v3

    .line 2485
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2486
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 2489
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2491
    nop

    .line 2492
    return v2

    .line 2489
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2491
    throw v2
.end method

.method public getUsimAasById(II)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2069
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2072
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2075
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2076
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 2077
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 2078
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimAasById(II)Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 2085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2078
    return-object v3

    .line 2081
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2082
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move-object v2, v3

    .line 2085
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2087
    nop

    .line 2088
    return-object v2

    .line 2085
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2087
    throw v2
.end method

.method public getUsimAasList(I)Ljava/util/List;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/AlphaTag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2035
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2039
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2040
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2041
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2042
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2043
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimAasList(I)Ljava/util/List;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2043
    return-object v3

    .line 2046
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2047
    sget-object v3, Lcom/mediatek/internal/telephony/phb/AlphaTag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_42

    move-object v2, v3

    .line 2050
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/AlphaTag;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2052
    nop

    .line 2053
    return-object v2

    .line 2050
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/AlphaTag;>;"
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2052
    throw v2
.end method

.method public getUsimAasMaxCount(I)I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2204
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2207
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2209
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2210
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2211
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2212
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimAasMaxCount(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2212
    return v3

    .line 2215
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2216
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 2219
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2221
    nop

    .line 2222
    return v2

    .line 2219
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2221
    throw v2
.end method

.method public getUsimAasMaxNameLen(I)I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2240
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2242
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2243
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2244
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2245
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimAasMaxNameLen(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2245
    return v3

    .line 2248
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2249
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 2252
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2254
    nop

    .line 2255
    return v2

    .line 2252
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2254
    throw v2
.end method

.method public getUsimGroupById(II)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1643
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1646
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1647
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1650
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1651
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1652
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimGroupById(II)Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1652
    return-object v3

    .line 1655
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1656
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move-object v2, v3

    .line 1659
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1661
    nop

    .line 1662
    return-object v2

    .line 1659
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1661
    throw v2
.end method

.method public getUsimGroups(I)Ljava/util/List;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1609
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1612
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1614
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1615
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1616
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1617
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimGroups(I)Ljava/util/List;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 1624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1617
    return-object v3

    .line 1620
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1621
    sget-object v3, Lcom/mediatek/internal/telephony/phb/UsimGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_42

    move-object v2, v3

    .line 1624
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/UsimGroup;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1626
    nop

    .line 1627
    return-object v2

    .line 1624
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/UsimGroup;>;"
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1626
    throw v2
.end method

.method public getUsimGrpMaxCount(I)I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2005
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2006
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2007
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2008
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2009
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2010
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimGrpMaxCount(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 2017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2010
    return v3

    .line 2013
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2014
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 2017
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2019
    nop

    .line 2020
    return v2

    .line 2017
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2019
    throw v2
.end method

.method public getUsimGrpMaxNameLen(I)I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1969
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1972
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1974
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1975
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1976
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1977
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getUsimGrpMaxNameLen(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1984
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1977
    return v3

    .line 1980
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1981
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1984
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1986
    nop

    .line 1987
    return v2

    .line 1984
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1986
    throw v2
.end method

.method public hasExistGroup(ILjava/lang/String;)I
    .registers 8
    .param p1, "subId"    # I
    .param p2, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1935
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1938
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1939
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1940
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1941
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1942
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1943
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1944
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->hasExistGroup(ILjava/lang/String;)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1944
    return v3

    .line 1947
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1948
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 1951
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1953
    nop

    .line 1954
    return v2

    .line 1951
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1953
    throw v2
.end method

.method public hasSne(I)Z
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2346
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2349
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2351
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2352
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2353
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2354
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->hasSne(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 2361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2354
    return v3

    .line 2357
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2358
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 2361
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2363
    nop

    .line 2364
    return v2

    .line 2361
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2363
    throw v2
.end method

.method public insertUsimAas(ILjava/lang/String;)I
    .registers 8
    .param p1, "subId"    # I
    .param p2, "aasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2104
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2107
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2110
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2111
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 2112
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 2113
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->insertUsimAas(ILjava/lang/String;)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 2120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2113
    return v3

    .line 2116
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2117
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 2120
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2122
    nop

    .line 2123
    return v2

    .line 2120
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2122
    throw v2
.end method

.method public insertUsimGroup(ILjava/lang/String;)I
    .registers 8
    .param p1, "subId"    # I
    .param p2, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1713
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1716
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1717
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1718
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1719
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1720
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1721
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1722
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->insertUsimGroup(ILjava/lang/String;)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1722
    return v3

    .line 1725
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1726
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 1729
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1731
    nop

    .line 1732
    return v2

    .line 1729
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1731
    throw v2
.end method

.method public isAdnAccessible(I)Z
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2410
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2413
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2414
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2415
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2416
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 2417
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 2418
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->isAdnAccessible(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 2425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2418
    return v3

    .line 2421
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2422
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 2425
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2427
    nop

    .line 2428
    return v2

    .line 2425
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2427
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

    .line 1573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1574
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1577
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1579
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1580
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1581
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1582
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->isPhbReady(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 1589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1582
    return v3

    .line 1585
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1586
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 1589
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1591
    nop

    .line 1592
    return v2

    .line 1589
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1591
    throw v2
.end method

.method public moveContactFromGroupsToGroups(II[I[I)Z
    .registers 10
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "fromGrpIdList"    # [I
    .param p4, "toGrpIdList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1901
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1903
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1904
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1905
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1906
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1907
    .local v2, "_status":Z
    if-nez v2, :cond_39

    .line 1908
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1909
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->moveContactFromGroupsToGroups(II[I[I)Z

    move-result v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    .line 1916
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1909
    return v3

    .line 1912
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1913
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4c

    if-eqz v3, :cond_43

    const/4 v4, 0x1

    :cond_43
    move v2, v4

    .line 1916
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1918
    nop

    .line 1919
    return v2

    .line 1916
    .end local v2    # "_result":Z
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1918
    throw v2
.end method

.method public removeContactFromGroup(III)Z
    .registers 9
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1823
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1826
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1827
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1828
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1829
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1830
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1831
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 1832
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1833
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->removeContactFromGroup(III)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_49

    .line 1840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1833
    return v3

    .line 1836
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1837
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    if-eqz v3, :cond_40

    const/4 v4, 0x1

    :cond_40
    move v2, v4

    .line 1840
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1842
    nop

    .line 1843
    return v2

    .line 1840
    .end local v2    # "_result":Z
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1842
    throw v2
.end method

.method public removeUsimAasById(III)Z
    .registers 9
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .param p3, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2314
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2316
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2317
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2318
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2319
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 2320
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 2321
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->removeUsimAasById(III)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_49

    .line 2328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2321
    return v3

    .line 2324
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2325
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    if-eqz v3, :cond_40

    const/4 v4, 0x1

    :cond_40
    move v2, v4

    .line 2328
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2330
    nop

    .line 2331
    return v2

    .line 2328
    .end local v2    # "_result":Z
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2330
    throw v2
.end method

.method public removeUsimGroupById(II)Z
    .registers 8
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1683
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1684
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1685
    .local v2, "_status":Z
    if-nez v2, :cond_33

    .line 1686
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1687
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->removeUsimGroupById(II)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_46

    .line 1694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1687
    return v3

    .line 1690
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1691
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_46

    if-eqz v3, :cond_3d

    const/4 v4, 0x1

    :cond_3d
    move v2, v4

    .line 1694
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1696
    nop

    .line 1697
    return v2

    .line 1694
    .end local v2    # "_result":Z
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1696
    throw v2
.end method

.method public updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 23
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1385
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1388
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_74

    .line 1389
    move/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_72

    .line 1390
    move/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_70

    .line 1391
    move-object/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_6e

    .line 1392
    move-object/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_6c

    .line 1393
    move/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_6a

    .line 1394
    move-object/from16 v15, p6

    :try_start_28
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1395
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1396
    .local v0, "_status":Z
    if-nez v0, :cond_58

    .line 1397
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 1398
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3
    :try_end_51
    .catchall {:try_start_28 .. :try_end_51} :catchall_68

    .line 1405
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1398
    return v3

    .line 1401
    :cond_58
    :try_start_58
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1402
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_68

    move v0, v3

    .line 1405
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1407
    nop

    .line 1408
    return v0

    .line 1405
    .end local v0    # "_result":I
    :catchall_68
    move-exception v0

    goto :goto_81

    :catchall_6a
    move-exception v0

    goto :goto_7f

    :catchall_6c
    move-exception v0

    goto :goto_7d

    :catchall_6e
    move-exception v0

    goto :goto_7b

    :catchall_70
    move-exception v0

    goto :goto_79

    :catchall_72
    move-exception v0

    goto :goto_77

    :catchall_74
    move-exception v0

    move/from16 v10, p1

    :goto_77
    move/from16 v11, p2

    :goto_79
    move-object/from16 v12, p3

    :goto_7b
    move-object/from16 v13, p4

    :goto_7d
    move/from16 v14, p5

    :goto_7f
    move-object/from16 v15, p6

    :goto_81
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1407
    throw v0
.end method

.method public updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 24
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldTag"    # Ljava/lang/String;
    .param p4, "oldPhoneNumber"    # Ljava/lang/String;
    .param p5, "newTag"    # Ljava/lang/String;
    .param p6, "newPhoneNumber"    # Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1274
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1277
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_79

    .line 1278
    move/from16 v11, p1

    :try_start_f
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_77

    .line 1279
    move/from16 v12, p2

    :try_start_14
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_75

    .line 1280
    move-object/from16 v13, p3

    :try_start_19
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_73

    .line 1281
    move-object/from16 v14, p4

    :try_start_1e
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_71

    .line 1282
    move-object/from16 v15, p5

    :try_start_23
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1283
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1284
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1285
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1286
    .local v0, "_status":Z
    if-nez v0, :cond_5f

    .line 1287
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 1288
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_58
    .catchall {:try_start_23 .. :try_end_58} :catchall_6f

    .line 1295
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1288
    return v3

    .line 1291
    :cond_5f
    :try_start_5f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1292
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_6f

    move v0, v3

    .line 1295
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1297
    nop

    .line 1298
    return v0

    .line 1295
    .end local v0    # "_result":I
    :catchall_6f
    move-exception v0

    goto :goto_84

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

    move/from16 v11, p1

    :goto_7c
    move/from16 v12, p2

    :goto_7e
    move-object/from16 v13, p3

    :goto_80
    move-object/from16 v14, p4

    :goto_82
    move-object/from16 v15, p5

    :goto_84
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1297
    throw v0
.end method

.method public updateContactToGroups(II[I)Z
    .registers 9
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIdList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1860
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1863
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1865
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1866
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1867
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1868
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 1869
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1870
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateContactToGroups(II[I)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_49

    .line 1877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1870
    return v3

    .line 1873
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1874
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    if-eqz v3, :cond_40

    const/4 v4, 0x1

    :cond_40
    move v2, v4

    .line 1877
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1879
    nop

    .line 1880
    return v2

    .line 1877
    .end local v2    # "_result":Z
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1879
    throw v2
.end method

.method public updateUsimAas(IIILjava/lang/String;)Z
    .registers 10
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .param p3, "pbrIndex"    # I
    .param p4, "aasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2273
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2276
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2278
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2280
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2281
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2282
    .local v2, "_status":Z
    if-nez v2, :cond_39

    .line 2283
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 2284
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimAas(IIILjava/lang/String;)Z

    move-result v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    .line 2291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2284
    return v3

    .line 2287
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4c

    if-eqz v3, :cond_43

    const/4 v4, 0x1

    :cond_43
    move v2, v4

    .line 2291
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2293
    nop

    .line 2294
    return v2

    .line 2291
    .end local v2    # "_result":Z
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2293
    throw v2
.end method

.method public updateUsimGroup(IILjava/lang/String;)I
    .registers 9
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .param p3, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1749
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1752
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1754
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1755
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1756
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1757
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 1758
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1759
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimGroup(IILjava/lang/String;)I

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_46

    .line 1766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1759
    return v3

    .line 1762
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1763
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_46

    move v2, v3

    .line 1766
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1768
    nop

    .line 1769
    return v2

    .line 1766
    .end local v2    # "_result":I
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1768
    throw v2
.end method

.method public updateUsimPBRecordsByIndexWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I
    .registers 10
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "record"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1481
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1484
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1486
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    const/4 v2, 0x0

    if-eqz p3, :cond_1e

    .line 1488
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1489
    invoke-virtual {p3, v0, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 1492
    :cond_1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    :goto_21
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1496
    .local v2, "_status":Z
    if-nez v2, :cond_42

    .line 1497
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 1498
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsByIndexWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I

    move-result v3
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_52

    .line 1505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1498
    return v3

    .line 1501
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1502
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_52

    move v2, v3

    .line 1505
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1507
    nop

    .line 1508
    return v2

    .line 1505
    .end local v2    # "_result":I
    :catchall_52
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1507
    throw v2
.end method

.method public updateUsimPBRecordsBySearchWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I
    .registers 10
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p4, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1529
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1532
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1533
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1534
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1535
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1e

    .line 1536
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1537
    invoke-virtual {p3, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 1540
    :cond_1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1542
    :goto_21
    if-eqz p4, :cond_2a

    .line 1543
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1544
    invoke-virtual {p4, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    .line 1547
    :cond_2a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1549
    :goto_2d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1550
    .local v2, "_status":Z
    if-nez v2, :cond_4c

    .line 1551
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 1552
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsBySearchWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v3
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_5c

    .line 1559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1552
    return v3

    .line 1555
    :cond_4c
    :try_start_4c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1556
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_5c

    move v2, v3

    .line 1559
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1561
    nop

    .line 1562
    return v2

    .line 1559
    .end local v2    # "_result":I
    :catchall_5c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1561
    throw v2
.end method

.method public updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 25
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber"    # Ljava/lang/String;
    .param p5, "newAnr"    # Ljava/lang/String;
    .param p6, "newGrpIds"    # Ljava/lang/String;
    .param p7, "newEmails"    # [Ljava/lang/String;
    .param p8, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1435
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1438
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_7e

    .line 1439
    move/from16 v12, p1

    :try_start_f
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_7c

    .line 1440
    move/from16 v13, p2

    :try_start_14
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_7a

    .line 1441
    move-object/from16 v14, p3

    :try_start_19
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_78

    .line 1442
    move-object/from16 v15, p4

    :try_start_1e
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1443
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1444
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1445
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1446
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1447
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1448
    .local v0, "_status":Z
    if-nez v0, :cond_66

    .line 1449
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_66

    .line 1450
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v3
    :try_end_5f
    .catchall {:try_start_1e .. :try_end_5f} :catchall_76

    .line 1457
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1450
    return v3

    .line 1453
    :cond_66
    :try_start_66
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1454
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_76

    move v0, v3

    .line 1457
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1459
    nop

    .line 1460
    return v0

    .line 1457
    .end local v0    # "_result":I
    :catchall_76
    move-exception v0

    goto :goto_87

    :catchall_78
    move-exception v0

    goto :goto_85

    :catchall_7a
    move-exception v0

    goto :goto_83

    :catchall_7c
    move-exception v0

    goto :goto_81

    :catchall_7e
    move-exception v0

    move/from16 v12, p1

    :goto_81
    move/from16 v13, p2

    :goto_83
    move-object/from16 v14, p3

    :goto_85
    move-object/from16 v15, p4

    :goto_87
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1459
    throw v0
.end method

.method public updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 29
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldTag"    # Ljava/lang/String;
    .param p4, "oldPhoneNumber"    # Ljava/lang/String;
    .param p5, "oldAnr"    # Ljava/lang/String;
    .param p6, "oldGrpIds"    # Ljava/lang/String;
    .param p7, "oldEmails"    # [Ljava/lang/String;
    .param p8, "newTag"    # Ljava/lang/String;
    .param p9, "newPhoneNumber"    # Ljava/lang/String;
    .param p10, "newAnr"    # Ljava/lang/String;
    .param p11, "newGrpIds"    # Ljava/lang/String;
    .param p12, "newEmails"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1331
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1334
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1335
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    move/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    move-object/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1338
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1339
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1340
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1341
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1342
    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1343
    move-object/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1344
    move-object/from16 v6, p10

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1345
    move-object/from16 v5, p11

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1346
    move-object/from16 v4, p12

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1347
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1348
    .local v0, "_status":Z
    if-nez v0, :cond_82

    .line 1349
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    if-eqz v3, :cond_82

    .line 1350
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-interface/range {v3 .. v15}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_7b
    .catchall {:try_start_8 .. :try_end_7b} :catchall_92

    .line 1357
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1350
    return v3

    .line 1353
    :cond_82
    :try_start_82
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1354
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_92

    move v0, v3

    .line 1357
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1359
    nop

    .line 1360
    return v0

    .line 1357
    .end local v0    # "_result":I
    :catchall_92
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1359
    throw v0
.end method

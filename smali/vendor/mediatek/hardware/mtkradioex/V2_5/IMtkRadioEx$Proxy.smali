.class public final Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;
.super Ljava/lang/Object;
.source "IMtkRadioEx.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IHwBinder;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 218
    return-void
.end method


# virtual methods
.method public abortCertificate(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3705
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3706
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3707
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3708
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3710
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3712
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3713
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3715
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3716
    nop

    .line 3717
    return-void

    .line 3715
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3716
    throw v2
.end method

.method public abortFemtocellList(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2193
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2194
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2197
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2199
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x71

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2200
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2202
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2203
    nop

    .line 2204
    return-void

    .line 2202
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2203
    throw v2
.end method

.method public acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "smsAck"    # Landroid/hardware/radio/V1_0/CdmaSmsAck;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2008
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2009
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2011
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2013
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2015
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x66

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2016
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2018
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2019
    nop

    .line 2020
    return-void

    .line 2018
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2019
    throw v2
.end method

.method public acknowledgeLastIncomingGsmSmsEx(IZI)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1990
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1991
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1992
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1993
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1994
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1996
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1998
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x65

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1999
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2001
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2002
    nop

    .line 2003
    return-void

    .line 2001
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2002
    throw v2
.end method

.method public activateUiccCard(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1678
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1679
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1680
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1682
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1684
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x53

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1685
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1687
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1688
    nop

    .line 1689
    return-void

    .line 1687
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1688
    throw v2
.end method

.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 222
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public cancelAvailableNetworks(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2161
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2162
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2163
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2165
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2167
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2168
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2170
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2171
    nop

    .line 2172
    return-void

    .line 2170
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2171
    throw v2
.end method

.method public cancelUssi(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1023
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1024
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1027
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1029
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1030
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1032
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1033
    nop

    .line 1034
    return-void

    .line 1032
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1033
    throw v2
.end method

.method public cfgA2offset(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "offset"    # I
    .param p3, "threshBound"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2283
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2284
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2285
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2286
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2287
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2289
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2291
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x76

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2292
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2294
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2295
    nop

    .line 2296
    return-void

    .line 2294
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2295
    throw v2
.end method

.method public cfgB1offset(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "offset"    # I
    .param p3, "threshBound"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2301
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2302
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2303
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2304
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2305
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2307
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2309
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x77

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2310
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2312
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2313
    nop

    .line 2314
    return-void

    .line 2312
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2313
    throw v2
.end method

.method public clearLteAvailableFile(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4251
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4252
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4253
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4255
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4257
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4258
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 4260
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4261
    nop

    .line 4262
    return-void

    .line 4260
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4261
    throw v2
.end method

.method public conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "dailInfo"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 606
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 608
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 610
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 612
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x15

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 613
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 615
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 616
    nop

    .line 617
    return-void

    .line 615
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 616
    throw v2
.end method

.method public controlCall(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "controlType"    # I
    .param p3, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 443
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 445
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 446
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 448
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 450
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 451
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 453
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 454
    nop

    .line 455
    return-void

    .line 453
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 454
    throw v2
.end method

.method public controlImsConferenceCallMember(IIILjava/lang/String;I)V
    .registers 11
    .param p1, "serial"    # I
    .param p2, "controlType"    # I
    .param p3, "confCallId"    # I
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 568
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 569
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 571
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 572
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 573
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 576
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 578
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1e
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 579
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 581
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 582
    nop

    .line 583
    return-void

    .line 581
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 582
    throw v2
.end method

.method public dataConnectionAttach(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3029
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3030
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3031
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3032
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3034
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3036
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3037
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3039
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3040
    nop

    .line 3041
    return-void

    .line 3039
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3040
    throw v2
.end method

.method public dataConnectionDetach(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3046
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3047
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3048
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3049
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3051
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3053
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3054
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3056
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3057
    nop

    .line 3058
    return-void

    .line 3056
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3057
    throw v2
.end method

.method public deactivateNrScgCommunication(IZZ)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "deactivate"    # Z
    .param p3, "allowSCGAdd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3740
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3741
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3742
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3743
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3744
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3746
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3748
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3749
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3751
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3752
    nop

    .line 3753
    return-void

    .line 3751
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3752
    throw v2
.end method

.method public deactivateUiccCard(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1694
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1695
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1698
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1700
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1701
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1703
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1704
    nop

    .line 1705
    return-void

    .line 1703
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1704
    throw v2
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4457
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4458
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4459
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 4460
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4462
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4464
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf444247

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4465
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4466
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 4468
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4469
    nop

    .line 4470
    return-void

    .line 4468
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4469
    throw v2
.end method

.method public deleteUPBEntry(IIII)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "entryType"    # I
    .param p3, "adnIndex"    # I
    .param p4, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1331
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1332
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1334
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1335
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1336
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1338
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1340
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1341
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 1343
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1344
    nop

    .line 1345
    return-void

    .line 1343
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1344
    throw v2
.end method

.method public dialWithSipUri(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 642
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 644
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 646
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 648
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x17

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 649
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 651
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 652
    nop

    .line 653
    return-void

    .line 651
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 652
    throw v2
.end method

.method public disableAllCALinks(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "linkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4014
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4015
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4016
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4017
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4019
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4021
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4022
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4024
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4025
    nop

    .line 4026
    return-void

    .line 4024
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4025
    throw v2
.end method

.method public disableNR(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2339
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2340
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2341
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2342
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2344
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2346
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x79

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2347
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2349
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2350
    nop

    .line 2351
    return-void

    .line 2349
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2350
    throw v2
.end method

.method public doGeneralSimAuthentication(ILvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "simAuth"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1726
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1727
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1728
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1729
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1731
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1733
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x56

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1734
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1736
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1737
    nop

    .line 1738
    return-void

    .line 1736
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1737
    throw v2
.end method

.method public eccPreferredRat(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "phoneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1144
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1145
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1147
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1149
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1151
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x34

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1152
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1154
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1155
    nop

    .line 1156
    return-void

    .line 1154
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1155
    throw v2
.end method

.method public eccRedialApprove(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "approve"    # I
    .param p3, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3722
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3723
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3724
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3725
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3726
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3728
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3730
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3731
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3733
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3734
    nop

    .line 3735
    return-void

    .line 3733
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3734
    throw v2
.end method

.method public editUPBEntry(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1314
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1315
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1317
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1319
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1321
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1322
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1324
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1325
    nop

    .line 1326
    return-void

    .line 1324
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1325
    throw v2
.end method

.method public enableCAPlusBandWidthFilter(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3408
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3409
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3410
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3411
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3413
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3415
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3416
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3418
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3419
    nop

    .line 3420
    return-void

    .line 3418
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3419
    throw v2
.end method

.method public enableCapabaility(ILjava/lang/String;II)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "toActive"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3686
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3687
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3688
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3689
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3690
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3691
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3693
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3695
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3696
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 3698
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3699
    nop

    .line 3700
    return-void

    .line 3698
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3699
    throw v2
.end method

.method public enableDsdaIndication(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3577
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3578
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3579
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3580
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3582
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3584
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3585
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3587
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3588
    nop

    .line 3589
    return-void

    .line 3587
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3588
    throw v2
.end method

.method public enableSCGfailure(IZIII)V
    .registers 11
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .param p3, "T1"    # I
    .param p4, "P1"    # I
    .param p5, "T2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2319
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2320
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2322
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2323
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2324
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2325
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2327
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2329
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1e
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x78

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2330
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 2332
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2333
    nop

    .line 2334
    return-void

    .line 2332
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2333
    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 237
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public forceReleaseCall(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 692
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 693
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 695
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 697
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 699
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 700
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 702
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 703
    nop

    .line 704
    return-void

    .line 702
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 703
    throw v2
.end method

.method public get4x4MimoEnabled(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4185
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4186
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4187
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4189
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4191
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4192
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 4194
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4195
    nop

    .line 4196
    return-void

    .line 4194
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4195
    throw v2
.end method

.method public getATR(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1629
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1630
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1633
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1635
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x50

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1636
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1638
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1639
    nop

    .line 1640
    return-void

    .line 1638
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1639
    throw v2
.end method

.method public getApcInfo(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2906
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2907
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2908
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2910
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2912
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x98

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2913
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2915
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2916
    nop

    .line 2917
    return-void

    .line 2915
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2916
    throw v2
.end method

.method public getAvailableNetworksWithAct(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2129
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2130
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2131
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2133
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2135
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2136
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2138
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2139
    nop

    .line 2140
    return-void

    .line 2138
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2139
    throw v2
.end method

.method public getBandMode(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4267
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4268
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4269
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4271
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4273
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4274
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 4276
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4277
    nop

    .line 4278
    return-void

    .line 4276
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4277
    throw v2
.end method

.method public getBandPriorityList(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4135
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4136
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4137
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4139
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4141
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xde

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4142
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 4144
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4145
    nop

    .line 4146
    return-void

    .line 4144
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4145
    throw v2
.end method

.method public getCALinkCapabilityList(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "linkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4068
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4069
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4070
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4071
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4073
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4075
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xda

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4076
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4078
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4079
    nop

    .line 4080
    return-void

    .line 4078
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4079
    throw v2
.end method

.method public getCALinkEnableStatus(ILjava/lang/String;I)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "bandsCombo"    # Ljava/lang/String;
    .param p3, "linkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4031
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4032
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4033
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4034
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4035
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4037
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4039
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4040
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 4042
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4043
    nop

    .line 4044
    return-void

    .line 4042
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4043
    throw v2
.end method

.method public getCaBandMode(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "primaryBandId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4283
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4284
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4285
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4286
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4288
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4290
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4291
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4293
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4294
    nop

    .line 4295
    return-void

    .line 4293
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4294
    throw v2
.end method

.method public getCallSubAddress(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1230
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1233
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1235
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x39

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1236
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1238
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1239
    nop

    .line 1240
    return-void

    .line 1238
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1239
    throw v2
.end method

.method public getCampedFemtoCellInfo(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4300
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4301
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4302
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4304
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4306
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4307
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 4309
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4310
    nop

    .line 4311
    return-void

    .line 4309
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4310
    throw v2
.end method

.method public getColp(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 869
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 870
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 873
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 875
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 876
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 878
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 879
    nop

    .line 880
    return-void

    .line 878
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 879
    throw v2
.end method

.method public getColr(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 885
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 886
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 889
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 891
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x25

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 892
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 894
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 895
    nop

    .line 896
    return-void

    .line 894
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 895
    throw v2
.end method

.method public getCurrentPOLList(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2477
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2478
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2481
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2483
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2484
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2486
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2487
    nop

    .line 2488
    return-void

    .line 2486
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2487
    throw v2
.end method

.method public getCurrentUiccCardProvisioningStatus(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1710
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1711
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1714
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1716
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x55

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1717
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1719
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1720
    nop

    .line 1721
    return-void

    .line 1719
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1720
    throw v2
.end method

.method public getDeactivateNrScgCommunication(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3758
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3759
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3760
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3762
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3764
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3765
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3767
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3768
    nop

    .line 3769
    return-void

    .line 3767
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3768
    throw v2
.end method

.method public getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4569
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4570
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4572
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4574
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4575
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4576
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4578
    new-instance v2, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4579
    .local v2, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/internal/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 4580
    nop

    .line 4582
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4580
    return-object v2

    .line 4582
    .end local v2    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4583
    throw v2
.end method

.method public getDsdaStatus(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3594
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3595
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3596
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3598
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3600
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3601
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3603
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3604
    nop

    .line 3605
    return-void

    .line 3603
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3604
    throw v2
.end method

.method public getEccNum(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1196
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1197
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1200
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1202
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x37

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1203
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1205
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1206
    nop

    .line 1207
    return-void

    .line 1205
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1206
    throw v2
.end method

.method public getEngineeringModeInfo(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4420
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4421
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.5::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4422
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4423
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4425
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4427
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xef

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4428
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4430
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4431
    nop

    .line 4432
    return-void

    .line 4430
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4431
    throw v2
.end method

.method public getFemtocellList(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2177
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2178
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2181
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2183
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x70

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2184
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2186
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2187
    nop

    .line 2188
    return-void

    .line 2186
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2187
    throw v2
.end method

.method public getGsmBroadcastActivation(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1957
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1958
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1961
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1963
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x63

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1964
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1966
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1967
    nop

    .line 1968
    return-void

    .line 1966
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1967
    throw v2
.end method

.method public getGsmBroadcastLangs(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1941
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1942
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1945
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1947
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x62

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1948
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1950
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1951
    nop

    .line 1952
    return-void

    .line 1950
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1951
    throw v2
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4494
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4495
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4497
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4499
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4500
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4501
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4503
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 4505
    .local v10, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v11, v2

    .line 4507
    .local v11, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v11, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v12, v2

    .line 4508
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v2, v12, 0x20

    int-to-long v3, v2

    .line 4509
    invoke-virtual {v11}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 4508
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 4512
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 4513
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_45
    if-ge v3, v12, :cond_59

    .line 4514
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 4516
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 4517
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 4518
    nop

    .line 4520
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_f .. :try_end_55} :catchall_5e

    .line 4513
    nop

    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 4524
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v11    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v12    # "_hidl_vec_size":I
    :cond_59
    nop

    .line 4526
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4524
    return-object v10

    .line 4526
    .end local v10    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_5e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4527
    throw v2
.end method

.method public getIccid(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1645
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1646
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1647
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1649
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1651
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x51

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1652
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1654
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1655
    nop

    .line 1656
    return-void

    .line 1654
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1655
    throw v2
.end method

.method public getImsCfgFeatureValue(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "network"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2959
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2960
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2961
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2962
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2963
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2965
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2967
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2968
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2970
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2971
    nop

    .line 2972
    return-void

    .line 2970
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2971
    throw v2
.end method

.method public getImsCfgProvisionValue(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2995
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2996
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2997
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2998
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3000
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3002
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3003
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3005
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3006
    nop

    .line 3007
    return-void

    .line 3005
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3006
    throw v2
.end method

.method public getImsCfgResourceCapValue(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3012
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3013
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3015
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3017
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3019
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3020
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3022
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3023
    nop

    .line 3024
    return-void

    .line 3022
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3023
    throw v2
.end method

.method public getLte1xRttCellList(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "available"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4234
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4235
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4236
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4237
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4239
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4241
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4242
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4244
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4245
    nop

    .line 4246
    return-void

    .line 4244
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4245
    throw v2
.end method

.method public getLteBsrTimer(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4218
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4219
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4220
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4222
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4224
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4225
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 4227
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4228
    nop

    .line 4229
    return-void

    .line 4227
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4228
    throw v2
.end method

.method public getLteData(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4085
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4086
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4087
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4089
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4091
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4092
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 4094
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4095
    nop

    .line 4096
    return-void

    .line 4094
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4095
    throw v2
.end method

.method public getLteRRCState(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4101
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4102
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4103
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4105
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4107
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4108
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 4110
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4111
    nop

    .line 4112
    return-void

    .line 4110
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4111
    throw v2
.end method

.method public getLteReleaseVersion(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3096
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3097
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3098
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3100
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3102
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3103
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3105
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3106
    nop

    .line 3107
    return-void

    .line 3105
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3106
    throw v2
.end method

.method public getLteScanDuration(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4403
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4404
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4405
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4407
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4409
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xee

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4410
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 4412
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4413
    nop

    .line 4414
    return-void

    .line 4412
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4413
    throw v2
.end method

.method public getPOLCapability(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2461
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2462
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2463
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2465
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2467
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2468
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2470
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2471
    nop

    .line 2472
    return-void

    .line 2470
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2471
    throw v2
.end method

.method public getPhoneBookMemStorage(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1419
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1420
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1423
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1425
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x44

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1426
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1428
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1429
    nop

    .line 1430
    return-void

    .line 1428
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1429
    throw v2
.end method

.method public getPhoneBookStringsLength(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1403
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1404
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1407
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1409
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x43

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1410
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1412
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1413
    nop

    .line 1414
    return-void

    .line 1412
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1413
    throw v2
.end method

.method public getPlmnNameFromSE13Table(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "mcc"    # I
    .param p3, "mnc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3390
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3391
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3392
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3393
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3394
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3396
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3398
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3399
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3401
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3402
    nop

    .line 3403
    return-void

    .line 3401
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3402
    throw v2
.end method

.method public getProvisionValue(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "provisionstring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 534
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 536
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 538
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 540
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 541
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 543
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 544
    nop

    .line 545
    return-void

    .line 543
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 544
    throw v2
.end method

.method public getQamEnabled(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "ulOrDl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4334
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4335
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4336
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4337
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4339
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4341
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xea

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4342
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4344
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4345
    nop

    .line 4346
    return-void

    .line 4344
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4345
    throw v2
.end method

.method public getRoamingEnable(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 815
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 816
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 818
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 820
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 822
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x21

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 823
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 825
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 826
    nop

    .line 827
    return-void

    .line 825
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 826
    throw v2
.end method

.method public getRxTestResult(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2444
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2445
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2446
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2447
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2449
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2451
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2452
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2454
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2455
    nop

    .line 2456
    return-void

    .line 2454
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2455
    throw v2
.end method

.method public getSignalStrengthWithWcdmaEcio(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2145
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2146
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2149
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2151
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2152
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2154
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2155
    nop

    .line 2156
    return-void

    .line 2154
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2155
    throw v2
.end method

.method public getSmartRatSwitch(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3827
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3828
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3829
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3830
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3832
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3834
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3835
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3837
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3838
    nop

    .line 3839
    return-void

    .line 3837
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3838
    throw v2
.end method

.method public getSmsMemStatus(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1873
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1874
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1875
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1877
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1879
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1880
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1882
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1883
    nop

    .line 1884
    return-void

    .line 1882
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1883
    throw v2
.end method

.method public getSmsParameters(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1840
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1841
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1844
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1846
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1847
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1849
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1850
    nop

    .line 1851
    return-void

    .line 1849
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1850
    throw v2
.end method

.method public getSmsRuimMemoryStatus(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2094
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2095
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2096
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2098
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2100
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2101
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2103
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2104
    nop

    .line 2105
    return-void

    .line 2103
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2104
    throw v2
.end method

.method public getSuggestedPlmnList(IIII)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "rat"    # I
    .param p3, "num"    # I
    .param p4, "timer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3630
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3631
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3632
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3633
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3634
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3635
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3637
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3639
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3640
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 3642
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3643
    nop

    .line 3644
    return-void

    .line 3642
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3643
    throw v2
.end method

.method public getTOEInfo(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3998
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3999
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4000
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4002
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4004
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4005
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 4007
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4008
    nop

    .line 4009
    return-void

    .line 4007
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4008
    throw v2
.end method

.method public getTm9Enabled(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "fddOrTdd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4369
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4370
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4371
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4372
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4374
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4376
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xec

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4377
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4379
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4380
    nop

    .line 4381
    return-void

    .line 4379
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4380
    throw v2
.end method

.method public getVoiceDomainPreference(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3425
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3426
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3427
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3429
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3431
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3432
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3434
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3435
    nop

    .line 3436
    return-void

    .line 3434
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3435
    throw v2
.end method

.method public getXcapStatus(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1039
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1040
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1043
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1045
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1046
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1048
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1049
    nop

    .line 1050
    return-void

    .line 1048
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1049
    throw v2
.end method

.method public handleStkCallSetupRequestFromSimWithResCode(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "resultCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2548
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2549
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2551
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2553
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2555
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x85

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2556
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2558
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2559
    nop

    .line 2560
    return-void

    .line 2558
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2559
    throw v2
.end method

.method public hangupAll(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1088
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1089
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1092
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1094
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x31

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1095
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1097
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1098
    nop

    .line 1099
    return-void

    .line 1097
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1098
    throw v2
.end method

.method public hangupWithReason(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3181
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3182
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3183
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3184
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3185
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3187
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3189
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3190
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3192
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3193
    nop

    .line 3194
    return-void

    .line 3192
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3193
    throw v2
.end method

.method public final hashCode()I
    .registers 2

    .line 242
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public imsBearerStateConfirm(IIII)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 710
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 712
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 713
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 714
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 716
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 718
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 719
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 721
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 722
    nop

    .line 723
    return-void

    .line 721
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 722
    throw v2
.end method

.method public imsDeregNotification(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 461
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 463
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 465
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 467
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 468
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 470
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 471
    nop

    .line 472
    return-void

    .line 470
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 471
    throw v2
.end method

.method public imsEctCommand(ILjava/lang/String;I)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 425
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 427
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 430
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 432
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 433
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 435
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 436
    nop

    .line 437
    return-void

    .line 435
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 436
    throw v2
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4438
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4439
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4441
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4443
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4444
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4445
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4447
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 4448
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 4450
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4448
    return-object v2

    .line 4450
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4451
    throw v2
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4475
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4476
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4478
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4480
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4481
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4482
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 4484
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 4485
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 4487
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4485
    return-object v2

    .line 4487
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4488
    throw v2
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4548
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public modifyModemType(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "applyType"    # I
    .param p3, "modemType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2076
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2077
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2078
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2079
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2080
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2082
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2084
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2085
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2087
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2088
    nop

    .line 2089
    return-void

    .line 2087
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2088
    throw v2
.end method

.method public notifyEPDGScreenState(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3164
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3165
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3166
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3167
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3169
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3171
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3172
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3174
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3175
    nop

    .line 3176
    return-void

    .line 3174
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3175
    throw v2
.end method

.method public notifyImsServiceReady()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3375
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3376
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3378
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3380
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3381
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1f

    .line 3383
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3384
    nop

    .line 3385
    return-void

    .line 3383
    :catchall_1f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3384
    throw v2
.end method

.method public notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4589
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4590
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4592
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4594
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4595
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 4597
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4598
    nop

    .line 4599
    return-void

    .line 4597
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4598
    throw v2
.end method

.method public ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4553
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4554
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4556
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4558
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4559
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 4560
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 4562
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4563
    nop

    .line 4564
    return-void

    .line 4562
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4563
    throw v2
.end method

.method public pullCall(ILjava/lang/String;Z)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "isVideoCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 747
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 748
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 750
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 753
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 755
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 756
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 758
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 759
    nop

    .line 760
    return-void

    .line 758
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 759
    throw v2
.end method

.method public queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "callInfoEx"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 953
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 955
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->writeToParcel(Landroid/os/HwParcel;)V

    .line 957
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 959
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x29

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 960
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 962
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 963
    nop

    .line 964
    return-void

    .line 962
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 963
    throw v2
.end method

.method public queryFemtoCellSystemSelectionMode(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2228
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2229
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2230
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2232
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2234
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x73

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2235
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2237
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2238
    nop

    .line 2239
    return-void

    .line 2237
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2238
    throw v2
.end method

.method public queryNetworkLock(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1743
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1744
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1746
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1748
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1750
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x57

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1751
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1753
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1754
    nop

    .line 1755
    return-void

    .line 1753
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1754
    throw v2
.end method

.method public queryPhbStorageInfo(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1245
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1246
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1248
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1250
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1252
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1253
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1255
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1256
    nop

    .line 1257
    return-void

    .line 1255
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1256
    throw v2
.end method

.method public querySsacStatus(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2786
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2787
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2788
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2790
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2792
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x92

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2793
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2795
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2796
    nop

    .line 2797
    return-void

    .line 2795
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2796
    throw v2
.end method

.method public queryUPBAvailable(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "eftype"    # I
    .param p3, "fileIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1488
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1489
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1491
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1492
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1494
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1496
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x48

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1497
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1499
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1500
    nop

    .line 1501
    return-void

    .line 1499
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1500
    throw v2
.end method

.method public queryUPBCapability(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1298
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1299
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1302
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1304
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1305
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1307
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1308
    nop

    .line 1309
    return-void

    .line 1307
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1308
    throw v2
.end method

.method public queryVopsStatus(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3359
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3360
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3361
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3363
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3365
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3366
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3368
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3369
    nop

    .line 3370
    return-void

    .line 3368
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3369
    throw v2
.end method

.method public readPhbEntry(IIII)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .param p3, "bIndex"    # I
    .param p4, "eIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1279
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1280
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1282
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1283
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1284
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1286
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1288
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1289
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 1291
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1292
    nop

    .line 1293
    return-void

    .line 1291
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1292
    throw v2
.end method

.method public readPhoneBookEntryExt(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "index1"    # I
    .param p3, "index2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1453
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1454
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1456
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1457
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1459
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1461
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x46

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1462
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1464
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1465
    nop

    .line 1466
    return-void

    .line 1464
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1465
    throw v2
.end method

.method public readUPBAasList(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1560
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1561
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1563
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1564
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1566
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1568
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1569
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1571
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1572
    nop

    .line 1573
    return-void

    .line 1571
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1572
    throw v2
.end method

.method public readUPBAnrEntry(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "adnIndex"    # I
    .param p3, "fileIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1542
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1543
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1545
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1546
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1548
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1550
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1551
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1553
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1554
    nop

    .line 1555
    return-void

    .line 1553
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1554
    throw v2
.end method

.method public readUPBEmailEntry(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "adnIndex"    # I
    .param p3, "fileIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1506
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1507
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1508
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1509
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1510
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1512
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1514
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x49

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1515
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1517
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1518
    nop

    .line 1519
    return-void

    .line 1517
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1518
    throw v2
.end method

.method public readUPBGasList(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1350
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1351
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1353
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1354
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1356
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1358
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x40

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1359
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1361
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1362
    nop

    .line 1363
    return-void

    .line 1361
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1362
    throw v2
.end method

.method public readUPBGrpEntry(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "adnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1368
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1369
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1371
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1373
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1375
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x41

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1376
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1378
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1379
    nop

    .line 1380
    return-void

    .line 1378
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1379
    throw v2
.end method

.method public readUPBSneEntry(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "adnIndex"    # I
    .param p3, "fileIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1524
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1525
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1527
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1528
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1530
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1532
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1533
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1535
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1536
    nop

    .line 1537
    return-void

    .line 1535
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1536
    throw v2
.end method

.method public registerCellQltyReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "serial"    # I
    .param p2, "registerQuality"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "thresholdValues"    # Ljava/lang/String;
    .param p5, "triggerTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3610
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3611
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3612
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3613
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3614
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3615
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3616
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3618
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3620
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1e
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3621
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 3623
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3624
    nop

    .line 3625
    return-void

    .line 3623
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3624
    throw v2
.end method

.method public removeCbMsg(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "channelId"    # I
    .param p3, "serialId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1906
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1907
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1908
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1909
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1910
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1912
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1914
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x60

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1915
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1917
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1918
    nop

    .line 1919
    return-void

    .line 1917
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1918
    throw v2
.end method

.method public resetAllConnections(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3063
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3064
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3067
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3069
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3070
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 3072
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3073
    nop

    .line 3074
    return-void

    .line 3072
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3073
    throw v2
.end method

.method public resetMdDataRetryCount(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "apn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2632
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2633
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2634
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2635
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2637
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2639
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2640
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2642
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2643
    nop

    .line 2644
    return-void

    .line 2642
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2643
    throw v2
.end method

.method public resetSuppServ(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1055
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1056
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1059
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1061
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1062
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1064
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1065
    nop

    .line 1066
    return-void

    .line 1064
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1065
    throw v2
.end method

.method public responseAcknowledgementMtk()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 250
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 252
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 254
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 255
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1d

    .line 257
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 258
    nop

    .line 259
    return-void

    .line 257
    :catchall_1d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 258
    throw v2
.end method

.method public restartRILD(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2599
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2600
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2601
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2603
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2605
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x88

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2606
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2608
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2609
    nop

    .line 2610
    return-void

    .line 2608
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2609
    throw v2
.end method

.method public routeAuthMessage(IILjava/util/ArrayList;)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3668
    .local p3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3669
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3670
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3671
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3672
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 3674
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3676
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3677
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3679
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3680
    nop

    .line 3681
    return-void

    .line 3679
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3680
    throw v2
.end method

.method public routeCertificate(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3649
    .local p3, "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p4, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3650
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3651
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3652
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3653
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 3654
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 3656
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3658
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3659
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 3661
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3662
    nop

    .line 3663
    return-void

    .line 3661
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3662
    throw v2
.end method

.method public rttModifyRequestResponse(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3323
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3324
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3325
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3326
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3327
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3329
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3331
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3332
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3334
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3335
    nop

    .line 3336
    return-void

    .line 3334
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3335
    throw v2
.end method

.method public runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V
    .registers 11
    .param p1, "serial"    # I
    .param p2, "nafFqdn"    # Ljava/lang/String;
    .param p3, "nafSecureProtocolId"    # Ljava/lang/String;
    .param p4, "forceRun"    # Z
    .param p5, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 986
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 987
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 989
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 992
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 994
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 996
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1e
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 997
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 999
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1000
    nop

    .line 1001
    return-void

    .line 999
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1000
    throw v2
.end method

.method public selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "act"    # Ljava/lang/String;
    .param p4, "csgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2209
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2210
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2211
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2212
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2213
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2216
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2218
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x72

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2219
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 2221
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2222
    nop

    .line 2223
    return-void

    .line 2221
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2222
    throw v2
.end method

.method public sendAtciRequest(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2582
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2583
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2584
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2585
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2587
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2589
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x87

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2590
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2592
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2593
    nop

    .line 2594
    return-void

    .line 2592
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2593
    throw v2
.end method

.method public sendCnap(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "cnapssMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 901
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 902
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 904
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 906
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 908
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x26

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 909
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 911
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 912
    nop

    .line 913
    return-void

    .line 911
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 912
    throw v2
.end method

.method public sendEmbmsAtCommand(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 782
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 784
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 786
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 788
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 789
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 791
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 792
    nop

    .line 793
    return-void

    .line 791
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 792
    throw v2
.end method

.method public sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/V1_0/ImsSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1973
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1974
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1975
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1976
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1978
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1980
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x64

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1981
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1983
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1984
    nop

    .line 1985
    return-void

    .line 1983
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1984
    throw v2
.end method

.method public sendRequestRaw(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2025
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2026
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2028
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2030
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2032
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x67

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2033
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2035
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2036
    nop

    .line 2037
    return-void

    .line 2035
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2036
    throw v2
.end method

.method public sendRequestStrings(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2042
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2043
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2045
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2047
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2049
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x68

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2050
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2052
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2053
    nop

    .line 2054
    return-void

    .line 2052
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2053
    throw v2
.end method

.method public sendRsuRequest(ILvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "rri"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3898
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3899
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3900
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3901
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3903
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3905
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3906
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3908
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3909
    nop

    .line 3910
    return-void

    .line 3908
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3909
    throw v2
.end method

.method public sendRttModifyRequest(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "newMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3286
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3287
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3288
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3289
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3290
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3292
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3294
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xae

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3295
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3297
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3298
    nop

    .line 3299
    return-void

    .line 3297
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3298
    throw v2
.end method

.method public sendRttText(IIILjava/lang/String;)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "lenOfString"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3304
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3305
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3306
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3307
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3308
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3309
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3311
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3313
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3314
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 3316
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3317
    nop

    .line 3318
    return-void

    .line 3316
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3317
    throw v2
.end method

.method public sendSarIndicator(IILjava/lang/String;)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "sar_cmd_type"    # I
    .param p3, "sar_parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3863
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3864
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3865
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3866
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3867
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3869
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3871
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3872
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3874
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3875
    nop

    .line 3876
    return-void

    .line 3874
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3875
    throw v2
.end method

.method public sendSubsidyLockRequest(IILjava/util/ArrayList;)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "reqType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3233
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3234
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3235
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3236
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3237
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 3239
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3241
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xab

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3242
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3244
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3245
    nop

    .line 3246
    return-void

    .line 3244
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3245
    throw v2
.end method

.method public sendUssi(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "ussiString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1006
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1007
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1009
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1011
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1013
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1014
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1016
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1017
    nop

    .line 1018
    return-void

    .line 1016
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1017
    throw v2
.end method

.method public sendVsimNotification(IIII)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "transactionId"    # I
    .param p3, "eventId"    # I
    .param p4, "simType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1800
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1801
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1802
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1803
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1804
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1805
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1807
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1809
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1810
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 1812
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1813
    nop

    .line 1814
    return-void

    .line 1812
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1813
    throw v2
.end method

.method public sendVsimOperation(IIIIILjava/util/ArrayList;)V
    .registers 12
    .param p1, "serial"    # I
    .param p2, "transactionId"    # I
    .param p3, "eventId"    # I
    .param p4, "result"    # I
    .param p5, "dataLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1819
    .local p6, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1820
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1822
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1823
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1824
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1825
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1826
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1828
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1830
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_21
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1831
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_31

    .line 1833
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1834
    nop

    .line 1835
    return-void

    .line 1833
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1834
    throw v2
.end method

.method public sendWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "serial"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "associated"    # I
    .param p4, "ssid"    # Ljava/lang/String;
    .param p5, "apMac"    # Ljava/lang/String;
    .param p6, "mtuSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3933
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3934
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3935
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3936
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3937
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3938
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3939
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3940
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3942
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3944
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_21
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3945
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_31

    .line 3947
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3948
    nop

    .line 3949
    return-void

    .line 3947
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3948
    throw v2
.end method

.method public sendWifiEnabled(ILjava/lang/String;I)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "isWifiEnabled"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3915
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3916
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3917
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3918
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3919
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3921
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3923
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3924
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3926
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3927
    nop

    .line 3928
    return-void

    .line 3926
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3927
    throw v2
.end method

.method public sendWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16
    .param p1, "serial"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "ipv4Addr"    # Ljava/lang/String;
    .param p4, "ipv6Addr"    # Ljava/lang/String;
    .param p5, "ipv4PrefixLen"    # I
    .param p6, "ipv6PrefixLen"    # I
    .param p7, "ipv4Gateway"    # Ljava/lang/String;
    .param p8, "ipv6Gateway"    # Ljava/lang/String;
    .param p9, "dnsCount"    # I
    .param p10, "dnsServers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3954
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3955
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3956
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3957
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3958
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3959
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3960
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3961
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3962
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3963
    invoke-virtual {v0, p8}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3964
    invoke-virtual {v0, p9}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3965
    invoke-virtual {v0, p10}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3967
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3969
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_2d
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3970
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_3d

    .line 3972
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3973
    nop

    .line 3974
    return-void

    .line 3972
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3973
    throw v2
.end method

.method public set4x4MimoEnabled(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "enabled_bitmask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4168
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4169
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4170
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4171
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4173
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4175
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4176
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4178
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4179
    nop

    .line 4180
    return-void

    .line 4178
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4179
    throw v2
.end method

.method public setApcMode(IIII)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "reportMode"    # I
    .param p4, "interval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2887
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2888
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2889
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2890
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2891
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2892
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2894
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2896
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x97

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2897
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 2899
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2900
    nop

    .line 2901
    return-void

    .line 2899
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2900
    throw v2
.end method

.method public setBandPriorityList(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4151
    .local p2, "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4152
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4153
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4154
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 4156
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4158
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4159
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4161
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4162
    nop

    .line 4163
    return-void

    .line 4161
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4162
    throw v2
.end method

.method public setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;
    .param p4, "newPassword"    # Ljava/lang/String;
    .param p5, "cfmPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 832
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 833
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 835
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 840
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 842
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1e
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x22

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 843
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 845
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 846
    nop

    .line 847
    return-void

    .line 845
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 846
    throw v2
.end method

.method public setBgsrchDeltaSleepTimer(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "sleepDuration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2410
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2411
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2413
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2415
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2417
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2418
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2420
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2421
    nop

    .line 2422
    return-void

    .line 2420
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2421
    throw v2
.end method

.method public setCALinkEnableStatus(IZLjava/lang/String;I)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "status"    # Z
    .param p3, "bandsCombo"    # Ljava/lang/String;
    .param p4, "linkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4049
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4050
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4051
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4052
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4053
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4054
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4056
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4058
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4059
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 4061
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4062
    nop

    .line 4063
    return-void

    .line 4061
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4062
    throw v2
.end method

.method public setCallAdditionalInfo(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3881
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3882
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3883
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3884
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3886
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3888
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3889
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3891
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3892
    nop

    .line 3893
    return-void

    .line 3891
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3892
    throw v2
.end method

.method public setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "callInfoEx"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 969
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 970
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 971
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 972
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->writeToParcel(Landroid/os/HwParcel;)V

    .line 974
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 976
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 977
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 979
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 980
    nop

    .line 981
    return-void

    .line 979
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 980
    throw v2
.end method

.method public setCallIndication(IIIII)V
    .registers 11
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "callId"    # I
    .param p4, "seqNumber"    # I
    .param p5, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1104
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1105
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1107
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1108
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1109
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1110
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1112
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1114
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1e
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x32

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1115
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 1117
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1118
    nop

    .line 1119
    return-void

    .line 1117
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1118
    throw v2
.end method

.method public setCallSubAddress(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1212
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1213
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1215
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1217
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1219
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x38

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1220
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1222
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1223
    nop

    .line 1224
    return-void

    .line 1222
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1223
    throw v2
.end method

.method public setCallValidTimer(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "timer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3509
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3510
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3511
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3512
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3514
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3516
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3517
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3519
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3520
    nop

    .line 3521
    return-void

    .line 3519
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3520
    throw v2
.end method

.method public setClip(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "clipEnable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 852
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 853
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 855
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 857
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 859
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x23

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 860
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 862
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 863
    nop

    .line 864
    return-void

    .line 862
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 863
    throw v2
.end method

.method public setColp(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "colpEnable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 918
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 919
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 920
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 921
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 923
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 925
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x27

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 926
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 928
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 929
    nop

    .line 930
    return-void

    .line 928
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 929
    throw v2
.end method

.method public setColr(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "colrEnable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 935
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 936
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 938
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 940
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 942
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x28

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 943
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 945
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 946
    nop

    .line 947
    return-void

    .line 945
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 946
    throw v2
.end method

.method public setEccMode(ILjava/lang/String;III)V
    .registers 11
    .param p1, "serial"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "enable"    # I
    .param p4, "airplaneMode"    # I
    .param p5, "imsReg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1124
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1125
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1127
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1129
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1130
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1132
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1134
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1e
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x33

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1135
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 1137
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1138
    nop

    .line 1139
    return-void

    .line 1137
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1138
    throw v2
.end method

.method public setEccNum(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "ecc_list_with_card"    # Ljava/lang/String;
    .param p3, "ecc_list_no_card"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1178
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1179
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1181
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1184
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1186
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x36

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1187
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1189
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1190
    nop

    .line 1191
    return-void

    .line 1189
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1190
    throw v2
.end method

.method public setEmergencyAddressId(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2829
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2830
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2831
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2832
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2834
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2836
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x94

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2837
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2839
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2840
    nop

    .line 2841
    return-void

    .line 2839
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2840
    throw v2
.end method

.method public setEtws(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1889
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1890
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1891
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1892
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1894
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1896
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1897
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1899
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1900
    nop

    .line 1901
    return-void

    .line 1899
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1900
    throw v2
.end method

.method public setFdMode(IIII)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "param1"    # I
    .param p4, "param2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2512
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2513
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2514
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2515
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2516
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2517
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2519
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2521
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x83

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2522
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 2524
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2525
    nop

    .line 2526
    return-void

    .line 2524
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2525
    throw v2
.end method

.method public setFemtoCellSystemSelectionMode(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2244
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2245
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2247
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2249
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2251
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x74

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2252
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2254
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2255
    nop

    .line 2256
    return-void

    .line 2254
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2255
    throw v2
.end method

.method public setGsmBroadcastLangs(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "langs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1924
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1925
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1926
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1927
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1929
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1931
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x61

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1932
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1934
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1935
    nop

    .line 1936
    return-void

    .line 1934
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1935
    throw v2
.end method

.method public setGwsdMode(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3492
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3493
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3494
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3495
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3497
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3499
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xba

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3500
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3502
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3503
    nop

    .line 3504
    return-void

    .line 3502
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3503
    throw v2
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4533
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4534
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4536
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4538
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4539
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 4541
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4542
    nop

    .line 4543
    return-void

    .line 4541
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4542
    throw v2
.end method

.method public setIgnoreSameNumberInterval(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "interval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3526
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3527
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3528
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3529
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3531
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3533
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3534
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3536
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3537
    nop

    .line 3538
    return-void

    .line 3536
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3537
    throw v2
.end method

.method public setImsBearerNotification(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2922
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2923
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2924
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2925
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2927
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2929
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x99

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2930
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2932
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2933
    nop

    .line 2934
    return-void

    .line 2932
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2933
    throw v2
.end method

.method public setImsCallMode(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3475
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3476
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3477
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3478
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3480
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3482
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3483
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3485
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3486
    nop

    .line 3487
    return-void

    .line 3485
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3486
    throw v2
.end method

.method public setImsCfgFeatureValue(IIIII)V
    .registers 11
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "network"    # I
    .param p4, "value"    # I
    .param p5, "isLast"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2939
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2940
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2941
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2942
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2943
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2944
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2945
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2947
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2949
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1e
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2950
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 2952
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2953
    nop

    .line 2954
    return-void

    .line 2952
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2953
    throw v2
.end method

.method public setImsCfgProvisionValue(IILjava/lang/String;)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "configId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2977
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2978
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2979
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2980
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2981
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2983
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2985
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2986
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2988
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2989
    nop

    .line 2990
    return-void

    .line 2988
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2989
    throw v2
.end method

.method public setImsEnable(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 478
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 480
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 482
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 484
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 485
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 487
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 488
    nop

    .line 489
    return-void

    .line 487
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 488
    throw v2
.end method

.method public setImsRegistrationReport(I)V
    .registers 7
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 766
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 769
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 771
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 772
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 774
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 775
    nop

    .line 776
    return-void

    .line 774
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 775
    throw v2
.end method

.method public setImsRtpReport(IIII)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "pdnId"    # I
    .param p3, "networkId"    # I
    .param p4, "timer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 728
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 729
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 731
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 732
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 733
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 735
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 737
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 738
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 740
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 741
    nop

    .line 742
    return-void

    .line 740
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 741
    throw v2
.end method

.method public setImsVideoEnable(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 495
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 497
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 499
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 501
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 502
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 504
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 505
    nop

    .line 506
    return-void

    .line 504
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 505
    throw v2
.end method

.method public setImscfg(IZZZZZZ)V
    .registers 13
    .param p1, "serial"    # I
    .param p2, "volteEnable"    # Z
    .param p3, "vilteEnable"    # Z
    .param p4, "vowifiEnable"    # Z
    .param p5, "viwifiEnable"    # Z
    .param p6, "smsEnable"    # Z
    .param p7, "eimsEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 512
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 514
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 515
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 516
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 517
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 518
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 519
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 521
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 523
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_24
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 524
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_34

    .line 526
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 527
    nop

    .line 528
    return-void

    .line 526
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 527
    throw v2
.end method

.method public setKeepAliveByIpData(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3560
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3561
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3562
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3563
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3565
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3567
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3568
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3570
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3571
    nop

    .line 3572
    return-void

    .line 3570
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3571
    throw v2
.end method

.method public setKeepAliveByPDCPCtrlPDU(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3543
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3544
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3545
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3546
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3548
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3550
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xbd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3551
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3553
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3554
    nop

    .line 3555
    return-void

    .line 3553
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3554
    throw v2
.end method

.method public setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 29
    .param p1, "serial"    # I
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "broadcastFlag"    # Ljava/lang/String;
    .param p4, "latitude"    # Ljava/lang/String;
    .param p5, "longitude"    # Ljava/lang/String;
    .param p6, "accuracy"    # Ljava/lang/String;
    .param p7, "method"    # Ljava/lang/String;
    .param p8, "city"    # Ljava/lang/String;
    .param p9, "state"    # Ljava/lang/String;
    .param p10, "zip"    # Ljava/lang/String;
    .param p11, "countryCode"    # Ljava/lang/String;
    .param p12, "ueWlanMac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2802
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    move-object v1, v0

    .line 2803
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v1, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2804
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2805
    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2806
    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2807
    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2808
    move-object/from16 v6, p5

    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2809
    move-object/from16 v7, p6

    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2810
    move-object/from16 v8, p7

    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2811
    move-object/from16 v9, p8

    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2812
    move-object/from16 v10, p9

    invoke-virtual {v1, v10}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2813
    move-object/from16 v11, p10

    invoke-virtual {v1, v11}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2814
    move-object/from16 v12, p11

    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2815
    move-object/from16 v13, p12

    invoke-virtual {v1, v13}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2817
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    move-object v14, v0

    .line 2819
    .local v14, "_hidl_reply":Landroid/os/HwParcel;
    move-object/from16 v15, p0

    :try_start_4f
    iget-object v0, v15, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x93

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v14, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2820
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_5f

    .line 2822
    invoke-virtual {v14}, Landroid/os/HwParcel;->release()V

    .line 2823
    nop

    .line 2824
    return-void

    .line 2822
    :catchall_5f
    move-exception v0

    invoke-virtual {v14}, Landroid/os/HwParcel;->release()V

    .line 2823
    throw v0
.end method

.method public setLteBandEnableStatus(IIZ)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "bandId"    # I
    .param p3, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4117
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4118
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4119
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4120
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4121
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4123
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4125
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xdd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4126
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 4128
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4129
    nop

    .line 4130
    return-void

    .line 4128
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4129
    throw v2
.end method

.method public setLteBsrTimer(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "timer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4201
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4202
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4203
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4204
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4206
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4208
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4209
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4211
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4212
    nop

    .line 4213
    return-void

    .line 4211
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4212
    throw v2
.end method

.method public setLteReleaseVersion(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3079
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3080
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3081
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3082
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3084
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3086
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3087
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3089
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3090
    nop

    .line 3091
    return-void

    .line 3089
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3090
    throw v2
.end method

.method public setLteScanDuration(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4386
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4387
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4388
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4389
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4391
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4393
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xed

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4394
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 4396
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4397
    nop

    .line 4398
    return-void

    .line 4396
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4397
    throw v2
.end method

.method public setMaxUlSpeed(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "ulSpeed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3774
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3775
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3776
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3777
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3779
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3781
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xca

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3782
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3784
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3785
    nop

    .line 3786
    return-void

    .line 3784
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3785
    throw v2
.end method

.method public setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "keys"    # Ljava/lang/String;
    .param p3, "values"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 623
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 625
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 629
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 631
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x16

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 632
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 634
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 635
    nop

    .line 636
    return-void

    .line 634
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 635
    throw v2
.end method

.method public setModemPower(IZ)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1595
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1596
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1598
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1600
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1602
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1603
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1605
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1606
    nop

    .line 1607
    return-void

    .line 1605
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1606
    throw v2
.end method

.method public setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V
    .registers 13
    .param p1, "serial"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .param p4, "srcIp"    # Ljava/lang/String;
    .param p5, "srcPort"    # I
    .param p6, "dstIp"    # Ljava/lang/String;
    .param p7, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2846
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2847
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2848
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2849
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2850
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2851
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2852
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2853
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2854
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2856
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2858
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_24
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x95

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2859
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_34

    .line 2861
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2862
    nop

    .line 2863
    return-void

    .line 2861
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2862
    throw v2
.end method

.method public setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "serial"    # I
    .param p2, "category"    # I
    .param p3, "lockop"    # I
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "data_imsi"    # Ljava/lang/String;
    .param p6, "gid1"    # Ljava/lang/String;
    .param p7, "gid2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1760
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1761
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1763
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1764
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1765
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1770
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1772
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_24
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x58

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1773
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_34

    .line 1775
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1776
    nop

    .line 1777
    return-void

    .line 1775
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1776
    throw v2
.end method

.method public setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "act"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2110
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2111
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2113
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2114
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2115
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2117
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2119
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2120
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 2122
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2123
    nop

    .line 2124
    return-void

    .line 2122
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2123
    throw v2
.end method

.method public setPOLEntry(IILjava/lang/String;I)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "index"    # I
    .param p3, "numeric"    # Ljava/lang/String;
    .param p4, "nAct"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2493
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2494
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2495
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2496
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2497
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2498
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2500
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2502
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x82

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2503
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 2505
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2506
    nop

    .line 2507
    return-void

    .line 2505
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2506
    throw v2
.end method

.method public setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "storage"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1435
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1436
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1438
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1441
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1443
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x45

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1444
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1446
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1447
    nop

    .line 1448
    return-void

    .line 1446
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1447
    throw v2
.end method

.method public setPhonebookReady(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "ready"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1578
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1579
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1581
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1583
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1585
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1586
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1588
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1589
    nop

    .line 1590
    return-void

    .line 1588
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1589
    throw v2
.end method

.method public setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "provisionstring"    # Ljava/lang/String;
    .param p3, "provisionValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 551
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 553
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 556
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 558
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 559
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 561
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 562
    nop

    .line 563
    return-void

    .line 561
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 562
    throw v2
.end method

.method public setQamEnabled(IZZ)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "ulOrDl"    # Z
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4316
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4317
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4318
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4319
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4320
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4322
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4324
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4325
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 4327
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4328
    nop

    .line 4329
    return-void

    .line 4327
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4328
    throw v2
.end method

.method public setRemoveRestrictEutranMode(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2649
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2650
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2651
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2652
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2654
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2656
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2657
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2659
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2660
    nop

    .line 2661
    return-void

    .line 2659
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2660
    throw v2
.end method

.method public setResponseFunctionsAssist(Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;)V
    .registers 7
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 355
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 356
    if-nez p1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 358
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 360
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1a
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 361
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 362
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_2c

    .line 364
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 365
    nop

    .line 366
    return-void

    .line 364
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 365
    throw v2
.end method

.method public setResponseFunctionsCap(Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;)V
    .registers 7
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 372
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 373
    if-nez p1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 375
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 377
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1a
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 378
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 379
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_2d

    .line 381
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 382
    nop

    .line 383
    return-void

    .line 381
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 382
    throw v2
.end method

.method public setResponseFunctionsEm(Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;)V
    .registers 8
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 337
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 338
    const/4 v1, 0x0

    if-nez p1, :cond_f

    move-object v2, v1

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 339
    if-nez p2, :cond_19

    goto :goto_1d

    :cond_19
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 341
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 343
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_25
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 344
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 345
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_37

    .line 347
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 348
    nop

    .line 349
    return-void

    .line 347
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 348
    throw v2
.end method

.method public setResponseFunctionsForAtci(Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;)V
    .registers 8
    .param p1, "atciResponse"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;
    .param p2, "atciIndication"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2565
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2566
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2567
    const/4 v1, 0x0

    if-nez p1, :cond_f

    move-object v2, v1

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2568
    if-nez p2, :cond_19

    goto :goto_1d

    :cond_19
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2570
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2572
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_25
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x86

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2573
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_35

    .line 2575
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2576
    nop

    .line 2577
    return-void

    .line 2575
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2576
    throw v2
.end method

.method public setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;)V
    .registers 8
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 283
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    const/4 v1, 0x0

    if-nez p1, :cond_f

    move-object v2, v1

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 285
    if-nez p2, :cond_19

    goto :goto_1d

    :cond_19
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 287
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 289
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_25
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 290
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 291
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_37

    .line 293
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 294
    nop

    .line 295
    return-void

    .line 293
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 294
    throw v2
.end method

.method public setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;)V
    .registers 8
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 265
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 266
    const/4 v1, 0x0

    if-nez p1, :cond_f

    move-object v2, v1

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 267
    if-nez p2, :cond_19

    goto :goto_1d

    :cond_19
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 269
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 271
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_25
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 272
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 273
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_37

    .line 275
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 276
    nop

    .line 277
    return-void

    .line 275
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 276
    throw v2
.end method

.method public setResponseFunctionsMwi(Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;)V
    .registers 8
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 301
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 302
    const/4 v1, 0x0

    if-nez p1, :cond_f

    move-object v2, v1

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 303
    if-nez p2, :cond_19

    goto :goto_1d

    :cond_19
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 305
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 307
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_25
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 308
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 309
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_37

    .line 311
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 312
    nop

    .line 313
    return-void

    .line 311
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 312
    throw v2
.end method

.method public setResponseFunctionsRcs(Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;)V
    .registers 8
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3216
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3217
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3218
    const/4 v1, 0x0

    if-nez p1, :cond_f

    move-object v2, v1

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 3219
    if-nez p2, :cond_19

    goto :goto_1d

    :cond_19
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 3221
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3223
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_25
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3224
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_35

    .line 3226
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3227
    nop

    .line 3228
    return-void

    .line 3226
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3227
    throw v2
.end method

.method public setResponseFunctionsRsu(Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;)V
    .registers 8
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 389
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 390
    const/4 v1, 0x0

    if-nez p1, :cond_f

    move-object v2, v1

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 391
    if-nez p2, :cond_19

    goto :goto_1d

    :cond_19
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 393
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 395
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_25
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 396
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 397
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_38

    .line 399
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 400
    nop

    .line 401
    return-void

    .line 399
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 400
    throw v2
.end method

.method public setResponseFunctionsSE(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;)V
    .registers 8
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 319
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 320
    const/4 v1, 0x0

    if-nez p1, :cond_f

    move-object v2, v1

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 321
    if-nez p2, :cond_19

    goto :goto_1d

    :cond_19
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 323
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 325
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_25
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 326
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 327
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_37

    .line 329
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 330
    nop

    .line 331
    return-void

    .line 329
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 330
    throw v2
.end method

.method public setResponseFunctionsSmartRatSwitch(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;)V
    .registers 8
    .param p1, "radioResponse"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;
    .param p2, "radioIndication"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3791
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3792
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3793
    const/4 v1, 0x0

    if-nez p1, :cond_f

    move-object v2, v1

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 3794
    if-nez p2, :cond_19

    goto :goto_1d

    :cond_19
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 3796
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3798
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_25
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3799
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3800
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_38

    .line 3802
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3803
    nop

    .line 3804
    return-void

    .line 3802
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3803
    throw v2
.end method

.method public setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;)V
    .registers 8
    .param p1, "sublockResp"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;
    .param p2, "sublockInd"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3199
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3200
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3201
    const/4 v1, 0x0

    if-nez p1, :cond_f

    move-object v2, v1

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 3202
    if-nez p2, :cond_19

    goto :goto_1d

    :cond_19
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 3204
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3206
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_25
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3207
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_35

    .line 3209
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3210
    nop

    .line 3211
    return-void

    .line 3209
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3210
    throw v2
.end method

.method public setResumeRegistration(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2059
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2060
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2062
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2064
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2066
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x69

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2067
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2069
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2070
    nop

    .line 2071
    return-void

    .line 2069
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2070
    throw v2
.end method

.method public setRoamingEnable(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    .local p2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 799
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 801
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 803
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 805
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 806
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 808
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 809
    nop

    .line 810
    return-void

    .line 808
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 809
    throw v2
.end method

.method public setRttMode(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3269
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3270
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3271
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3272
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3274
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3276
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xad

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3277
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3279
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3280
    nop

    .line 3281
    return-void

    .line 3279
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3280
    throw v2
.end method

.method public setRxTestConfig(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "antType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2427
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2428
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2429
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2430
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2432
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2434
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2435
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2437
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2438
    nop

    .line 2439
    return-void

    .line 2437
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2438
    throw v2
.end method

.method public setSearchRat(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2393
    .local p2, "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2394
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2396
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2398
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2400
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2401
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2403
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2404
    nop

    .line 2405
    return-void

    .line 2403
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2404
    throw v2
.end method

.method public setSearchStoredFreqInfo(IIIILjava/util/ArrayList;)V
    .registers 11
    .param p1, "serial"    # I
    .param p2, "operation"    # I
    .param p3, "plmn_id"    # I
    .param p4, "rat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2373
    .local p5, "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2374
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2375
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2376
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2377
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2378
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2379
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2381
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2383
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1e
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2384
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 2386
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2387
    nop

    .line 2388
    return-void

    .line 2386
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2387
    throw v2
.end method

.method public setServiceStateToModem(IIIIIII)V
    .registers 13
    .param p1, "serial"    # I
    .param p2, "voiceRegState"    # I
    .param p3, "dataRegState"    # I
    .param p4, "voiceRoamingType"    # I
    .param p5, "dataRoamingType"    # I
    .param p6, "rilVoiceRegState"    # I
    .param p7, "rilDataRegState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2261
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2262
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2263
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2264
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2265
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2266
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2267
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2268
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2269
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2271
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2273
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_24
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x75

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2274
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_34

    .line 2276
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2277
    nop

    .line 2278
    return-void

    .line 2276
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2277
    throw v2
.end method

.method public setSimPower(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1661
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1662
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1664
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1666
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1668
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x52

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1669
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1671
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1672
    nop

    .line 1673
    return-void

    .line 1671
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1672
    throw v2
.end method

.method public setSipHeader(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3441
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3442
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3443
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3444
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3446
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3448
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3449
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3451
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3452
    nop

    .line 3453
    return-void

    .line 3451
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3452
    throw v2
.end method

.method public setSipHeaderReport(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3458
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3459
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3460
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3461
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3463
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3465
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3466
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3468
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3469
    nop

    .line 3470
    return-void

    .line 3468
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3469
    throw v2
.end method

.method public setSmartSceneSwitch(IIII)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "tGear"    # I
    .param p4, "lGear"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3844
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3845
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3846
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3847
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3848
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3849
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3851
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3853
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xce

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3854
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 3856
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3857
    nop

    .line 3858
    return-void

    .line 3856
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3857
    throw v2
.end method

.method public setSmsParameters(ILvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "message"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1856
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1857
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1859
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1861
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1863
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1864
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1866
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1867
    nop

    .line 1868
    return-void

    .line 1866
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1867
    throw v2
.end method

.method public setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3129
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3130
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3131
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3132
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3133
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3135
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3137
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3138
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3140
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3141
    nop

    .line 3142
    return-void

    .line 3140
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3141
    throw v2
.end method

.method public setTm9Enabled(IZZ)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "fddOrTdd"    # Z
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4351
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 4352
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4353
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4354
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4355
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 4357
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 4359
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xeb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 4360
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 4362
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4363
    nop

    .line 4364
    return-void

    .line 4362
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 4363
    throw v2
.end method

.method public setTrm(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2531
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2532
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2533
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2534
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2536
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2538
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x84

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2539
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2541
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2542
    nop

    .line 2543
    return-void

    .line 2541
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2542
    throw v2
.end method

.method public setTxPower(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "limitpower"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2356
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2357
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2359
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2361
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2363
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2364
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2366
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2367
    nop

    .line 2368
    return-void

    .line 2366
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2367
    throw v2
.end method

.method public setTxPowerStatus(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3112
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3113
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3114
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3115
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3117
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3119
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3120
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3122
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3123
    nop

    .line 3124
    return-void

    .line 3122
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3123
    throw v2
.end method

.method public setVendorSetting(IILjava/lang/String;)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "setting"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3251
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3252
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3253
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3254
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3255
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3257
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3259
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xac

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3260
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3262
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3263
    nop

    .line 3264
    return-void

    .line 3262
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3263
    throw v2
.end method

.method public setVoiceDomainPreference(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "vdp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2666
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2667
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2668
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2669
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2671
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2673
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2674
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2676
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2677
    nop

    .line 2678
    return-void

    .line 2676
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2677
    throw v2
.end method

.method public setVoicePreferStatus(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1161
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1162
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1164
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1166
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1168
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x35

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1169
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1171
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1172
    nop

    .line 1173
    return-void

    .line 1171
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1172
    throw v2
.end method

.method public setWfcConfig(IILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "setting"    # I
    .param p3, "ifName"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2767
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2768
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2769
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2770
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2771
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2772
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2774
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2776
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x91

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2777
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 2779
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2780
    nop

    .line 2781
    return-void

    .line 2779
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2780
    throw v2
.end method

.method public setWfcProfile(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "wfcPreference"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 589
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 591
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 593
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 595
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 596
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 598
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 599
    nop

    .line 600
    return-void

    .line 598
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 599
    throw v2
.end method

.method public setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13
    .param p1, "serial"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "associated"    # I
    .param p4, "ssid"    # Ljava/lang/String;
    .param p5, "apMac"    # Ljava/lang/String;
    .param p6, "mtuSize"    # I
    .param p7, "ueMac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2702
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2703
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2704
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2705
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2706
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2707
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2708
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2709
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2710
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2712
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2714
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_24
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2715
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_34

    .line 2717
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2718
    nop

    .line 2719
    return-void

    .line 2717
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2718
    throw v2
.end method

.method public setWifiEnabled(ILjava/lang/String;II)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "isWifiEnabled"    # I
    .param p4, "isFlightModeOn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2683
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2684
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2685
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2686
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2687
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2688
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2690
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2692
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2693
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 2695
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2696
    nop

    .line 2697
    return-void

    .line 2695
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2696
    throw v2
.end method

.method public setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16
    .param p1, "serial"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "ipv4Addr"    # Ljava/lang/String;
    .param p4, "ipv6Addr"    # Ljava/lang/String;
    .param p5, "ipv4PrefixLen"    # I
    .param p6, "ipv6PrefixLen"    # I
    .param p7, "ipv4Gateway"    # Ljava/lang/String;
    .param p8, "ipv6Gateway"    # Ljava/lang/String;
    .param p9, "dnsCount"    # I
    .param p10, "dnsServers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2742
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2743
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2744
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2745
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2746
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2747
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2748
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2749
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2750
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2751
    invoke-virtual {v0, p8}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2752
    invoke-virtual {v0, p9}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2753
    invoke-virtual {v0, p10}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2755
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2757
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_2d
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x90

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2758
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_3d

    .line 2760
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2761
    nop

    .line 2762
    return-void

    .line 2760
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2761
    throw v2
.end method

.method public setWifiPingResult(IIII)V
    .registers 10
    .param p1, "serial"    # I
    .param p2, "rat"    # I
    .param p3, "latency"    # I
    .param p4, "pktloss"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2868
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2869
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2870
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2871
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2872
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2873
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2875
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2877
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1b
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x96

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2878
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 2880
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2881
    nop

    .line 2882
    return-void

    .line 2880
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2881
    throw v2
.end method

.method public setWifiSignalLevel(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "rssi"    # I
    .param p3, "snr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2724
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2725
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2726
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2727
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2728
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2730
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2732
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2733
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2735
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2736
    nop

    .line 2737
    return-void

    .line 2735
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2736
    throw v2
.end method

.method public setupXcapUserAgentString(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1071
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1072
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1074
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1076
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1078
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x30

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1079
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1081
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1082
    nop

    .line 1083
    return-void

    .line 1081
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1082
    throw v2
.end method

.method public smartRatSwitch(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "rat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3809
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3810
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3811
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3812
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3813
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3815
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3817
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3818
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3820
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3821
    nop

    .line 3822
    return-void

    .line 3820
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3821
    throw v2
.end method

.method public supplyDepersonalization(ILjava/lang/String;I)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "netPin"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1782
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1783
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1784
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1785
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1788
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1790
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x59

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1791
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1793
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1794
    nop

    .line 1795
    return-void

    .line 1793
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1794
    throw v2
.end method

.method public supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3147
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3148
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3149
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3150
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3152
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3154
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3155
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3157
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3158
    nop

    .line 3159
    return-void

    .line 3157
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3158
    throw v2
.end method

.method public syncDataSettingsToMd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2615
    .local p2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2616
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2617
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2618
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2620
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2622
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x89

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2623
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2625
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2626
    nop

    .line 2627
    return-void

    .line 2625
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2626
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 228
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 229
    :catch_16
    move-exception v0

    .line 232
    const-string v0, "[class or subclass of vendor.mediatek.hardware.mtkradioex@2.5::IMtkRadioEx]@Proxy"

    return-object v0
.end method

.method public toggleRttAudioIndication(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "audio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3341
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3342
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3343
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3344
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3345
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3347
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3349
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3350
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 3352
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3353
    nop

    .line 3354
    return-void

    .line 3352
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3353
    throw v2
.end method

.method public triggerModeSwitchByEcc(II)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1612
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1613
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1615
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1617
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1619
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1620
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1622
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1623
    nop

    .line 1624
    return-void

    .line 1622
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1623
    throw v2
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4604
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public videoCallAccept(III)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "videoMode"    # I
    .param p3, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 407
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 409
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 410
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 412
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 414
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 415
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 417
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 418
    nop

    .line 419
    return-void

    .line 417
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 418
    throw v2
.end method

.method public videoRingtoneEventRequest(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3980
    .local p2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3981
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.2::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3982
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 3983
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3985
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3987
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3988
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 3990
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3991
    nop

    .line 3992
    return-void

    .line 3990
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3991
    throw v2
.end method

.method public vtDial(ILandroid/hardware/radio/V1_0/Dial;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "dialInfo"    # Landroid/hardware/radio/V1_0/Dial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 676
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 678
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/Dial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 680
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 682
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 683
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 685
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 686
    nop

    .line 687
    return-void

    .line 685
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 686
    throw v2
.end method

.method public vtDialWithSipUri(ILjava/lang/String;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 659
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 661
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 663
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 665
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x18

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 666
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 668
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 669
    nop

    .line 670
    return-void

    .line 668
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 669
    throw v2
.end method

.method public writePhbEntry(ILvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "phbEntry"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1262
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1263
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1265
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1267
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1269
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1270
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1272
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1273
    nop

    .line 1274
    return-void

    .line 1272
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1273
    throw v2
.end method

.method public writePhoneBookEntryExt(ILvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;)V
    .registers 8
    .param p1, "serial"    # I
    .param p2, "phbEntryExt"    # Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1471
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1472
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1474
    invoke-virtual {p2, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1476
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1478
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_15
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x47

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1479
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1481
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1482
    nop

    .line 1483
    return-void

    .line 1481
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1482
    throw v2
.end method

.method public writeUPBGrpEntry(IILjava/util/ArrayList;)V
    .registers 9
    .param p1, "serial"    # I
    .param p2, "adnIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1385
    .local p3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1386
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1388
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1389
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 1391
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1393
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_18
    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x42

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1394
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1396
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1397
    nop

    .line 1398
    return-void

    .line 1396
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1397
    throw v2
.end method

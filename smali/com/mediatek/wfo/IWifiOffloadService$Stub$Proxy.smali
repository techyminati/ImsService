.class Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWifiOffloadService.java"

# interfaces
.implements Lcom/mediatek/wfo/IWifiOffloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/IWifiOffloadService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/wfo/IWifiOffloadService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 235
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public factoryReset()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 477
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 479
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 480
    iget-object v2, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 481
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 482
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 483
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/wfo/IWifiOffloadService;->factoryReset()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    return-void

    .line 487
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 490
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 492
    nop

    .line 493
    return-void

    .line 490
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 492
    throw v2
.end method

.method public getDisconnectCause(I)Lcom/mediatek/wfo/DisconnectCause;
    .registers 7
    .param p1, "simIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 312
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 315
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v2, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 318
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 319
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 320
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/wfo/IWifiOffloadService;->getDisconnectCause(I)Lcom/mediatek/wfo/DisconnectCause;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_4a

    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    return-object v3

    .line 323
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_41

    .line 325
    sget-object v3, Lcom/mediatek/wfo/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/wfo/DisconnectCause;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_4a

    .local v3, "_result":Lcom/mediatek/wfo/DisconnectCause;
    goto :goto_42

    .line 328
    .end local v3    # "_result":Lcom/mediatek/wfo/DisconnectCause;
    :cond_41
    const/4 v3, 0x0

    .line 332
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/mediatek/wfo/DisconnectCause;
    :goto_42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    nop

    .line 335
    return-object v3

    .line 332
    .end local v3    # "_result":Lcom/mediatek/wfo/DisconnectCause;
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 242
    const-string v0, "com.mediatek.wfo.IWifiOffloadService"

    return-object v0
.end method

.method public getMccMncAllowList(I)[Ljava/lang/String;
    .registers 7
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 454
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget-object v2, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 460
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 461
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 462
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/wfo/IWifiOffloadService;->getMccMncAllowList(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    return-object v3

    .line 465
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 469
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    nop

    .line 472
    return-object v2

    .line 469
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    throw v2
.end method

.method public getRatType(I)I
    .registers 7
    .param p1, "simIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 292
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v2, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 295
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 296
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 297
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/wfo/IWifiOffloadService;->getRatType(I)I

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 297
    return v3

    .line 300
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 301
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move v2, v3

    .line 304
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    nop

    .line 307
    return v2

    .line 304
    .end local v2    # "_result":I
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    throw v2
.end method

.method public isWifiConnected()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 387
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 392
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 393
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 394
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/wfo/IWifiOffloadService;->isWifiConnected()Z

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3f

    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 394
    return v3

    .line 397
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3f

    if-eqz v3, :cond_36

    const/4 v4, 0x1

    :cond_36
    move v2, v4

    .line 401
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 403
    nop

    .line 404
    return v2

    .line 401
    .end local v2    # "_result":Z
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 403
    throw v2
.end method

.method public registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/mediatek/wfo/IWifiOffloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 247
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 249
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 250
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/wfo/IWifiOffloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 251
    iget-object v2, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 252
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 253
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 254
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    return-void

    .line 258
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 261
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    nop

    .line 264
    return-void

    .line 261
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw v2
.end method

.method public setEpdgFqdn(ILjava/lang/String;Z)V
    .registers 9
    .param p1, "simIdx"    # I
    .param p2, "fqdn"    # Ljava/lang/String;
    .param p3, "wfcEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    const/4 v2, 0x0

    if-eqz p3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    move v3, v2

    :goto_19
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-object v3, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 347
    .local v2, "_status":Z
    if-nez v2, :cond_39

    .line 348
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 349
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/wfo/IWifiOffloadService;->setEpdgFqdn(ILjava/lang/String;Z)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 350
    return-void

    .line 353
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 356
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 358
    nop

    .line 359
    return-void

    .line 356
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 358
    throw v2
.end method

.method public setMccMncAllowList([Ljava/lang/String;)Z
    .registers 7
    .param p1, "allowList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 431
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 434
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 437
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 438
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 439
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/wfo/IWifiOffloadService;->setMccMncAllowList([Ljava/lang/String;)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 439
    return v3

    .line 442
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 446
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    nop

    .line 449
    return v2

    .line 446
    .end local v2    # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    throw v2
.end method

.method public setWifiOff()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 497
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 500
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 501
    iget-object v2, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 502
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 503
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 504
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/wfo/IWifiOffloadService;->setWifiOff()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 504
    return v3

    .line 507
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_40

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    :cond_37
    move v2, v4

    .line 511
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    nop

    .line 514
    return v2

    .line 511
    .end local v2    # "_result":Z
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    throw v2
.end method

.method public unregisterForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/mediatek/wfo/IWifiOffloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 268
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 270
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 271
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/wfo/IWifiOffloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 272
    iget-object v2, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 273
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 274
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 275
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/wfo/IWifiOffloadService;->unregisterForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 276
    return-void

    .line 279
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 282
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    nop

    .line 285
    return-void

    .line 282
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    throw v2
.end method

.method public updateCallState(IIII)V
    .registers 10
    .param p1, "simIdx"    # I
    .param p2, "callId"    # I
    .param p3, "callType"    # I
    .param p4, "callState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 363
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget-object v2, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 371
    .local v2, "_status":Z
    if-nez v2, :cond_37

    .line 372
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 373
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/wfo/IWifiOffloadService;->updateCallState(IIII)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 374
    return-void

    .line 377
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 380
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 382
    nop

    .line 383
    return-void

    .line 380
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 382
    throw v2
.end method

.method public updateRadioState(II)V
    .registers 8
    .param p1, "simIdx"    # I
    .param p2, "radioState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 411
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget-object v2, p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 415
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 416
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 417
    invoke-static {}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/wfo/IWifiOffloadService;->updateRadioState(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    return-void

    .line 421
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 424
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    nop

    .line 427
    return-void

    .line 424
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    throw v2
.end method

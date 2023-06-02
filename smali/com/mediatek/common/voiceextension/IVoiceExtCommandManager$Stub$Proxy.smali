.class Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceExtCommandManager.java"

# interfaces
.implements Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 246
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public createCommandSet(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 261
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 264
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 265
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 266
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->createCommandSet(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    return v3

    .line 269
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 273
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    nop

    .line 276
    return v2

    .line 273
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    throw v2
.end method

.method public deleteCommandSet(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 326
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 329
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 332
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 333
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 334
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->deleteCommandSet(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    return v3

    .line 337
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 341
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    nop

    .line 344
    return v2

    .line 341
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    throw v2
.end method

.method public getCommandSetSelected()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 307
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 309
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 310
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 311
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->getCommandSetSelected()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    return-object v3

    .line 314
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 318
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    nop

    .line 321
    return-object v2

    .line 318
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    throw v2
.end method

.method public getCommandSets()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 467
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 470
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 472
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 473
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 474
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->getCommandSets()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    return-object v3

    .line 477
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 481
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    nop

    .line 484
    return-object v2

    .line 481
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    throw v2
.end method

.method public getCommands()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 445
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 448
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 450
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 451
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 452
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->getCommands()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 452
    return-object v3

    .line 455
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 459
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    nop

    .line 462
    return-object v2

    .line 459
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 253
    const-string v0, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    return-object v0
.end method

.method public isCommandSetCreated(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 281
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 287
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 288
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 289
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->isCommandSetCreated(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 289
    return v3

    .line 292
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 296
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 298
    nop

    .line 299
    return v2

    .line 296
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 298
    throw v2
.end method

.method public pauseRecognition()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 529
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 531
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 532
    iget-object v2, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 533
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 534
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 535
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->pauseRecognition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 536
    return-void

    .line 539
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    nop

    .line 545
    return-void

    .line 542
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw v2
.end method

.method public registerListener(Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 422
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 425
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 426
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 427
    iget-object v2, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 428
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 429
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 430
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->registerListener(Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 430
    return v3

    .line 433
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 437
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 439
    nop

    .line 440
    return v2

    .line 437
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 439
    throw v2
.end method

.method public resumeRecognition()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 549
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 551
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 552
    iget-object v2, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 553
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 554
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 555
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->resumeRecognition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 556
    return-void

    .line 559
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 564
    nop

    .line 565
    return-void

    .line 562
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 564
    throw v2
.end method

.method public selectCurrentCommandSet(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 355
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 356
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 357
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->selectCurrentCommandSet(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    return v3

    .line 360
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 364
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 366
    nop

    .line 367
    return v2

    .line 364
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 366
    throw v2
.end method

.method public setCommandsFile(Landroid/os/ParcelFileDescriptor;II)V
    .locals 5
    .param p1, "pFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 393
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 395
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 396
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 397
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 401
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget-object v3, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 406
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 407
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 408
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->setCommandsFile(Landroid/os/ParcelFileDescriptor;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 409
    return-void

    .line 412
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 417
    nop

    .line 418
    return-void

    .line 415
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 417
    throw v2
.end method

.method public setCommandsStrArray([Ljava/lang/String;)V
    .locals 5
    .param p1, "commands"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 372
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 374
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 377
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 378
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 379
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->setCommandsStrArray([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 380
    return-void

    .line 383
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    nop

    .line 389
    return-void

    .line 386
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw v2
.end method

.method public startRecognition()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 489
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 491
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 493
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 494
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 495
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->startRecognition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    return-void

    .line 499
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 504
    nop

    .line 505
    return-void

    .line 502
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 504
    throw v2
.end method

.method public stopRecognition()V
    .locals 5
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

    .line 511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 513
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 514
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 515
    invoke-static {}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->stopRecognition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 516
    return-void

    .line 519
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 524
    nop

    .line 525
    return-void

    .line 522
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 524
    throw v2
.end method

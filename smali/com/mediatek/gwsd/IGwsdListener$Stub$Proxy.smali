.class Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGwsdListener.java"

# interfaces
.implements Lcom/mediatek/gwsd/IGwsdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gwsd/IGwsdListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/gwsd/IGwsdListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 199
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 206
    const-string v0, "com.mediatek.gwsd.IGwsdListener"

    return-object v0
.end method

.method public onAddListenered(ILjava/lang/String;)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 218
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.gwsd.IGwsdListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 222
    .local v2, "_status":Z
    if-nez v2, :cond_31

    .line 223
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 224
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/gwsd/IGwsdListener;->onAddListenered(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    return-void

    .line 228
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 231
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    nop

    .line 234
    return-void

    .line 231
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    throw v2
.end method

.method public onAutoRejectModeChanged(ILjava/lang/String;)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.gwsd.IGwsdListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 276
    .local v2, "_status":Z
    if-nez v2, :cond_31

    .line 277
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 278
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/gwsd/IGwsdListener;->onAutoRejectModeChanged(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 279
    return-void

    .line 282
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 285
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    nop

    .line 288
    return-void

    .line 285
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    throw v2
.end method

.method public onCallValidTimerChanged(ILjava/lang/String;)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.gwsd.IGwsdListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 357
    .local v2, "_status":Z
    if-nez v2, :cond_31

    .line 358
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 359
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/gwsd/IGwsdListener;->onCallValidTimerChanged(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 360
    return-void

    .line 363
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 366
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 368
    nop

    .line 369
    return-void

    .line 366
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 368
    throw v2
.end method

.method public onIgnoreSameNumberIntervalChanged(ILjava/lang/String;)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 378
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.gwsd.IGwsdListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 384
    .local v2, "_status":Z
    if-nez v2, :cond_31

    .line 385
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 386
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/gwsd/IGwsdListener;->onIgnoreSameNumberIntervalChanged(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 387
    return-void

    .line 390
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 393
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    nop

    .line 396
    return-void

    .line 393
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    throw v2
.end method

.method public onSyncGwsdInfoFinished(ILjava/lang/String;)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.gwsd.IGwsdListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 303
    .local v2, "_status":Z
    if-nez v2, :cond_31

    .line 304
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 305
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/gwsd/IGwsdListener;->onSyncGwsdInfoFinished(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    return-void

    .line 309
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 312
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    nop

    .line 315
    return-void

    .line 312
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw v2
.end method

.method public onSystemStateChanged(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 325
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 327
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.gwsd.IGwsdListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-object v2, p0, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 330
    .local v2, "_status":Z
    if-nez v2, :cond_2e

    .line 331
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 332
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/gwsd/IGwsdListener;->onSystemStateChanged(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 333
    return-void

    .line 336
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 339
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    nop

    .line 342
    return-void

    .line 339
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    throw v2
.end method

.method public onUserSelectionModeChanged(ILjava/lang/String;)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 245
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.gwsd.IGwsdListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/mediatek/gwsd/IGwsdListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 249
    .local v2, "_status":Z
    if-nez v2, :cond_31

    .line 250
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 251
    invoke-static {}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->getDefaultImpl()Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/gwsd/IGwsdListener;->onUserSelectionModeChanged(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    return-void

    .line 255
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 258
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    nop

    .line 261
    return-void

    .line 258
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    throw v2
.end method

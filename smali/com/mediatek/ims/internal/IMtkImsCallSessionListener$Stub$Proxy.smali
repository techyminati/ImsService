.class Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkImsCallSessionListener.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 223
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public callSessionBusy(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .registers 7
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 382
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 384
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 386
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 387
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 388
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 389
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionBusy(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 390
    return-void

    .line 393
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 396
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 398
    nop

    .line 399
    return-void

    .line 396
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 398
    throw v2
.end method

.method public callSessionCalling(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .registers 7
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 403
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 405
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 406
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 407
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 408
    .local v2, "_status":Z
    if-nez v2, :cond_37

    .line 409
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 410
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionCalling(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    return-void

    .line 414
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 417
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    nop

    .line 420
    return-void

    .line 417
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    throw v2
.end method

.method public callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .registers 7
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 313
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 314
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 315
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 316
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 317
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 318
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 319
    return-void

    .line 322
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 325
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    nop

    .line 328
    return-void

    .line 325
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    throw v2
.end method

.method public callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 9
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "newSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 282
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 285
    const/4 v2, 0x0

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_16

    :cond_15
    move-object v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 286
    if-eqz p2, :cond_1f

    invoke-interface {p2}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_1f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 287
    const/4 v2, 0x0

    if-eqz p3, :cond_2d

    .line 288
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    invoke-virtual {p3, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_30

    .line 292
    :cond_2d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    :goto_30
    iget-object v3, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 295
    .local v2, "_status":Z
    if-nez v2, :cond_4d

    .line 296
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 297
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_58

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 298
    return-void

    .line 301
    :cond_4d
    :try_start_4d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_58

    .line 304
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    nop

    .line 307
    return-void

    .line 304
    :catchall_58
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    throw v2
.end method

.method public callSessionNotificationRingtoneReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V
    .registers 9
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "causeNum"    # I
    .param p3, "causeText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 447
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 451
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 454
    .local v2, "_status":Z
    if-nez v2, :cond_3d

    .line 455
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 456
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionNotificationRingtoneReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_48

    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 457
    return-void

    .line 460
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_48

    .line 463
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    nop

    .line 466
    return-void

    .line 463
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    throw v2
.end method

.method public callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;Z)V
    .registers 8
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "isNeedUserConfirm"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 332
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 335
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 336
    const/4 v2, 0x0

    if-eqz p2, :cond_1d

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1d
    move v3, v2

    :goto_1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-object v3, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 338
    .local v2, "_status":Z
    if-nez v2, :cond_3e

    .line 339
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 340
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;Z)V
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_49

    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    return-void

    .line 344
    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_49

    .line 347
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    nop

    .line 350
    return-void

    .line 347
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    throw v2
.end method

.method public callSessionRinging(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 8
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 356
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 357
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 358
    const/4 v2, 0x0

    if-eqz p2, :cond_23

    .line 359
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    invoke-virtual {p2, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    .line 363
    :cond_23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    :goto_26
    iget-object v3, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 366
    .local v2, "_status":Z
    if-nez v2, :cond_43

    .line 367
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 368
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionRinging(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_4e

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    return-void

    .line 372
    :cond_43
    :try_start_43
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4e

    .line 375
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    nop

    .line 378
    return-void

    .line 375
    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    throw v2
.end method

.method public callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V
    .registers 8
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 260
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 264
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 266
    .local v2, "_status":Z
    if-nez v2, :cond_39

    .line 267
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 268
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    return-void

    .line 272
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 275
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    nop

    .line 278
    return-void

    .line 275
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    throw v2
.end method

.method public callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V
    .registers 16
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "localCapability"    # I
    .param p3, "remoteCapability"    # I
    .param p4, "localTextStatus"    # I
    .param p5, "realRemoteCapability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 239
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 244
    .local v2, "_status":Z
    if-nez v2, :cond_47

    .line 245
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 246
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_52

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    return-void

    .line 250
    :cond_47
    :try_start_47
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_52

    .line 253
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    nop

    .line 256
    return-void

    .line 253
    :catchall_52
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    throw v2
.end method

.method public callSessionVideoRingtoneEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V
    .registers 9
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "eventType"    # I
    .param p3, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 424
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 426
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 427
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 428
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 431
    .local v2, "_status":Z
    if-nez v2, :cond_3d

    .line 432
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 433
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionVideoRingtoneEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_48

    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    return-void

    .line 437
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_48

    .line 440
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 442
    nop

    .line 443
    return-void

    .line 440
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 442
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 230
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    return-object v0
.end method

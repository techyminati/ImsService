.class Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;
.super Landroid/bluetooth/IBluetoothTbsCallback$Stub;
.source "BluetoothTbs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/BluetoothTbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lcom/mediatek/bt/BluetoothTbs;


# direct methods
.method constructor <init>(Lcom/mediatek/bt/BluetoothTbs;Ljava/util/concurrent/Executor;Lcom/mediatek/bt/BluetoothTbs$Callback;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Lcom/mediatek/bt/BluetoothTbs$Callback;

    .line 368
    iput-object p1, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothTbsCallback$Stub;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 370
    iput-object p3, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    .line 371
    return-void
.end method


# virtual methods
.method public synthetic lambda$onAcceptCall$0$BluetoothTbs$CallbackWrapper(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 396
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/bt/BluetoothTbs$Callback;->onAcceptCall(ILjava/util/UUID;)V

    return-void
.end method

.method public synthetic lambda$onHoldCall$2$BluetoothTbs$CallbackWrapper(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 414
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/bt/BluetoothTbs$Callback;->onHoldCall(ILjava/util/UUID;)V

    return-void
.end method

.method public synthetic lambda$onJoinCalls$5$BluetoothTbs$CallbackWrapper(ILjava/util/List;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "uuids"    # Ljava/util/List;

    .line 446
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/bt/BluetoothTbs$Callback;->onJoinCalls(ILjava/util/List;)V

    return-void
.end method

.method public synthetic lambda$onPlaceCall$4$BluetoothTbs$CallbackWrapper(ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "uri"    # Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/mediatek/bt/BluetoothTbs$Callback;->onPlaceCall(ILjava/util/UUID;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onTerminateCall$1$BluetoothTbs$CallbackWrapper(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 405
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/bt/BluetoothTbs$Callback;->onTerminateCall(ILjava/util/UUID;)V

    return-void
.end method

.method public synthetic lambda$onUnholdCall$3$BluetoothTbs$CallbackWrapper(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 423
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/bt/BluetoothTbs$Callback;->onUnholdCall(ILjava/util/UUID;)V

    return-void
.end method

.method public onAcceptCall(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAcceptCall(): requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->clearCallingIdentity()J

    .line 396
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method

.method public onBearerRegistered(I)V
    .registers 5
    .param p1, "ccid"    # I

    .line 376
    const-string v0, "BluetoothTbs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBearerRegistered(): ccid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # getter for: Lcom/mediatek/bt/BluetoothTbs;->mServerIfLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->access$000(Lcom/mediatek/bt/BluetoothTbs;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 379
    :try_start_1d
    iget-object v1, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mCallback:Lcom/mediatek/bt/BluetoothTbs$Callback;

    if-eqz v1, :cond_37

    .line 380
    iget-object v1, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # setter for: Lcom/mediatek/bt/BluetoothTbs;->mCcid:I
    invoke-static {v1, p1}, Lcom/mediatek/bt/BluetoothTbs;->access$102(Lcom/mediatek/bt/BluetoothTbs;I)I

    .line 381
    const-string v1, "BluetoothTbs"

    const-string v2, "onBearerRegistered(): notifyAll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # getter for: Lcom/mediatek/bt/BluetoothTbs;->mServerIfLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/bt/BluetoothTbs;->access$000(Lcom/mediatek/bt/BluetoothTbs;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3e

    .line 385
    :cond_37
    const-string v1, "BluetoothTbs"

    const-string v2, "onBearerRegistered: mCallback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_3e
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_40

    throw v1
.end method

.method public onHoldCall(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHoldCall(): requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->clearCallingIdentity()J

    .line 414
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method public onJoinCalls(ILjava/util/List;)V
    .registers 7
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation

    .line 438
    .local p2, "parcelUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJoinCalls(): requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v0, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 442
    .local v2, "parcelUuid":Landroid/os/ParcelUuid;
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v2    # "parcelUuid":Landroid/os/ParcelUuid;
    goto :goto_1f

    .line 445
    :cond_33
    invoke-static {}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->clearCallingIdentity()J

    .line 446
    iget-object v1, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v0}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda5;-><init>(Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;ILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method public onPlaceCall(ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "uri"    # Ljava/lang/String;

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaceCall(): requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->clearCallingIdentity()J

    .line 432
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 433
    return-void
.end method

.method public onTerminateCall(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTerminateCall(): requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->clearCallingIdentity()J

    .line 405
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 406
    return-void
.end method

.method public onUnholdCall(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnholdCall(): requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-static {}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->clearCallingIdentity()J

    .line 423
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/mediatek/bt/BluetoothTbs$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 424
    return-void
.end method

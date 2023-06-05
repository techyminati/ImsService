.class Lcom/android/ims/MmTelFeatureConnection$1;
.super Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/MmTelFeatureConnection;


# direct methods
.method constructor <init>(Lcom/android/ims/MmTelFeatureConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/MmTelFeatureConnection;

    .line 503
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public imsFeatureCreated(II)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "feature"    # I

    .line 507
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$800(Lcom/android/ims/MmTelFeatureConnection;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$2oMo1vy7PK7RvBpj3WhQvVVnmLE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$2oMo1vy7PK7RvBpj3WhQvVVnmLE;-><init>(Lcom/android/ims/MmTelFeatureConnection$1;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method

.method public imsFeatureRemoved(II)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "feature"    # I

    .line 534
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$800(Lcom/android/ims/MmTelFeatureConnection;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$8CiyUe8f9BLYf-Cda-Du6JpOa_8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$8CiyUe8f9BLYf-Cda-Du6JpOa_8;-><init>(Lcom/android/ims/MmTelFeatureConnection$1;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 553
    return-void
.end method

.method public imsStatusChanged(III)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .param p3, "status"    # I

    .line 557
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$800(Lcom/android/ims/MmTelFeatureConnection;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$0SEXZe5KpKdo80CWXCfIl6qWHdQ;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$0SEXZe5KpKdo80CWXCfIl6qWHdQ;-><init>(Lcom/android/ims/MmTelFeatureConnection$1;III)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

.method public synthetic lambda$imsFeatureCreated$0$MmTelFeatureConnection$1(II)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "feature"    # I

    .line 510
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$500(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget v1, v1, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    if-eq v1, p1, :cond_0

    .line 512
    monitor-exit v0

    return-void

    .line 514
    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 516
    :cond_1
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v2}, Lcom/android/ims/MmTelFeatureConnection;->access$1300(Lcom/android/ims/MmTelFeatureConnection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 517
    const-string v2, "MmTelFeatureConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmTel enabled on slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v2, v1}, Lcom/android/ims/MmTelFeatureConnection;->access$1302(Lcom/android/ims/MmTelFeatureConnection;Z)Z

    goto :goto_0

    .line 523
    :cond_2
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v2, v1}, Lcom/android/ims/MmTelFeatureConnection;->access$1202(Lcom/android/ims/MmTelFeatureConnection;Z)Z

    .line 524
    const-string v1, "MmTelFeatureConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency calling enabled on slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_3
    :goto_0
    monitor-exit v0

    .line 529
    return-void

    .line 528
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$imsFeatureRemoved$1$MmTelFeatureConnection$1(II)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "feature"    # I

    .line 535
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$500(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget v1, v1, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    if-eq v1, p1, :cond_0

    .line 537
    monitor-exit v0

    return-void

    .line 539
    :cond_0
    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 541
    :cond_1
    const-string v1, "MmTelFeatureConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmTel removed on slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v1}, Lcom/android/ims/MmTelFeatureConnection;->access$1100(Lcom/android/ims/MmTelFeatureConnection;)V

    .line 543
    goto :goto_0

    .line 546
    :cond_2
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/ims/MmTelFeatureConnection;->access$1202(Lcom/android/ims/MmTelFeatureConnection;Z)Z

    .line 547
    const-string v1, "MmTelFeatureConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency calling disabled on slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_0
    monitor-exit v0

    .line 552
    return-void

    .line 551
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$imsStatusChanged$2$MmTelFeatureConnection$1(III)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .param p3, "status"    # I

    .line 558
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v0}, Lcom/android/ims/MmTelFeatureConnection;->access$500(Lcom/android/ims/MmTelFeatureConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 559
    :try_start_0
    const-string v1, "MmTelFeatureConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsStatusChanged: slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    iget v1, v1, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ims/MmTelFeatureConnection;->access$902(Lcom/android/ims/MmTelFeatureConnection;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 563
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v1}, Lcom/android/ims/MmTelFeatureConnection;->access$1000(Lcom/android/ims/MmTelFeatureConnection;)Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection$1;->this$0:Lcom/android/ims/MmTelFeatureConnection;

    invoke-static {v1}, Lcom/android/ims/MmTelFeatureConnection;->access$1000(Lcom/android/ims/MmTelFeatureConnection;)Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;->notifyStateChanged()V

    .line 567
    :cond_0
    monitor-exit v0

    .line 568
    return-void

    .line 567
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

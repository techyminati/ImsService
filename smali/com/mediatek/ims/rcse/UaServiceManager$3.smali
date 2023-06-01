.class Lcom/mediatek/ims/rcse/UaServiceManager$3;
.super Lcom/mediatek/ims/rcsua/ImsEventCallback;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcse/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcse/UaServiceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcse/UaServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 391
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/ImsEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregStart(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 464
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onDeregStart >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public onDeregistered(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 436
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onDeregistered >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$200(Lcom/mediatek/ims/rcse/UaServiceManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    .line 438
    .local v1, "callback":Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 439
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcse/UaServiceManager$3$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$3$4;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$3;Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 445
    .end local v1    # "callback":Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 446
    :cond_1
    return-void
.end method

.method public onDeregistering(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 422
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onDeregistering >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$200(Lcom/mediatek/ims/rcse/UaServiceManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    .line 424
    .local v1, "callback":Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 425
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcse/UaServiceManager$3$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$3$3;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$3;Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 431
    .end local v1    # "callback":Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 432
    :cond_1
    return-void
.end method

.method public onRegistered(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 409
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onRegistered >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager$3$2;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$3$2;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$3;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 418
    return-void
.end method

.method public onRegistering(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 395
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onRegistering >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$200(Lcom/mediatek/ims/rcse/UaServiceManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    .line 397
    .local v1, "callback":Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 398
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcse/UaServiceManager$3$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$3$1;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$3;Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 404
    .end local v1    # "callback":Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 405
    :cond_1
    return-void
.end method

.method public onReregistered(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 450
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onReregistered >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$200(Lcom/mediatek/ims/rcse/UaServiceManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    .line 452
    .local v1, "callback":Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 453
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcse/UaServiceManager$3$5;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$3$5;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$3;Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    .end local v1    # "callback":Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 460
    :cond_1
    return-void
.end method

.method public onVopsIndication(I)V
    .locals 3
    .param p1, "vops"    # I

    .line 469
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onVopsIndication >> vops["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 470
    return-void
.end method

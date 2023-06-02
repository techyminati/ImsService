.class public Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;
.super Lcom/mediatek/ims/rcsua/ImsEventCallback;
.source "MtkDynamicImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkDynamicImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsEventCallbackExt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkDynamicImsService;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/MtkDynamicImsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/MtkDynamicImsService;

    .line 369
    iput-object p1, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/ImsEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregStart(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregStart mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->access$000(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public onDeregistered(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistered mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->access$000(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public onDeregistering(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistering mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->access$000(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public onRegistered(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 377
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->getUpdateRcsFeatureTagState()Z

    move-result v0

    .line 378
    .local v0, "state":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/MtkDynamicImsService;->access$000(Ljava/lang/String;)V

    .line 379
    if-nez v0, :cond_0

    .line 380
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    invoke-static {v1}, Lcom/mediatek/ims/MtkDynamicImsService;->access$100(Lcom/mediatek/ims/MtkDynamicImsService;)V

    .line 382
    :cond_0
    return-void
.end method

.method public onRegistering(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistering mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->access$000(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public onReregistered(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReregistered mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->access$000(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->access$100(Lcom/mediatek/ims/MtkDynamicImsService;)V

    .line 398
    return-void
.end method

.method public onVopsIndication(I)V
    .locals 2
    .param p1, "vops"    # I

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVopsIndication:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->access$000(Ljava/lang/String;)V

    .line 408
    return-void
.end method

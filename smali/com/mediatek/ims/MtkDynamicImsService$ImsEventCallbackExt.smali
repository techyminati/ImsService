.class public Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;
.super Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
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
.method public constructor <init>(Lcom/mediatek/ims/MtkDynamicImsService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/MtkDynamicImsService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 378
    iput-object p1, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    .line 379
    invoke-direct {p0, p2}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;-><init>(Landroid/os/Handler;)V

    .line 380
    return-void
.end method


# virtual methods
.method public onDeregistered(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 399
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v0

    .line 400
    .local v0, "uaMgr":Lcom/mediatek/ims/rcse/UaServiceManager;
    if-eqz v0, :cond_0

    .line 401
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/MtkDynamicImsService;->access$100(Lcom/mediatek/ims/MtkDynamicImsService;IZ)V

    .line 405
    :cond_0
    return-void
.end method

.method public onRegistered(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 384
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v0

    .line 385
    .local v0, "uaMgr":Lcom/mediatek/ims/rcse/UaServiceManager;
    if-eqz v0, :cond_2

    .line 386
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 387
    invoke-virtual {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->getUpdateRcsFeatureTagState()Z

    move-result v1

    .line 388
    .local v1, "state":Z
    if-nez v1, :cond_0

    .line 389
    iget-object v2, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    invoke-static {v2}, Lcom/mediatek/ims/MtkDynamicImsService;->access$000(Lcom/mediatek/ims/MtkDynamicImsService;)V

    .line 391
    .end local v1    # "state":Z
    :cond_0
    goto :goto_0

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/mediatek/ims/MtkDynamicImsService;->access$100(Lcom/mediatek/ims/MtkDynamicImsService;IZ)V

    .line 395
    :cond_2
    :goto_0
    return-void
.end method

.method public onReregistered(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 409
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/MtkDynamicImsService;

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->access$000(Lcom/mediatek/ims/MtkDynamicImsService;)V

    .line 410
    return-void
.end method

.class Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;
.super Lcom/android/ims/ImsConfigListener$Stub;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CfgListener"
.end annotation


# instance fields
.field mPhoneId:I

.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V
    .registers 3
    .param p2, "phoneId"    # I

    .line 367
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    invoke-direct {p0}, Lcom/android/ims/ImsConfigListener$Stub;-><init>()V

    .line 368
    iput p2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->mPhoneId:I

    .line 369
    return-void
.end method


# virtual methods
.method protected fetchFeatureValue(II)V
    .registers 9
    .param p1, "feature"    # I
    .param p2, "value"    # I

    .line 372
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_6

    .line 373
    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 375
    .local v2, "isEnable":Z
    :goto_7
    const-string v3, "persist.vendor.mims_support"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 376
    .local v3, "multiIMSSupportNum":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multiIMSSupportNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WifiOffloadService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    packed-switch p1, :pswitch_data_c4

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetFeatureResponse: unknown feature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void

    .line 399
    :pswitch_3b
    if-le v3, v1, :cond_48

    .line 400
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWfcEnabled:[Z
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$300(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Z

    move-result-object v1

    iget v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->mPhoneId:I

    aput-boolean v2, v1, v4

    goto :goto_5c

    .line 402
    :cond_48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_49
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I
    invoke-static {v4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$100(Lcom/mediatek/wfo/impl/WifiOffloadService;)I

    move-result v4

    if-ge v1, v4, :cond_5c

    .line 403
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWfcEnabled:[Z
    invoke-static {v4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$300(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Z

    move-result-object v4

    aput-boolean v2, v4, v1

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 407
    .end local v1    # "i":I
    :cond_5c
    :goto_5c
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    iget v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->mPhoneId:I

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalWfcSupported(I)V
    invoke-static {v1, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$400(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V

    .line 408
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 409
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->checkIfShowNoInternetError(Z)V
    invoke-static {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$600(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)V

    .line 410
    goto :goto_c2

    .line 389
    :pswitch_7e
    if-le v3, v1, :cond_8b

    .line 390
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVilteEnabled:[Z
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$200(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Z

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->mPhoneId:I

    aput-boolean v2, v0, v1

    goto :goto_c2

    .line 392
    :cond_8b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8c
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$100(Lcom/mediatek/wfo/impl/WifiOffloadService;)I

    move-result v1

    if-ge v0, v1, :cond_9f

    .line 393
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVilteEnabled:[Z
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$200(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 396
    .end local v0    # "i":I
    :cond_9f
    goto :goto_c2

    .line 380
    :pswitch_a0
    if-le v3, v1, :cond_ad

    .line 381
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVolteEnabled:[Z
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$000(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Z

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->mPhoneId:I

    aput-boolean v2, v0, v1

    goto :goto_c2

    .line 383
    :cond_ad
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_ae
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$100(Lcom/mediatek/wfo/impl/WifiOffloadService;)I

    move-result v1

    if-ge v0, v1, :cond_c1

    .line 384
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVolteEnabled:[Z
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$000(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_ae

    .line 387
    .end local v0    # "i":I
    :cond_c1
    nop

    .line 415
    :goto_c2
    return-void

    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_7e
        :pswitch_3b
    .end packed-switch
.end method

.method public onGetFeatureResponse(IIII)V
    .registers 10
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I

    .line 419
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1a

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetFeatureResponse: get feature failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiOffloadService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void

    .line 423
    :cond_1a
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetFeatureResponse: sim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", feature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0, p1, p3}, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->fetchFeatureValue(II)V

    .line 426
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    const/16 v2, 0x14

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;->mPhoneId:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    return-void
.end method

.method public onGetVideoQuality(II)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "quality"    # I

    .line 435
    return-void
.end method

.method public onSetFeatureResponse(IIII)V
    .registers 5
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I

    .line 431
    return-void
.end method

.method public onSetVideoQuality(I)V
    .registers 2
    .param p1, "status"    # I

    .line 439
    return-void
.end method

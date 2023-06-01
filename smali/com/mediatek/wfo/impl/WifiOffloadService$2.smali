.class Lcom/mediatek/wfo/impl/WifiOffloadService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 564
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$2;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 567
    if-eqz p2, :cond_ad

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_ad

    .line 571
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 572
    const-string v0, "item"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 573
    .local v0, "feature":I
    const-string v2, "phone_id"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 574
    .local v1, "phoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecevied IMS feature changed phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiOffloadService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$2;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    const-string v4, "ignore it for invalid SIM id"

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->checkInvalidSimIdx(ILjava/lang/String;)Z
    invoke-static {v2, v1, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1000(Lcom/mediatek/wfo/impl/WifiOffloadService;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    return-void

    .line 578
    :cond_4c
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$2;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mCfgListeners:[Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;
    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2000(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;

    move-result-object v4

    aget-object v4, v4, v1

    const-string v5, "no CfgListener"

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->checkNullObject(Ljava/lang/Object;Ljava/lang/String;)Z
    invoke-static {v2, v4, v5}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2100(Lcom/mediatek/wfo/impl/WifiOffloadService;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    return-void

    .line 580
    :cond_5d
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$2;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2200(Lcom/mediatek/wfo/impl/WifiOffloadService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 581
    .local v2, "imsMgr":Lcom/android/ims/ImsManager;
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$2;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    const-string v5, "can\'t get ImsManager"

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->checkNullObject(Ljava/lang/Object;Ljava/lang/String;)Z
    invoke-static {v4, v2, v5}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2100(Lcom/mediatek/wfo/impl/WifiOffloadService;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    return-void

    .line 584
    :cond_72
    :try_start_72
    move-object v4, v2

    check-cast v4, Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-virtual {v4}, Lcom/mediatek/ims/internal/MtkImsManager;->getConfigInterfaceEx()Lcom/mediatek/ims/internal/MtkImsConfig;

    move-result-object v4

    .line 585
    .local v4, "imsCfg":Lcom/mediatek/ims/internal/MtkImsConfig;
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$2;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    const-string v6, "can\'t get ImsConfig"

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->checkNullObject(Ljava/lang/Object;Ljava/lang/String;)Z
    invoke-static {v5, v4, v6}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2100(Lcom/mediatek/wfo/impl/WifiOffloadService;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    return-void

    .line 587
    :cond_84
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$2;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 588
    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->getNetworkTypeByFeature(I)I
    invoke-static {v5, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2300(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$2;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mCfgListeners:[Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;
    invoke-static {v6}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2000(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;

    move-result-object v6

    aget-object v6, v6, v1

    .line 587
    invoke-virtual {v4, v0, v5, v6}, Lcom/mediatek/ims/internal/MtkImsConfig;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    :try_end_95
    .catch Lcom/android/ims/ImsException; {:try_start_72 .. :try_end_95} :catch_96

    .line 592
    .end local v4    # "imsCfg":Lcom/mediatek/ims/internal/MtkImsConfig;
    goto :goto_ac

    .line 589
    :catch_96
    move-exception v4

    .line 590
    .local v4, "e":Lcom/android/ims/ImsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeatureValue has exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void

    .line 594
    .end local v0    # "feature":I
    .end local v1    # "phoneId":I
    .end local v2    # "imsMgr":Lcom/android/ims/ImsManager;
    .end local v4    # "e":Lcom/android/ims/ImsException;
    :cond_ac
    :goto_ac
    return-void

    .line 568
    :cond_ad
    :goto_ad
    return-void
.end method

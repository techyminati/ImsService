.class Lcom/mediatek/wfo/impl/WifiOffloadService$1;
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

    .line 443
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 446
    if-eqz p2, :cond_229

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_229

    .line 449
    :cond_a
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 451
    const/4 v0, 0x4

    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 453
    .local v0, "wifiState":I
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 454
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 455
    .end local v0    # "wifiState":I
    .end local v1    # "msg":Landroid/os/Message;
    goto/16 :goto_228

    :cond_49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "WifiOffloadService"

    const-string v3, "phone"

    const/4 v4, -0x1

    if-eqz v0, :cond_7f

    .line 456
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 457
    .local v0, "phoneId":I
    if-ne v0, v4, :cond_66

    .line 458
    const-string v1, "invalid phoneId: -1, return directly"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void

    .line 462
    :cond_66
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocatedPlmn:[Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$700(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.telephony.extra.PLMN"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 463
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->getModemIdFromPhoneId(I)I
    invoke-static {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$800(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I

    move-result v2

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalServiceState(II)V
    invoke-static {v1, v0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$900(Lcom/mediatek/wfo/impl/WifiOffloadService;II)V

    .line 464
    .end local v0    # "phoneId":I
    goto/16 :goto_228

    :cond_7f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v5, ", return directly"

    const-string v6, "invalid subId: "

    const-string v7, "subscription"

    const-string v8, "invalid phoneId: "

    if-eqz v0, :cond_124

    .line 466
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 467
    .restart local v0    # "phoneId":I
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->checkInvalidSimIdx(ILjava/lang/String;)Z
    invoke-static {v1, v0, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1000(Lcom/mediatek/wfo/impl/WifiOffloadService;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    return-void

    .line 469
    :cond_af
    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 471
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_cf

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void

    .line 476
    :cond_cf
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "simState":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimState:[Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1100(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Ljava/lang/String;

    move-result-object v3

    aput-object v2, v3, v0

    .line 478
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mActiveSubId:[I
    invoke-static {v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1200(Lcom/mediatek/wfo/impl/WifiOffloadService;)[I

    move-result-object v3

    aput v1, v3, v0

    .line 480
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", simState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 482
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalSimInfo(I)V
    invoke-static {v3, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1300(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V

    .line 483
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalWfcSupported(I)V
    invoke-static {v3, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$400(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V

    .line 485
    const-string v3, "LOADED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 486
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->updateIsAllowTurnOffIms(II)V
    invoke-static {v3, v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1400(Lcom/mediatek/wfo/impl/WifiOffloadService;II)V

    .line 489
    .end local v0    # "phoneId":I
    .end local v1    # "subId":I
    .end local v2    # "simState":Ljava/lang/String;
    :cond_122
    goto/16 :goto_228

    :cond_124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_192

    .line 491
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 492
    .restart local v0    # "phoneId":I
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->checkInvalidSimIdx(ILjava/lang/String;)Z
    invoke-static {v1, v0, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1000(Lcom/mediatek/wfo/impl/WifiOffloadService;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14c

    return-void

    .line 494
    :cond_14c
    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 495
    .restart local v1    # "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_16c

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void

    .line 500
    :cond_16c
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->updateIsAllowTurnOffIms(II)V
    invoke-static {v2, v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1400(Lcom/mediatek/wfo/impl/WifiOffloadService;II)V

    .line 502
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->handleModemPower()V
    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1500(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    .line 503
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->handleWfcModeChange()V
    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1600(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    .line 505
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 507
    .end local v0    # "phoneId":I
    .end local v1    # "subId":I
    goto/16 :goto_228

    :cond_192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 508
    nop

    .line 509
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 510
    .local v0, "parcelableExtra":Landroid/os/Parcelable;
    if-eqz v0, :cond_1bf

    .line 511
    move-object v2, v0

    check-cast v2, Landroid/net/NetworkInfo;

    .line 512
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 513
    .local v3, "state":Landroid/net/NetworkInfo$State;
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_1b6

    const/4 v5, 0x1

    goto :goto_1b7

    :cond_1b6
    move v5, v1

    :goto_1b7
    # setter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiL2Connected:Z
    invoke-static {v4, v5}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1702(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)Z

    .line 515
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->checkIfShowNoInternetError(Z)V
    invoke-static {v4, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$600(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)V

    .line 517
    .end local v0    # "parcelableExtra":Landroid/os/Parcelable;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_1bf
    goto :goto_228

    :cond_1c0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 518
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAirplaneModeOn:Z
    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1802(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)Z

    .line 519
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->handleAirPlaneModeChange()V
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1900(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    goto :goto_228

    .line 520
    :cond_1dd
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ff

    .line 521
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 522
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_227

    .line 523
    :cond_1ff
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_227

    .line 524
    const-string v0, "simPropKey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "propKey":Ljava/lang/String;
    const-string v1, "wfc_ims_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_221

    .line 526
    const-string v1, "wfc_ims_roaming_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_228

    .line 527
    :cond_221
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$1;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->handleWfcModeChange()V
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$1600(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    goto :goto_228

    .line 523
    .end local v0    # "propKey":Ljava/lang/String;
    :cond_227
    :goto_227
    nop

    .line 530
    :cond_228
    :goto_228
    return-void

    .line 447
    :cond_229
    :goto_229
    return-void
.end method

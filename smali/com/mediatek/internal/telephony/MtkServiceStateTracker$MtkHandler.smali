.class Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;
.super Landroid/os/Handler;
.source "MtkServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkHandler"
.end annotation


# instance fields
.field private pending:Z

.field private polling:Z

.field private stop:Z

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 361
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 362
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 363
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->stop:Z

    .line 364
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->polling:Z

    .line 365
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->pending:Z

    .line 366
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 29
    .param p1, "msg"    # Landroid/os/Message;

    .line 370
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x7a

    const/4 v4, 0x3

    const-string v5, "Turbo stop due to wrong object"

    const/16 v6, 0x13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v2, :sswitch_data_5bc

    .line 683
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should not be here msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_5ba

    .line 412
    :sswitch_2e
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 413
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 414
    invoke-virtual {v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->isServiceConnected()Z

    move-result v2

    .line 415
    .local v2, "connected":Z
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RECHECK_NRM_STATUS connected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 417
    const/16 v3, 0x7b

    if-eqz v2, :cond_69

    .line 419
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->sendEmptyMessage(I)Z

    goto/16 :goto_5ba

    .line 421
    :cond_69
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 423
    goto/16 :goto_5ba

    .line 624
    .end local v2    # "connected":Z
    :sswitch_76
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;

    .line 625
    .local v2, "mtkplmn":Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 626
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 627
    invoke-virtual {v3}, Lcom/android/internal/telephony/NetworkRegistrationManager;->isServiceConnected()Z

    move-result v3

    .line 628
    .local v3, "connected":Z
    if-eqz v3, :cond_ea

    .line 629
    if-nez v2, :cond_96

    .line 630
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v5, "EVENT_UPDATE_PLMN should not be happened here"

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 631
    return-void

    .line 632
    :cond_96
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isTurboSSAlive()Z

    move-result v4

    if-eqz v4, :cond_ae

    iget-boolean v4, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showPlmn:Z

    if-nez v4, :cond_ae

    iget-boolean v4, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showSpn:Z

    if-nez v4, :cond_ae

    .line 633
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v5, "updateTurboPLMN comes after connected, skip"

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 634
    return-void

    .line 636
    :cond_ae
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MtkHandler: EVENT_UPDATE_PLMN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 637
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v12

    iget-boolean v13, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showPlmn:Z

    iget-object v14, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->plmn:Ljava/lang/String;

    iget-boolean v15, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showSpn:Z

    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->spn:Ljava/lang/String;

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e9

    .line 639
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # setter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSpnUpdatePending:Z
    invoke-static {v4, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3202(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Z)Z

    .line 641
    :cond_e9
    return-void

    .line 644
    :cond_ea
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_5ba

    .line 646
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v4

    invoke-virtual {v4}, Lmediatek/telephony/MtkServiceState;->getVoiceRegState()I

    move-result v4

    if-nez v4, :cond_112

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 647
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v4

    invoke-virtual {v4}, Lmediatek/telephony/MtkServiceState;->getVoiceRoaming()Z

    move-result v4

    if-eqz v4, :cond_12a

    :cond_112
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 648
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v4

    invoke-virtual {v4}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v4

    if-nez v4, :cond_1c8

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 649
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v4

    invoke-virtual {v4}, Lmediatek/telephony/MtkServiceState;->getDataRoaming()Z

    move-result v4

    if-nez v4, :cond_1c8

    .line 650
    :cond_12a
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v4

    invoke-virtual {v4}, Lmediatek/telephony/MtkServiceState;->getDataNetworkType()I

    move-result v4

    .line 651
    .local v4, "display_type":I
    if-nez v4, :cond_140

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v5

    invoke-virtual {v5}, Lmediatek/telephony/MtkServiceState;->getVoiceNetworkType()I

    move-result v4

    .line 652
    :cond_140
    const/4 v5, 0x0

    .line 653
    .local v5, "displayNetworkType":I
    const/16 v7, 0xd

    if-eq v4, v7, :cond_147

    if-ne v4, v6, :cond_160

    :cond_147
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 655
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v6

    invoke-virtual {v6}, Lmediatek/telephony/MtkServiceState;->getNrState()I

    move-result v6

    if-eqz v6, :cond_160

    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 656
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v6

    invoke-virtual {v6}, Lmediatek/telephony/MtkServiceState;->getNrState()I

    move-result v6

    if-eq v6, v10, :cond_160

    .line 657
    const/4 v5, 0x3

    .line 659
    :cond_160
    new-instance v6, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v6, v4, v5}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    .line 661
    .local v6, "displayInfo":Landroid/telephony/TelephonyDisplayInfo;
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateTurboPLMN turboSS="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " displayInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 662
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v9

    const/4 v10, 0x1

    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 663
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v7

    invoke-virtual {v7}, Lmediatek/telephony/MtkServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 662
    const-string v13, ""

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    .line 664
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v7

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyMtkServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V

    .line 665
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v7

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v7, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    .line 666
    .end local v4    # "display_type":I
    .end local v5    # "displayNetworkType":I
    .end local v6    # "displayInfo":Landroid/telephony/TelephonyDisplayInfo;
    goto/16 :goto_5ba

    .line 671
    :cond_1c8
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->plmn:Ljava/lang/String;

    if-nez v4, :cond_1d8

    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->spn:Ljava/lang/String;

    if-nez v4, :cond_1d8

    .line 672
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v5, "it\'s updateTurboPLMN when turboSS is OOS, skip"

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 673
    return-void

    .line 675
    :cond_1d8
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update aosp PLMN mtkplmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 676
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$3800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v6

    iget-boolean v7, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showPlmn:Z

    iget-object v8, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->plmn:Ljava/lang/String;

    iget-boolean v9, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->showSpn:Z

    iget-object v10, v2, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;->spn:Ljava/lang/String;

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    goto/16 :goto_5ba

    .line 373
    .end local v2    # "mtkplmn":Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;
    .end local v3    # "connected":Z
    :sswitch_20b
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v5

    invoke-interface {v2, v5, v9, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_500

    .line 427
    :sswitch_21c
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 428
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, [Ljava/lang/String;

    if-eqz v3, :cond_240

    .line 429
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 430
    .local v3, "opNames":[Ljava/lang/String;
    if-eqz v3, :cond_23e

    array-length v5, v3

    if-lt v5, v4, :cond_23e

    .line 431
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v4

    aget-object v5, v3, v7

    aget-object v6, v3, v10

    aget-object v7, v3, v9

    invoke-virtual {v4, v5, v6, v7}, Lmediatek/telephony/MtkServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .end local v3    # "opNames":[Ljava/lang/String;
    :cond_23e
    goto/16 :goto_5ba

    .line 434
    :cond_240
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v4, "Turbo EVENT OPERATOR wrong object"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 436
    goto/16 :goto_5ba

    .line 510
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_249
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 511
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 512
    .local v3, "result":Ljava/lang/Object;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_30d

    if-eqz v3, :cond_30d

    instance-of v4, v3, Landroid/hardware/radio/V1_5/RegStateResult;

    if-nez v4, :cond_25f

    instance-of v4, v3, Landroid/hardware/radio/V1_6/RegStateResult;

    if-nez v4, :cond_25f

    goto/16 :goto_30d

    .line 518
    :cond_25f
    const/4 v4, 0x0

    .line 519
    .local v4, "networkType":I
    const/4 v5, 0x1

    .line 520
    .local v5, "regState":I
    const/4 v7, 0x0

    .line 521
    .local v7, "reasonForDenial":I
    const/4 v8, 0x0

    .line 522
    .local v8, "isEndcAvailable":Z
    const/4 v11, 0x0

    .line 523
    .local v11, "isNrAvailable":Z
    const/4 v12, 0x0

    .line 524
    .local v12, "isDcNrRestricted":Z
    instance-of v13, v3, Landroid/hardware/radio/V1_5/RegStateResult;

    if-eqz v13, :cond_291

    .line 525
    move-object v13, v3

    check-cast v13, Landroid/hardware/radio/V1_5/RegStateResult;

    .line 527
    .local v13, "dataRegState":Landroid/hardware/radio/V1_5/RegStateResult;
    iget v14, v13, Landroid/hardware/radio/V1_5/RegStateResult;->rat:I

    invoke-static {v14}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    .line 528
    iget v5, v13, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    .line 529
    iget v7, v13, Landroid/hardware/radio/V1_5/RegStateResult;->reasonForDenial:I

    .line 530
    iget-object v14, v13, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    invoke-virtual {v14}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->getDiscriminator()B

    move-result v14

    if-ne v14, v9, :cond_2c4

    .line 534
    iget-object v9, v13, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    .line 535
    invoke-virtual {v9}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v9

    .line 536
    .local v9, "eutranInfo":Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;
    iget-object v14, v9, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v12, v14, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    .line 537
    iget-object v14, v9, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v11, v14, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    .line 538
    iget-object v14, v9, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v8, v14, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    goto :goto_2c4

    .line 540
    .end local v9    # "eutranInfo":Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;
    .end local v13    # "dataRegState":Landroid/hardware/radio/V1_5/RegStateResult;
    :cond_291
    instance-of v13, v3, Landroid/hardware/radio/V1_6/RegStateResult;

    if-eqz v13, :cond_2c4

    .line 541
    move-object v13, v3

    check-cast v13, Landroid/hardware/radio/V1_6/RegStateResult;

    .line 543
    .local v13, "dataRegState":Landroid/hardware/radio/V1_6/RegStateResult;
    iget v14, v13, Landroid/hardware/radio/V1_6/RegStateResult;->rat:I

    invoke-static {v14}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    .line 544
    iget v5, v13, Landroid/hardware/radio/V1_6/RegStateResult;->regState:I

    .line 545
    iget v7, v13, Landroid/hardware/radio/V1_6/RegStateResult;->reasonForDenial:I

    .line 546
    iget-object v14, v13, Landroid/hardware/radio/V1_6/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    invoke-virtual {v14}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->getDiscriminator()B

    move-result v14

    if-ne v14, v9, :cond_2c0

    .line 550
    iget-object v9, v13, Landroid/hardware/radio/V1_6/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    .line 551
    invoke-virtual {v9}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v9

    .line 552
    .restart local v9    # "eutranInfo":Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;
    iget-object v14, v9, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v12, v14, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    .line 553
    iget-object v14, v9, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v11, v14, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    .line 554
    iget-object v14, v9, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v8, v14, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    move v9, v11

    move/from16 v26, v12

    goto :goto_2c7

    .line 546
    .end local v9    # "eutranInfo":Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;
    :cond_2c0
    move v9, v11

    move/from16 v26, v12

    goto :goto_2c7

    .line 540
    .end local v13    # "dataRegState":Landroid/hardware/radio/V1_6/RegStateResult;
    :cond_2c4
    :goto_2c4
    move v9, v11

    move/from16 v26, v12

    .line 558
    .end local v11    # "isNrAvailable":Z
    .end local v12    # "isDcNrRestricted":Z
    .local v9, "isNrAvailable":Z
    .local v26, "isDcNrRestricted":Z
    :goto_2c7
    if-ne v4, v6, :cond_2cb

    .line 559
    const/16 v4, 0xd

    .line 561
    :cond_2cb
    new-instance v6, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x10

    new-instance v15, Landroid/telephony/LteVopsSupportInfo;

    invoke-direct {v15, v10, v10}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    const-string v20, ""

    move-object v11, v6

    move v14, v5

    move-object v10, v15

    move v15, v4

    move/from16 v16, v7

    move/from16 v22, v26

    move/from16 v23, v9

    move/from16 v24, v8

    move-object/from16 v25, v10

    invoke-direct/range {v11 .. v25}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V

    .line 578
    .local v6, "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v6}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v10

    .line 579
    .local v10, "registrationState":I
    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # invokes: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I
    invoke-static {v11, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;I)I

    move-result v11

    .line 580
    .local v11, "serviceState":I
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v12

    invoke-virtual {v12, v11}, Lmediatek/telephony/MtkServiceState;->setDataRegState(I)V

    .line 581
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v12

    invoke-virtual {v12, v6}, Lmediatek/telephony/MtkServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 582
    goto/16 :goto_5ba

    .line 515
    .end local v4    # "networkType":I
    .end local v5    # "regState":I
    .end local v6    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v7    # "reasonForDenial":I
    .end local v8    # "isEndcAvailable":Z
    .end local v9    # "isNrAvailable":Z
    .end local v10    # "registrationState":I
    .end local v11    # "serviceState":I
    .end local v26    # "isDcNrRestricted":Z
    :cond_30d
    :goto_30d
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 516
    return-void

    .line 439
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "result":Ljava/lang/Object;
    :sswitch_313
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 440
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 441
    .local v4, "result":Ljava/lang/Object;
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_40b

    if-eqz v4, :cond_40b

    instance-of v8, v4, Landroid/hardware/radio/V1_5/RegStateResult;

    if-nez v8, :cond_329

    instance-of v8, v4, Landroid/hardware/radio/V1_6/RegStateResult;

    if-nez v8, :cond_329

    goto/16 :goto_40b

    .line 447
    :cond_329
    const/4 v5, 0x0

    .line 448
    .local v5, "networkType":I
    const/4 v8, 0x1

    .line 449
    .local v8, "regState":I
    const/4 v9, 0x0

    .line 450
    .local v9, "reasonForDenial":I
    instance-of v11, v4, Landroid/hardware/radio/V1_5/RegStateResult;

    if-eqz v11, :cond_33e

    .line 451
    move-object v11, v4

    check-cast v11, Landroid/hardware/radio/V1_5/RegStateResult;

    .line 453
    .local v11, "voiceRegState":Landroid/hardware/radio/V1_5/RegStateResult;
    iget v12, v11, Landroid/hardware/radio/V1_5/RegStateResult;->rat:I

    invoke-static {v12}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v5

    .line 454
    iget v8, v11, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    .line 455
    iget v9, v11, Landroid/hardware/radio/V1_5/RegStateResult;->reasonForDenial:I

    .end local v11    # "voiceRegState":Landroid/hardware/radio/V1_5/RegStateResult;
    goto :goto_350

    .line 456
    :cond_33e
    instance-of v11, v4, Landroid/hardware/radio/V1_6/RegStateResult;

    if-eqz v11, :cond_350

    .line 457
    move-object v11, v4

    check-cast v11, Landroid/hardware/radio/V1_6/RegStateResult;

    .line 459
    .local v11, "voiceRegState":Landroid/hardware/radio/V1_6/RegStateResult;
    iget v12, v11, Landroid/hardware/radio/V1_6/RegStateResult;->rat:I

    invoke-static {v12}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v5

    .line 460
    iget v8, v11, Landroid/hardware/radio/V1_6/RegStateResult;->regState:I

    .line 461
    iget v9, v11, Landroid/hardware/radio/V1_6/RegStateResult;->reasonForDenial:I

    goto :goto_351

    .line 456
    .end local v11    # "voiceRegState":Landroid/hardware/radio/V1_6/RegStateResult;
    :cond_350
    :goto_350
    nop

    .line 464
    :goto_351
    if-ne v5, v6, :cond_355

    .line 465
    const/16 v5, 0xd

    .line 467
    :cond_355
    new-instance v6, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v20, ""

    move-object v11, v6

    move v14, v8

    move v15, v5

    move/from16 v16, v9

    invoke-direct/range {v11 .. v24}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    .line 481
    .restart local v6    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v6}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v11

    .line 482
    .local v11, "registrationState":I
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v12

    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # invokes: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I
    invoke-static {v13, v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;I)I

    move-result v13

    invoke-virtual {v12, v13}, Lmediatek/telephony/MtkServiceState;->setVoiceRegState(I)V

    .line 483
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v12

    invoke-virtual {v12, v6}, Lmediatek/telephony/MtkServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 485
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v12

    invoke-virtual {v12}, Lmediatek/telephony/MtkServiceState;->getVoiceRegState()I

    move-result v12

    if-nez v12, :cond_3a5

    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 486
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v12

    invoke-virtual {v12}, Lmediatek/telephony/MtkServiceState;->getVoiceRoaming()Z

    move-result v12

    if-eqz v12, :cond_3bd

    :cond_3a5
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 487
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v12

    invoke-virtual {v12}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v12

    if-nez v12, :cond_3f8

    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 488
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v12

    invoke-virtual {v12}, Lmediatek/telephony/MtkServiceState;->getDataRoaming()Z

    move-result v12

    if-nez v12, :cond_3f8

    .line 490
    :cond_3bd
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v12

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v12

    if-eqz v12, :cond_3d2

    .line 491
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # invokes: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateTurboPLMN()V
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)V

    .line 494
    :cond_3d2
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v13, "MtkHandler: stop MTK turbo."

    invoke-virtual {v12, v13}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 495
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->stop:Z

    .line 496
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v10

    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v12

    invoke-interface {v10, v12}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    .line 497
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;

    move-result-object v10

    invoke-virtual {v10}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v10

    if-nez v10, :cond_3f8

    .line 499
    iput-boolean v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->pending:Z

    .line 501
    :cond_3f8
    iput-boolean v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->polling:Z

    .line 503
    iget-boolean v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->pending:Z

    if-eqz v10, :cond_5ba

    .line 504
    iput-boolean v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->pending:Z

    .line 505
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5ba

    .line 444
    .end local v5    # "networkType":I
    .end local v6    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v8    # "regState":I
    .end local v9    # "reasonForDenial":I
    .end local v11    # "registrationState":I
    :cond_40b
    :goto_40b
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 445
    return-void

    .line 586
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Ljava/lang/Object;
    :sswitch_411
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 587
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v3

    if-eqz v3, :cond_42c

    .line 588
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkRsrpOnly()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_42d

    :cond_42c
    move-object v3, v8

    .line 587
    :goto_42d
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 589
    .local v3, "mtkRsrpOnly":Z
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v4

    if-eqz v4, :cond_444

    .line 590
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkLteRsrpThreshold()[I

    move-result-object v4

    goto :goto_445

    :cond_444
    move-object v4, v8

    .line 591
    .local v4, "mtkLteRsrpThreshold":[I
    :goto_445
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v5

    if-eqz v5, :cond_458

    .line 592
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkLteRssnrThreshold()[I

    move-result-object v8

    goto :goto_459

    :cond_458
    nop

    :goto_459
    move-object v5, v8

    .line 597
    .local v5, "mtkLteRssnrThreshold":[I
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_4e6

    iget-object v6, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_4e6

    .line 598
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v7, Lmediatek/telephony/MtkSignalStrength;

    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 599
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v8

    iget-object v9, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Landroid/telephony/SignalStrength;

    invoke-direct {v7, v8, v9}, Lmediatek/telephony/MtkSignalStrength;-><init>(ILandroid/telephony/SignalStrength;)V

    .line 598
    # setter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSig:Landroid/telephony/SignalStrength;
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2502(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 601
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # invokes: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 602
    .local v6, "config":Landroid/os/PersistableBundle;
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSig:Landroid/telephony/SignalStrength;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/SignalStrength;

    move-result-object v7

    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v8, v8, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7, v6, v8}, Landroid/telephony/SignalStrength;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 605
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSig:Landroid/telephony/SignalStrength;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/SignalStrength;

    move-result-object v7

    check-cast v7, Lmediatek/telephony/MtkSignalStrength;

    .line 606
    .local v7, "mtkSignal":Lmediatek/telephony/MtkSignalStrength;
    invoke-virtual {v7, v3}, Lmediatek/telephony/MtkSignalStrength;->setMtkRsrpOnly(Z)V

    .line 607
    invoke-virtual {v7, v4}, Lmediatek/telephony/MtkSignalStrength;->setMtkLteRsrpThreshold([I)V

    .line 608
    invoke-virtual {v7, v5}, Lmediatek/telephony/MtkSignalStrength;->setMtkLteRssnrThreshold([I)V

    .line 609
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v8, v8, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7, v6, v8}, Lmediatek/telephony/MtkSignalStrength;->updateMtkLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 610
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyMtkSignalStrength level:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSig:Landroid/telephony/SignalStrength;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/SignalStrength;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " raw:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 611
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSig:Landroid/telephony/SignalStrength;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/SignalStrength;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 610
    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 612
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v8

    check-cast v8, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSig:Landroid/telephony/SignalStrength;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$2500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/SignalStrength;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyMtkSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 613
    .end local v6    # "config":Landroid/os/PersistableBundle;
    .end local v7    # "mtkSignal":Lmediatek/telephony/MtkSignalStrength;
    goto/16 :goto_5ba

    .line 614
    :cond_4e6
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 616
    goto/16 :goto_5ba

    .line 377
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "mtkRsrpOnly":Z
    .end local v4    # "mtkLteRsrpThreshold":[I
    .end local v5    # "mtkLteRssnrThreshold":[I
    :goto_500
    :sswitch_500
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 378
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 379
    invoke-virtual {v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->isServiceConnected()Z

    move-result v2

    .line 380
    .local v2, "connected":Z
    if-nez v2, :cond_59d

    iget-boolean v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->stop:Z

    if-eqz v5, :cond_518

    goto/16 :goto_59d

    .line 386
    :cond_518
    iget v5, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x78

    if-ne v5, v6, :cond_525

    .line 387
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v6, "MtkHandler: EVENT_RIL_READY"

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 388
    :cond_525
    iget v5, v1, Landroid/os/Message;->what:I

    if-ne v5, v3, :cond_531

    .line 389
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v5, "MtkHandler: EVENT_RESTART_TURBO"

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_53f

    .line 391
    :cond_531
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v5, "MtkHandler: EVENT_NETWORK_STATE_CHANGED"

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 392
    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->polling:Z

    if-ne v3, v10, :cond_53f

    .line 393
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->pending:Z

    .line 394
    return-void

    .line 398
    :cond_53f
    :goto_53f
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->polling:Z

    .line 399
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 400
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x7

    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v7, v7, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 399
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 402
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 403
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x5

    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v7, v7, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 402
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 405
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 406
    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v7, v7, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 405
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 408
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 409
    goto :goto_5ba

    .line 381
    :cond_59d
    :goto_59d
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const-string v4, "MtkHandler: stop MTK turbo"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 382
    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->stop:Z

    if-nez v3, :cond_5aa

    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->stop:Z

    .line 383
    :cond_5aa
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$1100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    .line 384
    return-void

    .line 685
    .end local v2    # "connected":Z
    :cond_5ba
    :goto_5ba
    return-void

    nop

    :sswitch_data_5bc
    .sparse-switch
        0x2 -> :sswitch_500
        0x3 -> :sswitch_411
        0x4 -> :sswitch_313
        0x5 -> :sswitch_249
        0x7 -> :sswitch_21c
        0x78 -> :sswitch_20b
        0x79 -> :sswitch_76
        0x7a -> :sswitch_500
        0x7b -> :sswitch_2e
    .end sparse-switch
.end method

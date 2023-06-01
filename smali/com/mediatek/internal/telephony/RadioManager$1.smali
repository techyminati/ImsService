.class Lcom/mediatek/internal/telephony/RadioManager$1;
.super Landroid/content/BroadcastReceiver;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/RadioManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/RadioManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/RadioManager;

    .line 394
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$000(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 401
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveSimStateChangedIntent(Landroid/content/Intent;)V

    goto/16 :goto_af

    .line 402
    :cond_2b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 403
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # invokes: Lcom/mediatek/internal/telephony/RadioManager;->onReceiveForceSetRadioPowerIntent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->access$100(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V

    goto/16 :goto_af

    .line 404
    :cond_3e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_WIFI_ONLY_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 405
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveWifiOnlyModeStateChangedIntent(Landroid/content/Intent;)V

    goto :goto_af

    .line 406
    :cond_50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediatek.intent.action.WFC_POWER_ON_MODEM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 407
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveWifiStateChangedIntent(Landroid/content/Intent;)V

    goto :goto_af

    .line 408
    :cond_62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 409
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 411
    :cond_7a
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 412
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    iget v2, v2, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    const/16 v3, 0x80

    # invokes: Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->updateModemPowerState(ZII)V
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 415
    :cond_93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # getter for: Lcom/mediatek/internal/telephony/RadioManager;->mIsDsbpChanging:[Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$400(Lcom/mediatek/internal/telephony/RadioManager;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_aa

    .line 416
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    const/4 v1, 0x1

    # setter for: Lcom/mediatek/internal/telephony/RadioManager;->mIsPendingRadioByDsbpChanging:Z
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$502(Lcom/mediatek/internal/telephony/RadioManager;Z)Z

    goto :goto_af

    .line 418
    :cond_aa
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    # invokes: Lcom/mediatek/internal/telephony/RadioManager;->setRadioPowerAfterCapabilitySwitch()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->access$600(Lcom/mediatek/internal/telephony/RadioManager;)V

    .line 421
    :cond_af
    :goto_af
    return-void
.end method

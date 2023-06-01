.class Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 292
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiverEx onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 297
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 298
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    const-string v2, "Wifi state changed"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 299
    const/4 v1, 0x4

    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_35

    const/4 v1, 0x1

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    .line 301
    .local v1, "enabled":Z
    :goto_36
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onWifiStateChanged(Z)V
    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Z)V

    .line 302
    .end local v1    # "enabled":Z
    goto/16 :goto_cc

    :cond_3d
    const-string v1, "com.mediatek.common.carrierexpress.operator_config_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 303
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->reloadOpCustomizationFactory()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    goto/16 :goto_cc

    .line 304
    :cond_4c
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 305
    const/4 v1, -0x1

    const-string v2, "phone"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 306
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_68

    return-void

    .line 307
    :cond_68
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "curOperatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_RADIO_TECHNOLOGY_CHANGED: mOldOperatorNumeric = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 309
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mOldOperatorNumeric:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", curOperatorNumeric = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 308
    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Ljava/lang/String;)V

    .line 310
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mOldOperatorNumeric:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b5

    .line 311
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b5

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 312
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mOldOperatorNumeric:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b5

    .line 313
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onSubIdReady()V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    .line 315
    .end local v1    # "phoneId":I
    .end local v2    # "curOperatorNumeric":Ljava/lang/String;
    :cond_b5
    goto :goto_cc

    .line 316
    :cond_b6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: Unknown action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 318
    :goto_cc
    return-void
.end method

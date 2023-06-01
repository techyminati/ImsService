.class Lcom/mediatek/internal/telephony/MtkSuppServConf$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkSuppServConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSuppServConf;

    .line 487
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 490
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBroadcastReceiver: action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServConf;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->access$100(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 492
    const/4 v0, -0x1

    const-string v1, "subscription"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 494
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive ACTION_CARRIER_CONFIG_CHANGED: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPhone.getSubId()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    .line 495
    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->access$600(Lcom/mediatek/internal/telephony/MtkSuppServConf;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 494
    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->access$700(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->access$600(Lcom/mediatek/internal/telephony/MtkSuppServConf;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v1

    if-ne v0, v1, :cond_80

    .line 497
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    const-string v2, "CarrierConfigLoader is loading complete!"

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->access$700(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServConf;->mSSConfigHandler:Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->access$800(Lcom/mediatek/internal/telephony/MtkSuppServConf;)Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;->removeMessages(I)V

    .line 499
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServConf;->mSSConfigHandler:Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->access$800(Lcom/mediatek/internal/telephony/MtkSuppServConf;)Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 500
    .local v1, "initMsg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 503
    .end local v0    # "subId":I
    .end local v1    # "initMsg":Landroid/os/Message;
    :cond_80
    return-void
.end method

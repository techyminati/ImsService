.class Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierExpressFwkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    .line 99
    iput-object p1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;->this$0:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastReceiver(), action= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarrierExpress"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;->this$0:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    # getter for: Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->access$000(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_ad

    .line 105
    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;->this$0:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    # getter for: Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->access$000(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    # setter for: Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->access$102(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/mediatek/internal/telephony/MtkRIL;

    .line 110
    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;->this$0:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    # getter for: Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->access$100(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 111
    const-string v1, "MtkRIL is null"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 115
    :cond_3d
    const-string v1, "com.mediatek.common.carrierexpress.cxp_reset_modem"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 116
    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;->this$0:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    # invokes: Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->startResetModem()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->access$200(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)V

    goto :goto_ac

    .line 117
    :cond_4b
    const-string v1, "com.mediatek.common.carrierexpress.cxp_set_vendor_prop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 118
    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;->this$0:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    # getter for: Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->access$100(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    const/4 v2, 0x0

    .line 119
    const-string v3, "OPTR"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 120
    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;->this$0:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    # getter for: Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->access$100(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    .line 121
    const-string v2, "SPEC"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 122
    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;->this$0:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    # getter for: Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->access$100(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    const/4 v2, 0x2

    .line 123
    const-string v5, "SEG"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {v1, v2, v5, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 124
    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;->this$0:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    # invokes: Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->needCxpSetSbp()Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->access$300(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Z

    move-result v1

    if-ne v1, v3, :cond_ac

    .line 125
    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;->this$0:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    # getter for: Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->access$100(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    const/4 v2, 0x3

    .line 126
    const-string v3, "SBP"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 127
    iget-object v1, p0, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler$1;->this$0:Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;

    # getter for: Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->access$100(Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;)Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    const/4 v2, 0x4

    .line 128
    const-string v3, "SUBID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 131
    :cond_ac
    :goto_ac
    return-void

    .line 107
    :cond_ad
    const-string v1, "phone is null, cannot reset modem"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

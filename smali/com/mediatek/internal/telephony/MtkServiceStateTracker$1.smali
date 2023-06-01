.class Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 254
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 260
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 261
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    const/16 v2, 0x39

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->sendEmptyMessage(I)Z

    .line 263
    :cond_29
    return-void

    .line 266
    .end local v0    # "phoneId":I
    :cond_2a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 268
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->refreshSpn(Landroid/telephony/ServiceState;Z)V

    .line 269
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateSpnDisplay()V

    .line 272
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 273
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    goto/16 :goto_e2

    .line 276
    :cond_52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 277
    const-string v0, "android.telephony.extra.LAST_KNOWN_NETWORK_COUNTRY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "lastKnownNetworkCountry":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastKnownNetworkCountry:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    .line 280
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateSpnDisplay()V

    goto :goto_e1

    .line 282
    .end local v0    # "lastKnownNetworkCountry":Ljava/lang/String;
    :cond_76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 283
    const-string v0, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 285
    .local v0, "simState":I
    const/4 v1, -0x1

    const-string v2, "phone"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 287
    .local v1, "slotId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    if-ne v1, v2, :cond_e2

    .line 288
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM state change, slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " simState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_d4

    .line 291
    if-ne v3, v0, :cond_d3

    .line 292
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # setter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMdn:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$502(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    :cond_d3
    return-void

    .line 297
    :cond_d4
    if-ne v0, v3, :cond_e2

    .line 299
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # setter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$602(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    # setter for: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$702(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_e2

    .line 282
    .end local v0    # "simState":I
    .end local v1    # "slotId":I
    :cond_e1
    :goto_e1
    nop

    .line 320
    :cond_e2
    :goto_e2
    return-void
.end method

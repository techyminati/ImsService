.class Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;
.super Landroid/content/BroadcastReceiver;
.source "MtkSuppServHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 746
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 749
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 751
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->handleSubinfoUpdate()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$900(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    goto/16 :goto_bc

    .line 752
    :cond_13
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto/16 :goto_bc

    .line 754
    :cond_1d
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_56

    .line 755
    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 756
    .local v1, "bAirplaneModeOn":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_AIRPLANE_MODE_CHANGED, bAirplaneModeOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    .line 758
    if-eqz v1, :cond_55

    .line 760
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isResetCSFBStatusAfterFlightMode()Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$1000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 761
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 765
    .end local v1    # "bAirplaneModeOn":Z
    :cond_55
    goto :goto_bc

    :cond_56
    const-string v1, "android.intent.action.ACTION_SUPPLEMENTARY_SERVICE_UT_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 767
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    const-string v2, "ACTION_SUPPLEMENTARY_SERVICE_UT_TEST"

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    .line 768
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isSupportSuppServUTTest()Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$1100(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 769
    return-void

    .line 771
    :cond_6e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->makeMtkSuppServUtTest(Landroid/content/Intent;)Lcom/mediatek/internal/telephony/MtkSuppServUtTest;
    invoke-static {v1, p2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$1200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Landroid/content/Intent;)Lcom/mediatek/internal/telephony/MtkSuppServUtTest;

    move-result-object v1

    .line 772
    .local v1, "ssUtTest":Lcom/mediatek/internal/telephony/MtkSuppServUtTest;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkSuppServUtTest;->run()V

    .line 773
    .end local v1    # "ssUtTest":Lcom/mediatek/internal/telephony/MtkSuppServUtTest;
    goto :goto_bc

    :cond_78
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 774
    const-string v1, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 776
    .local v1, "simStatus":I
    const/4 v2, -0x1

    const-string v3, "subscription"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 778
    .local v2, "subId":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_SIM_APPLICATION_STATE_CHANGED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    .line 780
    nop

    .line 781
    return-void

    .line 783
    .end local v1    # "simStatus":I
    .end local v2    # "subId":I
    :cond_ad
    const-string v1, "com.mediatek.systemupdate.UPDATE_SUCCESSFUL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 784
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$3;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    const-string v2, "ACTION_SYSTEM_UPDATE_SUCCESSFUL"

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    .line 786
    :cond_bc
    :goto_bc
    return-void
.end method

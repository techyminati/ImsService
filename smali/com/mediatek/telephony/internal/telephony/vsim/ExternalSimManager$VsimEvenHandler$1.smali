.class Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$1;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)V
    .registers 2
    .param p1, "this$1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 1305
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$1;->this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1307
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 1308
    .local v0, "uiccCtrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->isAllRadioAvailable()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1309
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->resetRadioForVsim()V

    .line 1312
    const-string v1, "ExternalSimMgr"

    const-string v2, "mTryResetModemRunnable reset modem done."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 1314
    :cond_20
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$1;->this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->mTryResetModemRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$1500(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1316
    :goto_2b
    return-void
.end method

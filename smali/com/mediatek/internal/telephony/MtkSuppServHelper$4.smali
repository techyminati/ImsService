.class Lcom/mediatek/internal/telephony/MtkSuppServHelper$4;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
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

    .line 875
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$4;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistered(I)V
    .registers 5
    .param p1, "imsRadioTech"    # I

    .line 880
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$4;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsRegistered imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$4;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->isMDSupportIMSSuppServ()Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$100(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 883
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$4;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbcwWithCS()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 884
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$4;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 885
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$4;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    goto :goto_51

    .line 888
    :cond_3e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$4;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 889
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$4;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 892
    :cond_51
    :goto_51
    return-void
.end method

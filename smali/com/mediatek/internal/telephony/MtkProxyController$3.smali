.class Lcom/mediatek/internal/telephony/MtkProxyController$3;
.super Landroid/content/BroadcastReceiver;
.source "MtkProxyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkProxyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkProxyController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkProxyController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 1002
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$3;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1005
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$3;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallStateReceiver: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 1007
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_56

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$3;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 1008
    # invokes: Lcom/mediatek/internal/telephony/MtkProxyController;->isEccInProgress()Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->access$400(Lcom/mediatek/internal/telephony/MtkProxyController;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 1009
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$3;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$3;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 1010
    # getter for: Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->access$200(Lcom/mediatek/internal/telephony/MtkProxyController;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_56

    .line 1011
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$3;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    # invokes: Lcom/mediatek/internal/telephony/MtkProxyController;->unRegisterCallStateReceiver()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->access$500(Lcom/mediatek/internal/telephony/MtkProxyController;)V

    .line 1013
    :try_start_40
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$3;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1014
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$3;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    # invokes: Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->access$300(Lcom/mediatek/internal/telephony/MtkProxyController;)V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_4f} :catch_50

    .line 1018
    :cond_4f
    goto :goto_56

    .line 1016
    :catch_50
    move-exception v1

    .line 1017
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController$3;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    # invokes: Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkProxyController;->access$300(Lcom/mediatek/internal/telephony/MtkProxyController;)V

    .line 1021
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_56
    :goto_56
    return-void
.end method

.class Lcom/mediatek/internal/telephony/MtkProxyController$2;
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

    .line 980
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$2;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 983
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$2;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWorldModeReceiver: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 985
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v1

    if-nez v1, :cond_53

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 986
    const-string v1, "mediatek.intent.action.ACTION_MODEM_SWITCH_DONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 987
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$2;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$2;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 988
    # getter for: Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->access$200(Lcom/mediatek/internal/telephony/MtkProxyController;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_53

    .line 990
    :try_start_3d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$2;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 991
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$2;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    # invokes: Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->access$300(Lcom/mediatek/internal/telephony/MtkProxyController;)V
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_4c} :catch_4d

    .line 995
    :cond_4c
    goto :goto_53

    .line 993
    :catch_4d
    move-exception v1

    .line 994
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController$2;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    # invokes: Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkProxyController;->access$300(Lcom/mediatek/internal/telephony/MtkProxyController;)V

    .line 999
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_53
    :goto_53
    return-void
.end method

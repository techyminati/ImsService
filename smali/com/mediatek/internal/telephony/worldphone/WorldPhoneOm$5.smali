.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .line 1555
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWorldPhoneEccStateReceiver, received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 1559
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isEccInProgress()Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1560
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->unRegisterEccStateReceiver()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2500(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 1561
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 1563
    :cond_2a
    return-void
.end method

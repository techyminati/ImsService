.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$5;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOp01.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .line 1439
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$5;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWorldPhoneEccStateReceiver, received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$5;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isEccInProgress()Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1444
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$5;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->unRegisterEccStateReceiver()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2500(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    .line 1445
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$5;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimSwitched()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    .line 1447
    :cond_2a
    return-void
.end method

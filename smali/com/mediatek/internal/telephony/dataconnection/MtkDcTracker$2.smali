.class Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "MtkDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 2405
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2408
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2410
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2412
    const-string v1, "mediatek.intent.action.PHB_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2413
    const/4 v1, 0x0

    const-string v2, "ready"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2415
    .local v1, "bPhbReady":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bPhbReady: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2417
    if-eqz v1, :cond_46

    .line 2418
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onFdnChanged()V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    .line 2421
    .end local v1    # "bPhbReady":Z
    :cond_46
    return-void
.end method

.class Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$1;
.super Landroid/content/BroadcastReceiver;
.source "MMTelSSTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 388
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$1;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 393
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 394
    :cond_32
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$1;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # invokes: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->onReceiveSimStateChangedIntent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$000(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;Landroid/content/Intent;)V

    .line 396
    :cond_37
    return-void
.end method

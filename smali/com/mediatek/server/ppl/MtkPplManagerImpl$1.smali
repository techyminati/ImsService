.class Lcom/mediatek/server/ppl/MtkPplManagerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkPplManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/ppl/MtkPplManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/server/ppl/MtkPplManagerImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/server/ppl/MtkPplManagerImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/server/ppl/MtkPplManagerImpl;

    .line 90
    iput-object p1, p0, Lcom/mediatek/server/ppl/MtkPplManagerImpl$1;->this$0:Lcom/mediatek/server/ppl/MtkPplManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/mediatek/server/ppl/MtkPplManagerImpl$1;->this$0:Lcom/mediatek/server/ppl/MtkPplManagerImpl;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->filterPplAction(Ljava/lang/String;)Z

    move-result v1

    # invokes: Lcom/mediatek/server/ppl/MtkPplManagerImpl;->pplEnable(Landroid/content/Context;Z)V
    invoke-static {v0, p1, v1}, Lcom/mediatek/server/ppl/MtkPplManagerImpl;->access$000(Lcom/mediatek/server/ppl/MtkPplManagerImpl;Landroid/content/Context;Z)V

    .line 94
    return-void
.end method

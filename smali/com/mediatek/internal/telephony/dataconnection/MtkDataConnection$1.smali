.class Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 260
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 266
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: ignore empty action=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 267
    return-void

    .line 269
    :cond_26
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActionRetry:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 270
    const-string v1, "what"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 273
    const-string v2, "tag"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 276
    const v3, 0x7fffffff

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 277
    .local v1, "what":I
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 278
    .local v2, "tag":I
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 279
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sendMessage(what:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 280
    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 283
    :cond_84
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 284
    .end local v1    # "what":I
    .end local v2    # "tag":I
    goto :goto_e5

    .line 274
    :cond_8f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActionRetry:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no INTENT_RETRY_ALRAM_TAG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_ac
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActionRetry:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no INTENT_RETRY_ALRAM_WHAT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_c9
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 286
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: unknown action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 289
    :cond_e5
    :goto_e5
    return-void
.end method

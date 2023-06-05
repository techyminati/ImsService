.class Lcom/mediatek/ims/internal/DataDispatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .line 158
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 166
    const-string v1, "apnType"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "type":Ljava/lang/String;
    const-string v2, "failCause"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "failure":Ljava/lang/String;
    const/4 v3, -0x1

    const-string v4, "phone"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 172
    .local v4, "phoneId":I
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->access$000(Lcom/mediatek/ims/internal/DataDispatcher;)I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 173
    .local v5, "mCurrentPhoneId":I
    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED phoneId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mCurrentPhoneId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->logd(Ljava/lang/String;)V

    .line 176
    if-ne v4, v5, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 177
    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive, intent action is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->logd(Ljava/lang/String;)V

    .line 178
    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " failCause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->logd(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x197cf

    const/4 v8, 0x1

    if-eq v6, v7, :cond_2

    const v7, 0x6118c591

    if-eq v6, v7, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v6, "emergency"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v8

    goto :goto_0

    :cond_2
    const-string v6, "ims"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    :goto_0
    const v6, 0xc3503

    if-eqz v3, :cond_4

    if-eq v3, v8, :cond_3

    .line 192
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnKnown APN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_3
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$300(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 188
    .local v3, "emcHandle":Landroid/os/Handler;
    nop

    .line 189
    invoke-virtual {v3, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 188
    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    goto :goto_1

    .line 181
    .end local v3    # "emcHandle":Landroid/os/Handler;
    :cond_4
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 182
    .local v3, "imsHandle":Landroid/os/Handler;
    nop

    .line 183
    invoke-virtual {v3, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 182
    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v6}, Lcom/mediatek/ims/internal/DataDispatcher;->access$200(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v6

    const v7, 0xc3505

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "failure":Ljava/lang/String;
    .end local v3    # "imsHandle":Landroid/os/Handler;
    .end local v4    # "phoneId":I
    .end local v5    # "mCurrentPhoneId":I
    :cond_5
    :goto_1
    return-void
.end method

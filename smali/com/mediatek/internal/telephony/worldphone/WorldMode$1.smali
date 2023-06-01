.class Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldMode;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    .line 161
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 163
    const-string v0, "[Receiver]+"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$000(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$000(Ljava/lang/String;)V

    .line 166
    const/4 v1, -0x1

    .line 168
    .local v1, "wmState":I
    const-string v2, "mediatek.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 169
    const/4 v2, -0x1

    const-string v3, "worldModeState"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wmState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$000(Ljava/lang/String;)V

    .line 171
    const/4 v2, 0x1

    if-ne v1, v2, :cond_7a

    .line 172
    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateCurrentWorldMode()I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$200()I

    move-result v2

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->sCurrentWorldMode:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$102(I)I

    goto :goto_7a

    .line 174
    :cond_4c
    const-string v2, "android.intent.action.ACTION_ADB_SWITCH_WORLD_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 175
    const/4 v2, 0x0

    const-string v3, "worldMode"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 176
    .local v2, "toMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$000(Ljava/lang/String;)V

    .line 177
    const/16 v3, 0x8

    if-lt v2, v3, :cond_7a

    const/16 v3, 0x15

    if-gt v2, v3, :cond_7a

    .line 178
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->setWorldMode(I)V

    .line 181
    .end local v2    # "toMode":I
    :cond_7a
    :goto_7a
    const-string v2, "[Receiver]-"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldMode;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->access$000(Ljava/lang/String;)V

    .line 182
    return-void
.end method

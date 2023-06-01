.class Lcom/mediatek/internal/telephony/MtkPhoneSwitcher$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    .line 524
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher$1;->this$0:Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 527
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher$1;->this$0:Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 529
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 530
    return-void
.end method

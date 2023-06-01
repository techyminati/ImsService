.class Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "MtkSmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    .line 206
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$2;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$2;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    # getter for: Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPendingIccFullNotify:Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->access$000(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 211
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$2;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->handleIccFull()V

    .line 214
    :cond_19
    return-void
.end method

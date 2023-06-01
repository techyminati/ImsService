.class Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$1;
.super Landroid/database/ContentObserver;
.source "MtkSmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 101
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$1;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 104
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$1;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    # getter for: Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->mPendingIccFullNotify:Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->access$000(Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 105
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor$1;->this$0:Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;->handleIccFull()V

    .line 107
    :cond_d
    return-void
.end method

.class Lcom/mediatek/storage/StorageDefaultPathDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageDefaultPathDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/storage/StorageDefaultPathDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/storage/StorageDefaultPathDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/storage/StorageDefaultPathDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/storage/StorageDefaultPathDialog;

    .line 83
    iput-object p1, p0, Lcom/mediatek/storage/StorageDefaultPathDialog$1;->this$0:Lcom/mediatek/storage/StorageDefaultPathDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 88
    iget-object v1, p0, Lcom/mediatek/storage/StorageDefaultPathDialog$1;->this$0:Lcom/mediatek/storage/StorageDefaultPathDialog;

    invoke-virtual {v1}, Lcom/mediatek/storage/StorageDefaultPathDialog;->finish()V

    .line 90
    :cond_11
    return-void
.end method

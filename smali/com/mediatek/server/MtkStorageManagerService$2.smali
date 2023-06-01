.class Lcom/mediatek/server/MtkStorageManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "MtkStorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/MtkStorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/server/MtkStorageManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/server/MtkStorageManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/server/MtkStorageManagerService;

    .line 198
    iput-object p1, p0, Lcom/mediatek/server/MtkStorageManagerService$2;->this$0:Lcom/mediatek/server/MtkStorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.mediatek.ppl.NOTIFY_MOUNT_SERVICE_WIPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 203
    const-string v1, "MtkStorageManagerService"

    const-string v2, "Privacy Protection wipe!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/mediatek/server/MtkStorageManagerService$2;->this$0:Lcom/mediatek/server/MtkStorageManagerService;

    # invokes: Lcom/mediatek/server/MtkStorageManagerService;->formatPhoneStorageAndExternalSDCard()V
    invoke-static {v1}, Lcom/mediatek/server/MtkStorageManagerService;->access$300(Lcom/mediatek/server/MtkStorageManagerService;)V

    .line 206
    :cond_18
    return-void
.end method

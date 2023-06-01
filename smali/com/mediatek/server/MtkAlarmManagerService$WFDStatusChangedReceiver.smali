.class Lcom/mediatek/server/MtkAlarmManagerService$WFDStatusChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtkAlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/MtkAlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WFDStatusChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/server/MtkAlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/server/MtkAlarmManagerService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/server/MtkAlarmManagerService;

    .line 177
    iput-object p1, p0, Lcom/mediatek/server/MtkAlarmManagerService$WFDStatusChangedReceiver;->this$0:Lcom/mediatek/server/MtkAlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/mediatek/server/MtkAlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 188
    nop

    .line 189
    const-string v0, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplayStatus;

    .line 190
    .local v0, "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    iget-object v1, p0, Lcom/mediatek/server/MtkAlarmManagerService$WFDStatusChangedReceiver;->this$0:Lcom/mediatek/server/MtkAlarmManagerService;

    const/4 v2, 0x2

    .line 191
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    if-ne v2, v3, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    iput-boolean v2, v1, Lcom/mediatek/server/MtkAlarmManagerService;->mIsWFDConnected:Z

    .line 193
    .end local v0    # "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_23
    return-void
.end method

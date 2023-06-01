.class Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/amplus/PowerSavingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSavingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/amplus/PowerSavingUtils;


# direct methods
.method public constructor <init>(Lcom/mediatek/amplus/PowerSavingUtils;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/amplus/PowerSavingUtils;

    .line 278
    iput-object p1, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 279
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    # getter for: Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/mediatek/amplus/PowerSavingUtils;->access$000(Lcom/mediatek/amplus/PowerSavingUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 290
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 291
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    # setter for: Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOff:Z
    invoke-static {v0, v1}, Lcom/mediatek/amplus/PowerSavingUtils;->access$102(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    .line 292
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOffTime:J
    invoke-static {v0, v1, v2}, Lcom/mediatek/amplus/PowerSavingUtils;->access$202(Lcom/mediatek/amplus/PowerSavingUtils;J)J

    goto/16 :goto_8f

    .line 293
    :cond_1d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 294
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    # setter for: Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOff:Z
    invoke-static {v0, v2}, Lcom/mediatek/amplus/PowerSavingUtils;->access$102(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    .line 295
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    const-wide/16 v1, 0x0

    # setter for: Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOffTime:J
    invoke-static {v0, v1, v2}, Lcom/mediatek/amplus/PowerSavingUtils;->access$202(Lcom/mediatek/amplus/PowerSavingUtils;J)J

    goto :goto_8f

    .line 296
    :cond_37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 297
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    const-string v1, "connected"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/mediatek/amplus/PowerSavingUtils;->mIsUsbConnected:Z
    invoke-static {v0, v1}, Lcom/mediatek/amplus/PowerSavingUtils;->access$302(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    goto :goto_8f

    .line 298
    :cond_4f
    nop

    .line 299
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 300
    nop

    .line 301
    const-string v0, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplayStatus;

    .line 302
    .local v0, "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    iget-object v3, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    const/4 v4, 0x2

    .line 303
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    if-ne v4, v5, :cond_6f

    goto :goto_70

    :cond_6f
    move v1, v2

    .line 302
    :goto_70
    # setter for: Lcom/mediatek/amplus/PowerSavingUtils;->mIsWFDConnected:Z
    invoke-static {v3, v1}, Lcom/mediatek/amplus/PowerSavingUtils;->access$402(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerSavingReceiver mIsWFDConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    # getter for: Lcom/mediatek/amplus/PowerSavingUtils;->mIsWFDConnected:Z
    invoke-static {v2}, Lcom/mediatek/amplus/PowerSavingUtils;->access$400(Lcom/mediatek/amplus/PowerSavingUtils;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0    # "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_8f
    :goto_8f
    return-void
.end method

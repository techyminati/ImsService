.class Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerHalWifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;


# direct methods
.method constructor <init>(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    .line 396
    iput-object p1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$1;->this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 400
    iget-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$1;->this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->access$200(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 403
    const/4 v0, 0x4

    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 406
    .local v0, "wifiState":I
    iget-object v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$1;->this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    # invokes: Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->onWifiStateChange(I)V
    invoke-static {v1, v0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->access$300(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;I)V

    .line 407
    .end local v0    # "wifiState":I
    goto :goto_72

    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 408
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 411
    .local v0, "info":Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$1;->this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    # invokes: Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->onWifiConnectionStateChange(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->access$400(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;Landroid/net/NetworkInfo;)V

    .line 412
    .end local v0    # "info":Landroid/net/NetworkInfo;
    goto :goto_72

    :cond_4d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.npp.ev.a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 413
    iget-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$1;->this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    const/4 v1, 0x1

    # invokes: Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->postStateChange(I)V
    invoke-static {v0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->access$500(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;I)V

    goto :goto_72

    .line 414
    :cond_60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.npp.ev.b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 415
    iget-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$1;->this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    const/4 v1, 0x0

    # invokes: Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->postStateChange(I)V
    invoke-static {v0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->access$500(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;I)V

    .line 418
    :cond_72
    :goto_72
    return-void
.end method

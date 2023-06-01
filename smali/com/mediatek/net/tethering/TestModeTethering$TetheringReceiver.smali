.class Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TestModeTethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/net/tethering/TestModeTethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetheringReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/net/tethering/TestModeTethering;


# direct methods
.method private constructor <init>(Lcom/mediatek/net/tethering/TestModeTethering;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;->this$0:Lcom/mediatek/net/tethering/TestModeTethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/net/tethering/TestModeTethering;Lcom/mediatek/net/tethering/TestModeTethering$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/net/tethering/TestModeTethering;
    .param p2, "x1"    # Lcom/mediatek/net/tethering/TestModeTethering$1;

    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;-><init>(Lcom/mediatek/net/tethering/TestModeTethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 89
    if-nez p2, :cond_3

    return-void

    .line 91
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MCSS-Tethering"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, "com.mediatek.intent.action.TETHERING_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 96
    const/4 v1, 0x1

    const-string v2, "tethering_isconnected"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 97
    .local v1, "enable":Z
    if-eqz v1, :cond_34

    .line 98
    iget-object v2, p0, Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;->this$0:Lcom/mediatek/net/tethering/TestModeTethering;

    # invokes: Lcom/mediatek/net/tethering/TestModeTethering;->enableUsbTethering()V
    invoke-static {v2}, Lcom/mediatek/net/tethering/TestModeTethering;->access$200(Lcom/mediatek/net/tethering/TestModeTethering;)V

    goto :goto_39

    .line 100
    :cond_34
    iget-object v2, p0, Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;->this$0:Lcom/mediatek/net/tethering/TestModeTethering;

    # invokes: Lcom/mediatek/net/tethering/TestModeTethering;->disableUsbTethering()V
    invoke-static {v2}, Lcom/mediatek/net/tethering/TestModeTethering;->access$300(Lcom/mediatek/net/tethering/TestModeTethering;)V

    .line 102
    .end local v1    # "enable":Z
    :goto_39
    goto :goto_64

    :cond_3a
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 104
    # getter for: Lcom/mediatek/net/tethering/TestModeTethering;->sIsAutoTethering:Z
    invoke-static {}, Lcom/mediatek/net/tethering/TestModeTethering;->access$400()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 105
    iget-object v1, p0, Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;->this$0:Lcom/mediatek/net/tethering/TestModeTethering;

    # invokes: Lcom/mediatek/net/tethering/TestModeTethering;->enableUsbTethering()V
    invoke-static {v1}, Lcom/mediatek/net/tethering/TestModeTethering;->access$200(Lcom/mediatek/net/tethering/TestModeTethering;)V

    goto :goto_64

    .line 107
    :cond_4e
    const-string v1, "com.mediatek.intent.action.IGNORE_DATA_USAGE_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 108
    iget-object v1, p0, Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;->this$0:Lcom/mediatek/net/tethering/TestModeTethering;

    # getter for: Lcom/mediatek/net/tethering/TestModeTethering;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/net/tethering/TestModeTethering;->access$500(Lcom/mediatek/net/tethering/TestModeTethering;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver$1;-><init>(Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    :cond_64
    :goto_64
    return-void
.end method

.class Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 545
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 548
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 551
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    .line 553
    :cond_1b
    return-void
.end method

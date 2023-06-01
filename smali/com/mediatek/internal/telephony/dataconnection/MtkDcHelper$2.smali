.class Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "MtkDcHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 173
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 178
    return-void

    .line 180
    :cond_7
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 181
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "phoneState":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 183
    const-string v2, "onPhoneStateChanged: phone is IDLE"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    const/4 v3, 0x0

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsPhoneOffhook:Z
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$002(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Z)Z

    goto :goto_45

    .line 187
    :cond_29
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 188
    const-string v2, "onPhoneStateChanged: phone is OFFHOOK"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mRspHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 190
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 192
    .end local v1    # "phoneState":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_45
    :goto_45
    goto :goto_5a

    .line 193
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 195
    :goto_5a
    return-void
.end method

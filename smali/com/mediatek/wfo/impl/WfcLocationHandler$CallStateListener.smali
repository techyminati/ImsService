.class Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "WfcLocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WfcLocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 198
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$100(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const-string v1, "E911 is dialing"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$200(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const-string v1, "Wi-Fi isn\'t connected"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 206
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v1, 0xbbe

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 210
    :cond_1
    return-void
.end method

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
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 229
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WfcLocationHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x2

    if-ne p1, v0, :cond_62

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    # invokes: Lcom/mediatek/wfo/impl/WfcLocationHandler;->isEccInProgress()Z
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$100(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 234
    const-string v0, "E911 is dialing"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    # getter for: Lcom/mediatek/wfo/impl/WfcLocationHandler;->mIgnoreList:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$200(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 236
    const-string v0, "onCallStateChanged: ignore"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 239
    :cond_38
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    # getter for: Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$300(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    # getter for: Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$400(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 240
    const-string v0, "E911, Wi-Fi isn\'t connected and network unavailable"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    # invokes: Lcom/mediatek/wfo/impl/WfcLocationHandler;->addRetryLocationRequestForECC()V
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$500(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V

    .line 242
    return-void

    .line 244
    :cond_57
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v1, 0xbbe

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 246
    :cond_62
    return-void
.end method

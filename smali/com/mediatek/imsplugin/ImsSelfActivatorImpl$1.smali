.class Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsSelfActivatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    .line 102
    iput-object p1, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$1;->this$0:Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 105
    const-string v0, "airplaneMode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    .local v0, "isFlightmode":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_AIRPLANE_CHANGE_DONE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsExtSelfActivatorImpl"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4a

    .line 108
    iget-object v2, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$1;->this$0:Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    # getter for: Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mDialString:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->access$000(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$1;->this$0:Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    # getter for: Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;
    invoke-static {v4}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->access$100(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->doSelfActivationDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;Z)V

    .line 109
    iget-object v1, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$1;->this$0:Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    # getter for: Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->access$300(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl$1;->this$0:Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    # getter for: Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;->access$200(Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    .end local v0    # "isFlightmode":Z
    :cond_4a
    return-void
.end method

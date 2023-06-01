.class Lcom/mediatek/ims/ImsEcbmProxy$1;
.super Landroid/os/Handler;
.source "ImsEcbmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsEcbmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsEcbmProxy;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsEcbmProxy;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsEcbmProxy;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 74
    iput-object p1, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsEcbmProxy;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->needTurnOffVolteAfterE911()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsEcbmProxy;->access$300(Lcom/mediatek/ims/ImsEcbmProxy;)V

    goto :goto_1

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsEcbmProxy;->access$200(Lcom/mediatek/ims/ImsEcbmProxy;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsEcbmProxy;->access$202(Lcom/mediatek/ims/ImsEcbmProxy;Z)Z

    .line 90
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsEcbmProxy;->exitedEcbm()V

    .line 91
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsEcbmProxy;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->needTurnOffVolteAfterE911()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsEcbmProxy;->access$300(Lcom/mediatek/ims/ImsEcbmProxy;)V

    goto :goto_1

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsEcbmProxy;->access$000(Lcom/mediatek/ims/ImsEcbmProxy;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 80
    move v1, v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    move v0, v1

    .line 81
    .local v0, "isSimAbsent":Z
    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    .line 82
    invoke-static {v1}, Lcom/mediatek/ims/ImsEcbmProxy;->access$100(Lcom/mediatek/ims/ImsEcbmProxy;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 83
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVolteAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isWifiCallingAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsEcbmProxy$1;->this$0:Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-virtual {v2}, Lcom/mediatek/ims/ImsEcbmProxy;->enteredEcbm()V

    .line 103
    .end local v0    # "isSimAbsent":Z
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

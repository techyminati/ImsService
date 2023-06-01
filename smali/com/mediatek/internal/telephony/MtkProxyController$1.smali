.class Lcom/mediatek/internal/telephony/MtkProxyController$1;
.super Landroid/os/Handler;
.source "MtkProxyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkProxyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkProxyController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkProxyController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 259
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkProxyController$1;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 262
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController$1;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtkHandleMessage msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 264
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    goto :goto_36

    .line 273
    :pswitch_1e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController$1;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCurrRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->onSetRadioCapabilityRequest([Landroid/telephony/RadioAccessFamily;)Z

    .line 274
    goto :goto_36

    .line 266
    :pswitch_26
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController$1;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    # getter for: Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->access$000(Lcom/mediatek/internal/telephony/MtkProxyController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 267
    return-void

    .line 269
    :cond_30
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController$1;->this$0:Lcom/mediatek/internal/telephony/MtkProxyController;

    # invokes: Lcom/mediatek/internal/telephony/MtkProxyController;->onRetryWhenRadioAvailable(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/MtkProxyController;->access$100(Lcom/mediatek/internal/telephony/MtkProxyController;Landroid/os/Message;)V

    .line 270
    nop

    .line 279
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x6
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method

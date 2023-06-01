.class Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;
.super Landroid/os/Handler;
.source "MtkSuppServConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSConfigHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 279
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 281
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    .line 282
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 283
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 287
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    iget v3, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServConf;->eventToString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->access$000(Lcom/mediatek/internal/telephony/MtkSuppServConf;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServConf;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->access$100(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;)V

    .line 289
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    goto :goto_45

    .line 291
    :pswitch_24
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServConf;->onUpdateIcc()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServConf;)V

    .line 292
    goto :goto_45

    .line 301
    :pswitch_2a
    const/4 v0, 0x2

    .line 302
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 301
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 304
    goto :goto_45

    .line 296
    :pswitch_35
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServConf;->resetConfig()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->access$300(Lcom/mediatek/internal/telephony/MtkSuppServConf;)V

    .line 297
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServConf;->loadCarrierConfig()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->access$400(Lcom/mediatek/internal/telephony/MtkSuppServConf;)V

    .line 298
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServConf;->printConfig()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->access$500(Lcom/mediatek/internal/telephony/MtkSuppServConf;)V

    .line 299
    nop

    .line 308
    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_2a
        :pswitch_24
    .end packed-switch
.end method

.class Lcom/mediatek/internal/telephony/ModemSwitchHandler$1;
.super Landroid/os/Handler;
.source "ModemSwitchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ModemSwitchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 325
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 329
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 330
    .local v0, "protocolSim":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sModemSwitchingFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    # getter for: Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sModemSwitchingFlag:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " protocolSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    # invokes: Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->access$100(Ljava/lang/String;)V

    .line 333
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_8c

    goto :goto_8a

    .line 349
    :pswitch_35
    # setter for: Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sModemSwitchingFlag:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->access$002(I)I

    .line 350
    goto :goto_8a

    .line 335
    :pswitch_39
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 336
    .local v1, "ar":Landroid/os/AsyncResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EVENT_RIL_CONNECTED] mRilVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/ModemSwitchHandler;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->access$100(Ljava/lang/String;)V

    .line 337
    # getter for: Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sModemSwitchingFlag:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->access$000()I

    move-result v3

    if-ne v3, v2, :cond_8a

    .line 338
    const/4 v2, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sModemSwitchingFlag:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->access$002(I)I

    .line 339
    new-instance v2, Landroid/content/Intent;

    const-string v3, "mediatek.intent.action.ACTION_MODEM_SWITCH_DONE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v2, "intent":Landroid/content/Intent;
    # getter for: Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    if-ltz v0, :cond_8a

    const/4 v3, 0x3

    if-gt v0, v3, :cond_8a

    .line 343
    # getter for: Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->access$400()[Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v3

    aget-object v3, v3, v0

    # getter for: Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sWorldPhoneHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->access$300()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 344
    # getter for: Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->access$400()[Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v3

    aget-object v3, v3, v0

    # getter for: Lcom/mediatek/internal/telephony/ModemSwitchHandler;->sWorldPhoneHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->access$300()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 354
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_8a
    :goto_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_39
        :pswitch_35
    .end packed-switch
.end method

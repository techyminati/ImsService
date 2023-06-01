.class Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;
.super Landroid/os/Handler;
.source "MtkSSRequestDecisionMaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SSRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 334
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 335
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 336
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 352
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkSSRequestDecisionMaker:msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSSDecisonMaker"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 360
    :pswitch_1e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->mIsTempVolteUser:Z
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->access$202(Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;Z)Z

    .line 361
    goto :goto_35

    .line 357
    :pswitch_25
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->processResponse(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->access$100(Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;Ljava/lang/Object;)V

    .line 358
    goto :goto_35

    .line 354
    :pswitch_2d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->processSendRequest(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->access$000(Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;Ljava/lang/Object;)V

    .line 355
    nop

    .line 365
    :goto_35
    return-void

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method

.method public run()V
    .registers 1

    .line 342
    return-void
.end method

.class Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkIdleState;
.super Lcom/android/internal/telephony/InboundSmsHandler$IdleState;
.source "MtkGsmInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkIdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkIdleState;->this$0:Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;

    .line 202
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkIdleState;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 212
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 207
    :pswitch_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkIdleState;->this$0:Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;

    const-string v1, "MtkIdleState.processMessage: EVENT_SMS_EINFO_EXTENSIONS"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkIdleState;->this$0:Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    # invokes: Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->handleSmsEInfoExtensions(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->access$500(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Landroid/os/AsyncResult;)V

    .line 209
    const/4 v0, 0x1

    return v0

    :pswitch_data_1c
    .packed-switch 0x2009
        :pswitch_a
    .end packed-switch
.end method

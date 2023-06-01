.class Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDeliveringState;
.super Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
.source "MtkGsmInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkDeliveringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDeliveringState;->this$0:Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;

    .line 223
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDeliveringState;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 233
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 228
    :pswitch_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDeliveringState;->this$0:Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;

    const-string v1, "MtkDeliveringState.processMessage: EVENT_SMS_EINFO_EXTENSIONS"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDeliveringState;->this$0:Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    .line 230
    const/4 v0, 0x1

    return v0

    :pswitch_data_18
    .packed-switch 0x2009
        :pswitch_a
    .end packed-switch
.end method

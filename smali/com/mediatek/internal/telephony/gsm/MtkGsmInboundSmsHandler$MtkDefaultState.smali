.class Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDefaultState;
.super Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
.source "MtkGsmInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDefaultState;->this$0:Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$1;

    .line 169
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler$MtkDefaultState;-><init>(Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    .line 174
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

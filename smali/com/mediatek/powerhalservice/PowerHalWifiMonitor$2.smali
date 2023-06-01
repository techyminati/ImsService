.class Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$2;
.super Landroid/os/Handler;
.source "PowerHalWifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->initHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;


# direct methods
.method constructor <init>(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 502
    iput-object p1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$2;->this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 518
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 522
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 520
    :pswitch_c
    const-string v0, "CMD_CALLBACK_APP_EVENT"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 506
    iget-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$2;->this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$2;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->access$200(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;Ljava/lang/String;)V

    .line 508
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    goto :goto_32

    .line 510
    :pswitch_2a
    iget-object v0, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$2;->this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->callbackOnStateChanged(I)V
    invoke-static {v0, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->access$600(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;I)V

    .line 511
    nop

    .line 515
    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2a
    .end packed-switch
.end method

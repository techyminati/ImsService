.class Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$3;
.super Landroid/os/Handler;
.source "MtkNetPacketMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;


# direct methods
.method constructor <init>(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 112
    iput-object p1, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$3;->this$0:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 120
    const-string v0, "[MDC]MtkNetPacketMonitor"

    const-string v1, "Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 117
    :pswitch_d
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$3;->this$0:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->doNotifyPacket(I)V
    invoke-static {v0, v1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->access$400(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;I)V

    .line 118
    nop

    .line 123
    :goto_15
    return-void

    :pswitch_data_16
    .packed-switch 0x15
        :pswitch_d
    .end packed-switch
.end method

.class Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$1;
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

    .line 78
    iput-object p1, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$1;->this$0:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    goto :goto_20

    .line 89
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$1;->this$0:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->doSendVerdict(II)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->access$200(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;II)V

    .line 90
    goto :goto_20

    .line 86
    :pswitch_10
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$1;->this$0:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->doDestroyQueue(I)V
    invoke-static {v0, v1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->access$100(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;I)V

    .line 87
    goto :goto_20

    .line 83
    :pswitch_18
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$1;->this$0:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->doCreateQueue(I)V
    invoke-static {v0, v1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->access$000(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;I)V

    .line 84
    nop

    .line 94
    :goto_20
    return-void

    nop

    :pswitch_data_22
    .packed-switch 0xb
        :pswitch_18
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method

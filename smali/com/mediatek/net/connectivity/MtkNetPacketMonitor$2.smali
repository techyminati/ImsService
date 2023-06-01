.class Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$2;
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

    .line 98
    iput-object p1, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$2;->this$0:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    goto :goto_c

    .line 103
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$2;->this$0:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    # invokes: Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->doStartConnection()V
    invoke-static {v0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->access$300(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;)V

    .line 104
    nop

    .line 108
    :goto_c
    return-void

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.class Lcom/mediatek/net/networkstats/MtkTestSimHandler$InternalHandler;
.super Landroid/os/Handler;
.source "MtkTestSimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/net/networkstats/MtkTestSimHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/net/networkstats/MtkTestSimHandler;


# direct methods
.method public constructor <init>(Lcom/mediatek/net/networkstats/MtkTestSimHandler;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 55
    iput-object p1, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler$InternalHandler;->this$0:Lcom/mediatek/net/networkstats/MtkTestSimHandler;

    .line 56
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    goto :goto_c

    .line 63
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler$InternalHandler;->this$0:Lcom/mediatek/net/networkstats/MtkTestSimHandler;

    # invokes: Lcom/mediatek/net/networkstats/MtkTestSimHandler;->handleSimChange()V
    invoke-static {v0}, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->access$000(Lcom/mediatek/net/networkstats/MtkTestSimHandler;)V

    .line 64
    nop

    .line 68
    :goto_c
    return-void

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

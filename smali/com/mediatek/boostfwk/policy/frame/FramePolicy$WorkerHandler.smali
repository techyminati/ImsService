.class Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;
.super Landroid/os/Handler;
.source "FramePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/boostfwk/policy/frame/FramePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# static fields
.field public static final MSG_FRAME_BEGIN:I = 0x1

.field public static final MSG_FRAME_END:I = 0x2

.field public static final MSG_NO_DRAW:I = 0x4

.field public static final MSG_STEP_CHECK:I = 0x3

.field public static final MSG_TRAVERSAL_RESUCE_CHECK:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/mediatek/boostfwk/policy/frame/FramePolicy;


# direct methods
.method constructor <init>(Lcom/mediatek/boostfwk/policy/frame/FramePolicy;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 122
    iput-object p1, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    .line 123
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 124
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_3c

    goto :goto_3a

    .line 142
    :pswitch_7
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    # invokes: Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->traversalRescueChecker()V
    invoke-static {v0}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->access$400(Lcom/mediatek/boostfwk/policy/frame/FramePolicy;)V

    .line 143
    goto :goto_3a

    .line 139
    :pswitch_d
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    # invokes: Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->frameDraw(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->access$300(Lcom/mediatek/boostfwk/policy/frame/FramePolicy;Z)V

    .line 140
    goto :goto_3a

    .line 136
    :pswitch_13
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    # getter for: Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->mFrameStep:I
    invoke-static {}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->access$100()I

    move-result v1

    # invokes: Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->doFrameStepHintInternel(I)V
    invoke-static {v0, v1}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->access$200(Lcom/mediatek/boostfwk/policy/frame/FramePolicy;I)V

    .line 137
    goto :goto_3a

    .line 133
    :pswitch_1d
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    # invokes: Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->doFrameHintInternel(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->access$000(Lcom/mediatek/boostfwk/policy/frame/FramePolicy;ZJ)V

    .line 134
    goto :goto_3a

    .line 130
    :pswitch_2b
    iget-object v0, p0, Lcom/mediatek/boostfwk/policy/frame/FramePolicy$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/policy/frame/FramePolicy;

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    # invokes: Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->doFrameHintInternel(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/boostfwk/policy/frame/FramePolicy;->access$000(Lcom/mediatek/boostfwk/policy/frame/FramePolicy;ZJ)V

    .line 131
    nop

    .line 147
    :goto_3a
    return-void

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_1d
        :pswitch_13
        :pswitch_d
        :pswitch_7
    .end packed-switch
.end method

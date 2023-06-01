.class public Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;
.super Landroid/os/Handler;
.source "LaunchIdentify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkerHandler"
.end annotation


# static fields
.field public static final MSG_ACTIVITY_IDLE:I = 0x3

.field public static final MSG_ACTIVITY_RESUME:I = 0x2

.field public static final MSG_PROCESS_START:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;


# direct methods
.method constructor <init>(Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 268
    iput-object p1, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;

    .line 269
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 270
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 274
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    goto :goto_10

    .line 277
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify$WorkerHandler;->this$0:Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/boostfwk/identify/launch/LaunchIdentify;->boostEnd(Ljava/lang/String;)V

    .line 278
    nop

    .line 282
    :goto_10
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

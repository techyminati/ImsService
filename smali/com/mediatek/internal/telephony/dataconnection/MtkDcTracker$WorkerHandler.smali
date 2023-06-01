.class Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$WorkerHandler;
.super Landroid/os/Handler;
.source "MtkDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .registers 2

    .line 2585
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$WorkerHandler;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;

    .line 2585
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$WorkerHandler;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 2588
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    goto :goto_b

    .line 2590
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$WorkerHandler;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanOrSetupDataConnByCheckFdn()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$1100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    .line 2593
    :goto_b
    return-void

    :pswitch_data_c
    .packed-switch 0x42208
        :pswitch_6
    .end packed-switch
.end method

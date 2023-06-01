.class Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$3;
.super Ljava/lang/Thread;
.source "MtkDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createWorkerHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 2573
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2576
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2577
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$WorkerHandler;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$WorkerHandler;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;)V

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$902(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2578
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2579
    return-void
.end method

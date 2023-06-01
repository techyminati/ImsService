.class Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$2;
.super Ljava/lang/Object;
.source "MMTelSSTransport.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 399
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$2;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 402
    const-string v0, "MMTelSS"

    const-string v1, "GbaService onServiceConnected"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$2;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWaitLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$100(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 404
    :try_start_e
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$2;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWaitLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$100(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 405
    monitor-exit v0

    .line 406
    return-void

    .line 405
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 410
    const-string v0, "MMTelSS"

    const-string v1, "GbaService onServiceFailed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;
.super Ljava/lang/Thread;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "eventHandlerTread"
.end annotation


# instance fields
.field isWaiting:Z

.field mEvent:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

.field final synthetic this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .registers 4
    .param p1, "this$1"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    .param p2, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1286
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->mEvent:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->isWaiting:Z

    .line 1287
    iput-object p2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->mEvent:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1288
    return-void
.end method


# virtual methods
.method public isWaiting()Z
    .registers 2

    .line 1291
    iget-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->isWaiting:Z

    return v0
.end method

.method public run()V
    .registers 3

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventHandlerTread[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->mEvent:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    invoke-virtual {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: run..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->this$1:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->mEvent:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->dispatchCallback(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    invoke-static {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$1400(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 1301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->isWaiting:Z

    .line 1302
    return-void
.end method

.method public setWaiting(Z)V
    .registers 2
    .param p1, "waiting"    # Z

    .line 1295
    iput-boolean p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler$eventHandlerTread;->isWaiting:Z

    .line 1296
    return-void
.end method

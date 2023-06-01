.class Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$2;
.super Ljava/lang/Thread;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 222
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$2;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$2;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    invoke-static {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$2;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mIndHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;
    invoke-static {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$100(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_22

    .line 232
    :cond_11
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$2;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    const/4 v1, 0x0

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sendExternalSimConnectedEvent(I)V
    invoke-static {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$300(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)V

    .line 233
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$2;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {v0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    .line 234
    .local v0, "server":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;->listenConnection()V

    .line 235
    return-void

    .line 226
    .end local v0    # "server":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;
    :cond_22
    :goto_22
    const-wide/16 v0, 0xa

    :try_start_24
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_28

    .line 229
    :goto_27
    goto :goto_0

    .line 227
    :catch_28
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_27
.end method

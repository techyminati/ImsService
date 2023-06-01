.class Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;
.super Landroid/content/BroadcastReceiver;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
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

    .line 282
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 285
    const-string v0, "ExternalSimMgr"

    const-string v1, "[Receiver]+"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ExternalSimMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 290
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$400(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)I

    move-result v1

    if-ne v1, v3, :cond_87

    .line 292
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    move-result-object v1

    const/4 v3, 0x2

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->getVsimSlotId(I)I
    invoke-static {v1, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$500(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;I)I

    move-result v1

    .line 293
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v4

    if-ne v1, v4, :cond_61

    .line 295
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 296
    :try_start_4b
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I
    invoke-static {v2, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$402(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)I

    .line 297
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sendCapabilityDoneEvent()V
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$700(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    .line 298
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_5e

    .line 300
    const-string v1, "ExternalSimMgr"

    const-string v2, "SET_CAPABILITY_DONE, notify all"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 298
    :catchall_5e
    move-exception v2

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v2

    .line 303
    :cond_61
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    move-result-object v1

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sPreferedRsimSlot:I
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$800()I

    move-result v3

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->switchModemCapability(I)Z
    invoke-static {v1, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$900(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;I)Z

    move-result v1

    if-nez v1, :cond_b4

    .line 304
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 305
    :try_start_78
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I
    invoke-static {v3, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$402(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)I

    .line 306
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sendCapabilityDoneEvent()V
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$700(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    .line 307
    monitor-exit v1

    goto :goto_b4

    :catchall_84
    move-exception v2

    monitor-exit v1
    :try_end_86
    .catchall {:try_start_78 .. :try_end_86} :catchall_84

    throw v2

    .line 310
    :cond_87
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 311
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$400(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)I

    move-result v1

    if-ne v1, v3, :cond_b4

    .line 313
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$600(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 314
    :try_start_9e
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mSetCapabilityDone:I
    invoke-static {v3, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$402(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)I

    .line 315
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$3;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sendCapabilityDoneEvent()V
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$700(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V

    .line 316
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_9e .. :try_end_a9} :catchall_b1

    .line 318
    const-string v1, "ExternalSimMgr"

    const-string v2, "SET_CAPABILITY_FAILED, notify all"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 316
    :catchall_b1
    move-exception v2

    :try_start_b2
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v2

    .line 320
    :cond_b4
    :goto_b4
    const-string v1, "ExternalSimMgr"

    const-string v2, "[Receiver]-"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

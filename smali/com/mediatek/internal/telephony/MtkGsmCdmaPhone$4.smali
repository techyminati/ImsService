.class Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;
.super Ljava/lang/Object;
.source "MtkGsmCdmaPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

.field final synthetic val$enable:Z

.field final synthetic val$onComplete:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;ZLandroid/os/Message;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 3469
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->val$enable:Z

    iput-object p3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->val$onComplete:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 3471
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    const-string v1, "persist.vendor.radio.terminal-based.cw"

    const-string v2, "disabled_tbcw"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3475
    .local v0, "tbcwMode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTerminalBasedCallWaiting(): tbcwMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->val$enable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkGsmCdmaPhone"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    const-string v2, "enabled_tbcw_on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x3e8

    const-string v7, "enabled_tbcw_off"

    const/4 v8, 0x0

    if-eqz v4, :cond_5f

    .line 3479
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->val$enable:Z

    if-nez v2, :cond_48

    .line 3480
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3, v1, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setSSPropertyThroughHidl(ILjava/lang/String;Ljava/lang/String;)V

    .line 3482
    :cond_48
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->val$onComplete:Landroid/os/Message;

    if-eqz v1, :cond_5e

    .line 3484
    :try_start_4c
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4f} :catch_50

    .line 3487
    goto :goto_54

    .line 3485
    :catch_50
    move-exception v1

    .line 3486
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3488
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_54
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->val$onComplete:Landroid/os/Message;

    invoke-static {v1, v8, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3489
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->val$onComplete:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3491
    :cond_5e
    return-void

    .line 3492
    :cond_5f
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 3493
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->val$enable:Z

    if-eqz v3, :cond_72

    .line 3494
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setSSPropertyThroughHidl(ILjava/lang/String;Ljava/lang/String;)V

    .line 3496
    :cond_72
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->val$onComplete:Landroid/os/Message;

    if-eqz v1, :cond_88

    .line 3498
    :try_start_76
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_79} :catch_7a

    .line 3501
    goto :goto_7e

    .line 3499
    :catch_7a
    move-exception v1

    .line 3500
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3502
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_7e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->val$onComplete:Landroid/os/Message;

    invoke-static {v1, v8, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3503
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$4;->val$onComplete:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3505
    :cond_88
    return-void

    .line 3508
    :cond_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTerminalBasedCallWaiting(): ERROR: tbcwMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    return-void
.end method

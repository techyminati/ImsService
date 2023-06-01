.class Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;
.super Ljava/lang/Object;
.source "MtkGsmCdmaPhone.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

.field final synthetic val$onComplete:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Landroid/os/Message;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 3259
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;->val$onComplete:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3261
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v0

    const-string v1, "persist.vendor.radio.terminal-based.cw"

    const-string v2, "disabled_tbcw"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3265
    .local v0, "tbcwMode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTerminalBasedCallWaiting(): tbcwMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", onComplete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;->val$onComplete:Landroid/os/Message;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    const-string v1, "enabled_tbcw_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 3277
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 3268
    if-eqz v1, :cond_58

    .line 3269
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;->val$onComplete:Landroid/os/Message;

    if-eqz v1, :cond_57

    .line 3270
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 3271
    new-array v1, v3, [I

    .line 3272
    .local v1, "cwInfos":[I
    aput v7, v1, v6

    .line 3273
    aput v7, v1, v7

    .line 3274
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;->val$onComplete:Landroid/os/Message;

    invoke-static {v3, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3275
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;->val$onComplete:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3277
    .end local v1    # "cwInfos":[I
    :cond_57
    return-object v8

    .line 3278
    :cond_58
    const-string v1, "enabled_tbcw_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 3279
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;->val$onComplete:Landroid/os/Message;

    if-eqz v1, :cond_75

    .line 3280
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 3281
    new-array v1, v3, [I

    .line 3282
    .restart local v1    # "cwInfos":[I
    aput v6, v1, v6

    .line 3283
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;->val$onComplete:Landroid/os/Message;

    invoke-static {v3, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3284
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$3;->val$onComplete:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3286
    .end local v1    # "cwInfos":[I
    :cond_75
    return-object v8

    .line 3288
    :cond_76
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

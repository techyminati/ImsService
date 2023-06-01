.class Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "RttEmcGuardTimerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    .line 86
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.internal.telephony.imsphone.rtt_emc_guard_timer_180"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 91
    const-string v0, "RttEmcGuardTimerUtil"

    const-string v1, "onReceive : mRttReceiver rtt guard timer 180"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->stopRttEmcGuardTimer()V

    .line 93
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->mRttEmcIntent:Landroid/app/PendingIntent;
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->access$002(Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 94
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    const/4 v1, 0x0

    # invokes: Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->setDuringGuardTimer(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->access$100(Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;Z)V

    .line 98
    :cond_24
    return-void
.end method

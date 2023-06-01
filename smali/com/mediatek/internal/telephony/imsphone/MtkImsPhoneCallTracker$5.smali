.class Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$5;
.super Landroid/content/BroadcastReceiver;
.source "MtkImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 1321
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$5;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1324
    const-string v0, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1328
    .local v0, "numOfActiveModems":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$5;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_MULTI_SIM_CONFIG_CHANGED, numOfActiveModems: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6500(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1329
    return-void
.end method

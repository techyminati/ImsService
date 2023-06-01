.class Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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

    .line 182
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 4

    .line 190
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubscriptionListener.onSubscriptionInfoChanged, subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v0

    .line 194
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 197
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRoamingVariablesInited:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 198
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const/4 v2, 0x1

    # setter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRoamingVariablesInited:Z
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$102(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Z)Z

    .line 199
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->initRoamingAndRoamingSetting()V

    .line 202
    :cond_3f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->registerSettingsObserver()V

    .line 204
    :cond_44
    return-void
.end method

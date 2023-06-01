.class Lcom/mediatek/internal/telephony/MtkRetryManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkRetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkRetryManager;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 78
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    # invokes: Lcom/mediatek/internal/telephony/MtkRetryManager;->getNetworkSuggestedRetryDelay()J
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$000(Lcom/mediatek/internal/telephony/MtkRetryManager;)J

    move-result-wide v0

    .line 85
    .local v0, "networkSuggestedDelay":J
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBroadcastReceiver: action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mSameApnRetryCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 86
    # getter for: Lcom/mediatek/internal/telephony/MtkRetryManager;->mSameApnRetryCount:I
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$100(Lcom/mediatek/internal/telephony/MtkRetryManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", networkSuggestedDelay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mCurrentApnIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 88
    # getter for: Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$200(Lcom/mediatek/internal/telephony/MtkRetryManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    # invokes: Lcom/mediatek/internal/telephony/MtkRetryManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$300(Lcom/mediatek/internal/telephony/MtkRetryManager;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 90
    const/4 v2, -0x1

    const-string v3, "subscription"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 92
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_8d

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    .line 93
    # getter for: Lcom/mediatek/internal/telephony/MtkRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$400(Lcom/mediatek/internal/telephony/MtkRetryManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    if-ne v2, v3, :cond_8d

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v3

    if-eq v3, v2, :cond_8d

    .line 95
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    # getter for: Lcom/mediatek/internal/telephony/MtkRetryManager;->mSameApnRetryCount:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$500(Lcom/mediatek/internal/telephony/MtkRetryManager;)I

    move-result v3

    .line 96
    .local v3, "sameApnRetryCountTemp":I
    move-wide v4, v0

    .line 97
    .local v4, "modemSuggestedDelayTemp":J
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    # getter for: Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$600(Lcom/mediatek/internal/telephony/MtkRetryManager;)I

    move-result v6

    .line 98
    .local v6, "currentApnIndexTemp":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    # invokes: Lcom/mediatek/internal/telephony/MtkRetryManager;->configureRetryOnly()V
    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$700(Lcom/mediatek/internal/telephony/MtkRetryManager;)V

    .line 99
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    # setter for: Lcom/mediatek/internal/telephony/MtkRetryManager;->mSameApnRetryCount:I
    invoke-static {v7, v3}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$802(Lcom/mediatek/internal/telephony/MtkRetryManager;I)I

    .line 100
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkRetryManager$1;->this$0:Lcom/mediatek/internal/telephony/MtkRetryManager;

    # setter for: Lcom/mediatek/internal/telephony/MtkRetryManager;->mCurrentApnIndex:I
    invoke-static {v7, v6}, Lcom/mediatek/internal/telephony/MtkRetryManager;->access$902(Lcom/mediatek/internal/telephony/MtkRetryManager;I)I

    .line 103
    .end local v2    # "subId":I
    .end local v3    # "sameApnRetryCountTemp":I
    .end local v4    # "modemSuggestedDelayTemp":J
    .end local v6    # "currentApnIndexTemp":I
    :cond_8d
    return-void
.end method

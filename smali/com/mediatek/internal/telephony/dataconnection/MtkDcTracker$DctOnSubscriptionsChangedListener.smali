.class Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "MtkDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DctOnSubscriptionsChangedListener"
.end annotation


# instance fields
.field public final mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .registers 3

    .line 203
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 204
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;

    .line 203
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 210
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubscriptionsChanged: subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviousSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 212
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 213
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-eq v1, v0, :cond_50

    .line 214
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onSubIdReady()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    goto :goto_50

    .line 216
    :cond_3e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 217
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 219
    :cond_50
    :goto_50
    return-void
.end method

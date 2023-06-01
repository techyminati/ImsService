.class Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;
.super Ljava/lang/Object;
.source "MtkSubscriptionInfoUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    .line 881
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 883
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    # ++operator for: Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$704(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)I

    .line 884
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadIccIdCount:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$700(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_28

    .line 885
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    # invokes: Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->checkAllIccIdReady()Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$800(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 886
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mReadCurrentIccIdRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$900(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_28

    .line 888
    :cond_23
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$2;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    # invokes: Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$1000(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)V

    .line 891
    :cond_28
    :goto_28
    return-void
.end method

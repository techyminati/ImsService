.class public Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;
.super Landroid/net/netstats/provider/NetworkStatsProvider;
.source "MtkDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MobileDataUsageProvider"
.end annotation


# instance fields
.field private mIfaceSnapshot:Landroid/net/NetworkStats;

.field private mToken:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .registers 6
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 3885
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-direct {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;-><init>()V

    .line 3886
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->mToken:I

    .line 3887
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onRequestStatsUpdate$0$MtkDcTracker$MobileDataUsageProvider(I)V
    .registers 2
    .param p1, "token"    # I

    .line 3891
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->pushMobileDataUsageStats(I)V

    return-void
.end method

.method public onRequestStatsUpdate(I)V
    .registers 4
    .param p1, "token"    # I

    .line 3890
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3891
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3893
    :cond_16
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->mToken:I

    .line 3894
    return-void
.end method

.method public onSetAlert(J)V
    .registers 3
    .param p1, "quotaBytes"    # J

    .line 3902
    return-void
.end method

.method public onSetLimit(Ljava/lang/String;J)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 3898
    return-void
.end method

.method public pushMobileDataUsageStats(I)V
    .registers 7
    .param p1, "token"    # I

    .line 3904
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Landroid/net/NetworkStats;

    move-result-object v0

    if-nez v0, :cond_10

    .line 3905
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    const-string v1, "mMobileDataUsage == null"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$1300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Ljava/lang/String;)V

    .line 3906
    return-void

    .line 3908
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Landroid/net/NetworkStats;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 3910
    .local v0, "ifaceDiff":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    :try_start_1d
    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 3911
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_28} :catch_29

    .line 3914
    goto :goto_40

    .line 3912
    :catch_29
    move-exception v1

    .line 3913
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot report network stats "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->access$1300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Ljava/lang/String;)V

    .line 3915
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_40
    return-void
.end method

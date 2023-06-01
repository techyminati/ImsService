.class Lcom/mediatek/net/networkstats/MtkTestSimHandler$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "MtkTestSimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/net/networkstats/MtkTestSimHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/net/networkstats/MtkTestSimHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/net/networkstats/MtkTestSimHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/net/networkstats/MtkTestSimHandler;

    .line 93
    iput-object p1, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler$1;->this$0:Lcom/mediatek/net/networkstats/MtkTestSimHandler;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/mediatek/net/networkstats/MtkTestSimHandler$1;->this$0:Lcom/mediatek/net/networkstats/MtkTestSimHandler;

    # getter for: Lcom/mediatek/net/networkstats/MtkTestSimHandler;->mHandler:Lcom/mediatek/net/networkstats/MtkTestSimHandler$InternalHandler;
    invoke-static {v0}, Lcom/mediatek/net/networkstats/MtkTestSimHandler;->access$100(Lcom/mediatek/net/networkstats/MtkTestSimHandler;)Lcom/mediatek/net/networkstats/MtkTestSimHandler$InternalHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/net/networkstats/MtkTestSimHandler$InternalHandler;->sendEmptyMessage(I)Z

    .line 97
    return-void
.end method

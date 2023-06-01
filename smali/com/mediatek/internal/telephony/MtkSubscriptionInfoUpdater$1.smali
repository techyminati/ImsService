.class Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkSubscriptionInfoUpdater.java"


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

    .line 857
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 860
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive, Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$000(Ljava/lang/String;)V

    .line 863
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 864
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$100(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    .line 865
    .local v1, "subIdList":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v2, :cond_38

    aget v4, v1, v3

    .line 866
    .local v4, "subId":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    # invokes: Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->updateSubName(I)V
    invoke-static {v5, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$200(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;I)V

    .line 865
    .end local v4    # "subId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .end local v1    # "subIdList":[I
    :cond_38
    goto :goto_74

    .line 868
    :cond_39
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 872
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mOldDensityDpi:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$300(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)I

    move-result v1

    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$400()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_75

    .line 873
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$500()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    # setter for: Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mOldDensityDpi:I
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$302(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;I)I

    .line 874
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->access$600(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    goto :goto_75

    .line 868
    :cond_74
    :goto_74
    nop

    .line 877
    :cond_75
    :goto_75
    return-void
.end method

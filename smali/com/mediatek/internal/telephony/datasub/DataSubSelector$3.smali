.class Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;
.super Ljava/lang/Object;
.source "DataSubSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->updateNetworkMode(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

.field final synthetic val$subId:I

.field final synthetic val$subInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/util/List;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 327
    iput-object p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    iput-object p2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subInfoList:Ljava/util/List;

    iput p3, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 329
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 330
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    iget v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subId:I

    # invokes: Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->updateNetworkModeUtil(II)V
    invoke-static {v0, v2, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$1200(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;II)V

    goto :goto_43

    .line 331
    :cond_13
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_43

    .line 332
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_43

    .line 333
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 334
    .local v2, "tempSubId":I
    iget v3, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->val$subId:I

    if-ne v2, v3, :cond_3a

    .line 335
    iget-object v3, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->updateNetworkModeUtil(II)V
    invoke-static {v3, v2, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$1200(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;II)V

    goto :goto_40

    .line 338
    :cond_3a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    const/4 v4, 0x0

    # invokes: Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->updateNetworkModeUtil(II)V
    invoke-static {v3, v2, v4}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$1200(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;II)V

    .line 332
    .end local v2    # "tempSubId":I
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 343
    .end local v0    # "index":I
    :cond_43
    :goto_43
    return-void
.end method

.class Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 148
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 152
    const/4 v0, -0x1

    const-string v1, "subscription"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getSubId()I

    move-result v1

    if-ne v0, v1, :cond_3c

    .line 155
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive carrierConfig changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    # getter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->access$000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->access$100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$1;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->cacheCarrierConfiguration()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->access$200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)V

    .line 159
    .end local v0    # "subId":I
    :cond_3c
    return-void
.end method

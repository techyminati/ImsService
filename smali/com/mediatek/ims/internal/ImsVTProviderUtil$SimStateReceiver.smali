.class Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTProviderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimStateReceiver"
.end annotation


# instance fields
.field private mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;Lcom/mediatek/ims/internal/ImsVTProviderUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .param p2, "x1"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil$1;

    .line 343
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 353
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    const-string v2, "phone"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 356
    .local v2, "slotId":I
    const-string v3, "android.telephony.extra.SIM_STATE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 359
    .local v3, "simState":I
    if-ne v2, v1, :cond_0

    .line 360
    return-void

    .line 363
    :cond_0
    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, ", simState:"

    const-string v5, "ImsVT Util"

    if-eqz v1, :cond_1

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received ACTION_SIM_CARD_STATE_CHANGED, slotId:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->setSimCardState(II)V

    goto :goto_0

    .line 371
    :cond_1
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received ACTION_SIM_APPLICATION_STATE_CHANGED, slotId:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->setSimAppState(II)V

    .line 379
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isSimStateStable(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 380
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->access$100(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)[Landroid/os/ConditionVariable;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 382
    :cond_3
    return-void
.end method

.method public setOwner(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V
    .locals 0
    .param p1, "owner"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 348
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;->mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 349
    return-void
.end method

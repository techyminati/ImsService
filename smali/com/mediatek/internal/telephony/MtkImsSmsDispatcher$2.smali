.class Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "MtkImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;

    .line 110
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$2;->this$0:Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImsSmsIntentReceiver: action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsSmsDispacher"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$2;->this$0:Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 118
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 119
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$2;->this$0:Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;

    # getter for: Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->access$000(Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 120
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;>;"
    goto :goto_33

    .line 121
    :cond_52
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$2;->this$0:Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 123
    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_59
    return-void
.end method

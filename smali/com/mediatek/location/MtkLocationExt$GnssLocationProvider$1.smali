.class Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkLocationExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->registerIntentReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    .line 117
    iput-object p1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$1;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 122
    iget-object v1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$1;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    # invokes: Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->getGpsTimeSyncState()Z
    invoke-static {v1}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->access$000(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Z

    move-result v1

    .line 123
    .local v1, "gpsTimeSyncStatus":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BOOT_COMPLETED, GPS Time sync is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkLocationExt"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$1;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    # invokes: Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->setGpsTimeSyncFlag(Z)V
    invoke-static {v2, v1}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->access$100(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;Z)V

    .line 126
    iget-object v2, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$1;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    # getter for: Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mGpsHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->access$200(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 128
    .end local v1    # "gpsTimeSyncStatus":Z
    :cond_3b
    return-void
.end method

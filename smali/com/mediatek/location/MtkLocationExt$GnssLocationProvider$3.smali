.class Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$3;
.super Ljava/lang/Thread;
.source "MtkLocationExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->startUsingGpsWithTimeout(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

.field final synthetic val$milliseconds:I

.field final synthetic val$timeoutMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    .line 273
    iput-object p1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$3;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    iput p2, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$3;->val$milliseconds:I

    iput-object p3, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$3;->val$timeoutMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "isTimeout":Z
    :try_start_1
    iget v1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$3;->val$milliseconds:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_7} :catch_9

    .line 278
    const/4 v0, 0x1

    .line 280
    goto :goto_a

    .line 279
    :catch_9
    move-exception v1

    .line 281
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkLocationExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    .line 283
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 284
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$3;->val$timeoutMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    iget-object v2, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$3;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    # getter for: Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mGpsToastHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->access$500(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 287
    .end local v1    # "m":Landroid/os/Message;
    :cond_35
    iget-object v1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$3;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    # getter for: Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v1}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->access$700(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$3;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    # getter for: Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v2}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->access$600(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 288
    iget-object v1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$3;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mIsGpsTimeSyncRunning:Z
    invoke-static {v1, v2}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->access$802(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;Z)Z

    .line 289
    return-void
.end method

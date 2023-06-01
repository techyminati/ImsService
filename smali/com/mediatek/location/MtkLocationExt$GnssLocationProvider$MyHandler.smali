.class Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$MyHandler;
.super Landroid/os/Handler;
.source "MtkLocationExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;Landroid/os/Looper;)V
    .registers 3
    .param p2, "l"    # Landroid/os/Looper;

    .line 134
    iput-object p1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$MyHandler;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    .line 135
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "MtkLocationExt"

    packed-switch v0, :pswitch_data_38

    goto :goto_37

    .line 149
    :pswitch_8
    iget-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$MyHandler;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    # getter for: Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->access$300(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/BlueskyUtility;->sendBlueskyBroadcast(Landroid/content/Context;)V

    .line 150
    const-string v0, "Finish Bluesky broadcast"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 142
    :pswitch_17
    iget-object v0, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$MyHandler;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    # invokes: Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->getGpsTimeSyncState()Z
    invoke-static {v0}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->access$000(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Z

    move-result v0

    .line 144
    .local v0, "gpsTimeSyncStatus":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS Time sync is changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$MyHandler;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    invoke-virtual {v1, v0}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->onGpsTimeChanged(Z)V

    .line 147
    nop

    .line 153
    .end local v0    # "gpsTimeSyncStatus":Z
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x4
        :pswitch_17
        :pswitch_8
    .end packed-switch
.end method

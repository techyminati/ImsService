.class Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;
.super Ljava/lang/Object;
.source "WfcLocationHandler.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WfcLocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListenerImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;


# direct methods
.method private constructor <init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;Lcom/mediatek/wfo/impl/WfcLocationHandler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;
    .param p2, "x1"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$1;

    .line 249
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 11
    .param p1, "location"    # Landroid/location/Location;

    .line 252
    # getter for: Lcom/mediatek/wfo/impl/WfcLocationHandler;->ENGLOAD:Z
    invoke-static {}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 253
    const-string v0, "WfcLocationHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 255
    :cond_1d
    const-string v0, "WfcLocationHandler"

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_24
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 259
    .local v0, "newNlpTime":J
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLocationChanged newNlpTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, "isCache":Z
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    # getter for: Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$700(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 262
    .local v4, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLocationChanged locationInfo time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 263
    iget-wide v5, v4, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mTime:J

    cmp-long v5, v5, v0

    if-nez v5, :cond_74

    .line 264
    const/4 v2, 0x1

    .line 266
    .end local v4    # "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    :cond_74
    goto :goto_49

    .line 268
    :cond_75
    if-eqz v2, :cond_92

    .line 269
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLocationChanged isCache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    # operator++ for: Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeocodingFailRetry:I
    invoke-static {v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$808(Lcom/mediatek/wfo/impl/WfcLocationHandler;)I

    .line 273
    :cond_92
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    # invokes: Lcom/mediatek/wfo/impl/WfcLocationHandler;->cancelNetworkLocationRequest()V
    invoke-static {v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$900(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V

    .line 274
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    # getter for: Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$1000(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 275
    :try_start_9e
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/4 v5, 0x0

    # setter for: Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeout:Z
    invoke-static {v4, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$1102(Lcom/mediatek/wfo/impl/WfcLocationHandler;Z)Z

    .line 276
    monitor-exit v3
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_bf

    .line 278
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const-string v4, "removeMessages: EVENT_GET_LAST_KNOWN_LOCATION"

    invoke-virtual {v3, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v4, 0xbb9

    invoke-virtual {v3, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->removeMessages(I)V

    .line 281
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v4, 0xbba

    invoke-virtual {v3, v4, v5, v5, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 282
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 283
    return-void

    .line 276
    :catchall_bf
    move-exception v4

    :try_start_c0
    monitor-exit v3
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v4
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 297
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 298
    return-void
.end method

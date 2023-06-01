.class Lcom/mediatek/internal/telephony/NrMap$MtkHandler;
.super Landroid/os/Handler;
.source "NrMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/NrMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/NrMap;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/NrMap;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 468
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    .line 469
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 470
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 474
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_146

    goto/16 :goto_144

    .line 514
    :sswitch_8
    const/4 v0, 0x0

    .line 515
    .local v0, "listen":Z
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$600()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 516
    :try_start_e
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->listening:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$1100(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v3

    move v0, v3

    .line 517
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_76

    .line 518
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ServiceState;

    # setter for: Lcom/mediatek/internal/telephony/NrMap;->mSS:Landroid/telephony/ServiceState;
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/NrMap;->access$1602(Lcom/mediatek/internal/telephony/NrMap;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 519
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SERVICE_STATE_CHANGE camp_SA="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->camp_SA:Z
    invoke-static {v4}, Lcom/mediatek/internal/telephony/NrMap;->access$1700(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " listening="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mSS:Landroid/telephony/ServiceState;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$1600(Lcom/mediatek/internal/telephony/NrMap;)Landroid/telephony/ServiceState;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 522
    .local v2, "wwanPsRegState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v2, :cond_6f

    .line 523
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v3

    const/16 v5, 0x14

    if-ne v3, v5, :cond_6f

    .line 524
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # setter for: Lcom/mediatek/internal/telephony/NrMap;->camp_SA:Z
    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/NrMap;->access$1702(Lcom/mediatek/internal/telephony/NrMap;Z)Z

    .line 525
    if-eqz v0, :cond_144

    .line 526
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # invokes: Lcom/mediatek/internal/telephony/NrMap;->startSingleLocationUpdate()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/NrMap;->access$1500(Lcom/mediatek/internal/telephony/NrMap;)V

    goto/16 :goto_144

    .line 529
    :cond_6f
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # setter for: Lcom/mediatek/internal/telephony/NrMap;->camp_SA:Z
    invoke-static {v3, v1}, Lcom/mediatek/internal/telephony/NrMap;->access$1702(Lcom/mediatek/internal/telephony/NrMap;Z)Z

    .line 531
    goto/16 :goto_144

    .line 517
    .end local v2    # "wwanPsRegState":Landroid/telephony/NetworkRegistrationInfo;
    :catchall_76
    move-exception v1

    :try_start_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v1

    .line 512
    .end local v0    # "listen":Z
    :sswitch_79
    goto/16 :goto_144

    .line 488
    :sswitch_7b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # invokes: Lcom/mediatek/internal/telephony/NrMap;->checkLocationProxyAppPermission()Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/NrMap;->access$1000(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v0

    .line 489
    .local v0, "permission":Z
    const/4 v2, 0x0

    .line 490
    .local v2, "listen":Z
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$600()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 491
    :try_start_87
    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->listening:Z
    invoke-static {v4}, Lcom/mediatek/internal/telephony/NrMap;->access$1100(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v4

    move v2, v4

    .line 492
    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_87 .. :try_end_8f} :catchall_101

    .line 493
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_REQUEST_LISTENER_UPDATE listening="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " permission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-nez v0, :cond_e9

    .line 497
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$600()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 498
    :try_start_b8
    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # setter for: Lcom/mediatek/internal/telephony/NrMap;->listening:Z
    invoke-static {v4, v1}, Lcom/mediatek/internal/telephony/NrMap;->access$1102(Lcom/mediatek/internal/telephony/NrMap;Z)Z

    .line 499
    monitor-exit v3
    :try_end_be
    .catchall {:try_start_b8 .. :try_end_be} :catchall_e6

    .line 501
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$1400(Lcom/mediatek/internal/telephony/NrMap;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SP_KEY:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/NrMap;->access$1300(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 502
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->NR_MAP_SW_KEY:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$1200(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_144

    .line 499
    :catchall_e6
    move-exception v1

    :try_start_e7
    monitor-exit v3
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v1

    .line 503
    :cond_e9
    if-eqz v2, :cond_f1

    .line 504
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # invokes: Lcom/mediatek/internal/telephony/NrMap;->startSingleLocationUpdate()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/NrMap;->access$1500(Lcom/mediatek/internal/telephony/NrMap;)V

    goto :goto_144

    .line 506
    :cond_f1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/NrMap;->access$900(Lcom/mediatek/internal/telephony/NrMap;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$800(Lcom/mediatek/internal/telephony/NrMap;)Landroid/location/LocationListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 508
    goto :goto_144

    .line 492
    :catchall_101
    move-exception v1

    :try_start_102
    monitor-exit v3
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    throw v1

    .line 476
    .end local v0    # "permission":Z
    .end local v2    # "listen":Z
    :sswitch_104
    const/4 v0, 0x0

    .line 477
    .local v0, "start":Z
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 478
    :try_start_10a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->started:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$700(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v2

    move v0, v2

    .line 479
    monitor-exit v1
    :try_end_112
    .catchall {:try_start_10a .. :try_end_112} :catchall_141

    .line 480
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_REQUEST_LOCATION_UPDATE started="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-eqz v0, :cond_144

    .line 482
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/NrMap;->access$900(Lcom/mediatek/internal/telephony/NrMap;)Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "network"

    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$MtkHandler;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    .line 483
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$800(Lcom/mediatek/internal/telephony/NrMap;)Landroid/location/LocationListener;

    move-result-object v3

    const/4 v4, 0x0

    .line 482
    invoke-virtual {v1, v2, v3, v4}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_144

    .line 479
    :catchall_141
    move-exception v2

    :try_start_142
    monitor-exit v1
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    throw v2

    .line 534
    .end local v0    # "start":Z
    :cond_144
    :goto_144
    return-void

    nop

    :sswitch_data_146
    .sparse-switch
        0x1 -> :sswitch_104
        0x2 -> :sswitch_7b
        0x65 -> :sswitch_79
        0xc9 -> :sswitch_8
    .end sparse-switch
.end method

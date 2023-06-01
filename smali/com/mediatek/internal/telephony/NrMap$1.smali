.class Lcom/mediatek/internal/telephony/NrMap$1;
.super Ljava/lang/Object;
.source "NrMap.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/NrMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/NrMap;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/NrMap;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/NrMap;

    .line 580
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 14
    .param p1, "location"    # Landroid/location/Location;

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "interval":I
    const/4 v1, 0x0

    .line 586
    .local v1, "listen":Z
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$600()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 587
    :try_start_7
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->interval_location_update:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$1800(Lcom/mediatek/internal/telephony/NrMap;)I

    move-result v3

    move v0, v3

    .line 588
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->listening:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$1100(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v3

    move v1, v3

    .line 589
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_18f

    .line 591
    const/4 v2, 0x1

    if-nez p1, :cond_39

    .line 592
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "network location get null, unexpected result"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/NrMap;->access$1900(Lcom/mediatek/internal/telephony/NrMap;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    .line 594
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mtkHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/NrMap;->access$1900(Lcom/mediatek/internal/telephony/NrMap;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    .line 593
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 596
    return-void

    .line 599
    :cond_39
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 600
    .local v3, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 612
    .local v5, "longitude":D
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v7

    if-nez v7, :cond_53

    .line 613
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "getGeoLocationFromLatLong: this system has no GeoCoder implementation!!"

    invoke-static {v2, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void

    .line 617
    :cond_53
    iget-object v7, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # invokes: Lcom/mediatek/internal/telephony/NrMap;->getAddByLocation(DD)Landroid/location/Address;
    invoke-static {v7, v3, v4, v5, v6}, Lcom/mediatek/internal/telephony/NrMap;->access$2000(Lcom/mediatek/internal/telephony/NrMap;DD)Landroid/location/Address;

    move-result-object v7

    .line 618
    .local v7, "add":Landroid/location/Address;
    if-eqz v7, :cond_179

    .line 620
    invoke-virtual {v7}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    .line 621
    .local v8, "iso":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6d

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9b

    .line 622
    :cond_6d
    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$1400(Lcom/mediatek/internal/telephony/NrMap;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    if-eqz v9, :cond_9b

    .line 623
    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$1400(Lcom/mediatek/internal/telephony/NrMap;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object v9

    if-eqz v9, :cond_9b

    .line 624
    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$1400(Lcom/mediatek/internal/telephony/NrMap;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/LocaleTracker;->getCurrentCountry()Ljava/lang/String;

    move-result-object v8

    .line 629
    :cond_9b
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$600()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 630
    :try_start_a0
    iget-object v10, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/mediatek/internal/telephony/NrMap;->current_city:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/NrMap;->access$2102(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)Ljava/lang/String;

    .line 631
    monitor-exit v9
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_176

    .line 632
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 633
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mSS:Landroid/telephony/ServiceState;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$1600(Lcom/mediatek/internal/telephony/NrMap;)Landroid/telephony/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_179

    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->mSS:Landroid/telephony/ServiceState;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$1600(Lcom/mediatek/internal/telephony/NrMap;)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    const/4 v9, 0x3

    if-eq v2, v9, :cond_179

    .line 634
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNKNOWN:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$2200()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V
    invoke-static {v2, v9}, Lcom/mediatek/internal/telephony/NrMap;->access$2300(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)V

    goto/16 :goto_179

    .line 636
    :cond_d0
    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_161

    .line 637
    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->camp_SA:Z
    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$1700(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v9

    if-eqz v9, :cond_11f

    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->city_sql:Lcom/mediatek/internal/telephony/NrMap$CitySQL;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$200(Lcom/mediatek/internal/telephony/NrMap;)Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    move-result-object v9

    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->findByCityName(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11f

    .line 638
    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "find a new SA city "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v9, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->city_sql:Lcom/mediatek/internal/telephony/NrMap$CitySQL;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/NrMap;->access$200(Lcom/mediatek/internal/telephony/NrMap;)Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    move-result-object v9

    const-string v10, "n/a"

    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v8, v11, v2}, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 641
    :cond_11f
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->manually_set:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$2400(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v2

    if-nez v2, :cond_179

    .line 642
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->city_sql:Lcom/mediatek/internal/telephony/NrMap$CitySQL;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$200(Lcom/mediatek/internal/telephony/NrMap;)Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->findByIsoName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13d

    .line 643
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNKNOWN:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$2200()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V
    invoke-static {v2, v9}, Lcom/mediatek/internal/telephony/NrMap;->access$2300(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)V

    goto :goto_179

    .line 644
    :cond_13d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->city_sql:Lcom/mediatek/internal/telephony/NrMap$CitySQL;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$200(Lcom/mediatek/internal/telephony/NrMap;)Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    move-result-object v2

    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->findByCityName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_157

    .line 645
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->NR_SET_AVAILABLE:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$2500()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V
    invoke-static {v2, v9}, Lcom/mediatek/internal/telephony/NrMap;->access$2300(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)V

    goto :goto_179

    .line 647
    :cond_157
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNAVAILABLE:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$2600()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V
    invoke-static {v2, v9}, Lcom/mediatek/internal/telephony/NrMap;->access$2300(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)V

    goto :goto_179

    .line 651
    :cond_161
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "got a empty city"

    invoke-static {v2, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->NR_SET_UNKNOWN:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$2200()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mediatek/internal/telephony/NrMap;->setNrCity(Ljava/lang/String;)V
    invoke-static {v2, v9}, Lcom/mediatek/internal/telephony/NrMap;->access$2300(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;)V

    goto :goto_179

    .line 631
    :catchall_176
    move-exception v2

    :try_start_177
    monitor-exit v9
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_176

    throw v2

    .line 655
    .end local v8    # "iso":Ljava/lang/String;
    :cond_179
    :goto_179
    if-eqz v1, :cond_188

    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->signal_update:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$2700(Lcom/mediatek/internal/telephony/NrMap;)Z

    move-result v2

    if-eqz v2, :cond_188

    .line 656
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # invokes: Lcom/mediatek/internal/telephony/NrMap;->startPassiveLocationListener()V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$2800(Lcom/mediatek/internal/telephony/NrMap;)V

    .line 658
    :cond_188
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$1;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    const/4 v8, 0x0

    # setter for: Lcom/mediatek/internal/telephony/NrMap;->signal_update:Z
    invoke-static {v2, v8}, Lcom/mediatek/internal/telephony/NrMap;->access$2702(Lcom/mediatek/internal/telephony/NrMap;Z)Z

    .line 659
    return-void

    .line 589
    .end local v3    # "latitude":D
    .end local v5    # "longitude":D
    .end local v7    # "add":Landroid/location/Address;
    :catchall_18f
    move-exception v3

    :try_start_190
    monitor-exit v2
    :try_end_191
    .catchall {:try_start_190 .. :try_end_191} :catchall_18f

    throw v3
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 664
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 669
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 674
    return-void
.end method

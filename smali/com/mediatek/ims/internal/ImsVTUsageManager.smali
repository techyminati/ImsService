.class public Lcom/mediatek/ims/internal/ImsVTUsageManager;
.super Ljava/lang/Object;
.source "ImsVTUsageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ImsVT Usage"

.field public static final VILTE_UID:I = 0x3e8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

.field private mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

.field public mId:I

.field private mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

.field private mNeedReportDataUsage:Z

.field private mPreviousUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

.field protected mSimId:I

.field public mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    .line 253
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mDataUsageUpdateRegistrants:Landroid/os/RegistrantList;

    .line 256
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v1, "Current"

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 257
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v1, "Previous"

    invoke-direct {v0, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mPreviousUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 258
    return-void
.end method

.method private canRequestDataUsage()Z
    .locals 5

    .line 374
    const-string v0, "ImsVT Usage"

    const-string v1, "[canRequestDataUsage]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v1, "persist.vendor.vt.data_simulate"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 377
    .local v1, "forceRequest":Z
    if-eqz v1, :cond_0

    .line 378
    const/4 v0, 0x1

    return v0

    .line 381
    :cond_0
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    invoke-static {v2}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 383
    .local v2, "subId":I
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v3, v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    const-string v4, "ignore_data_enabled_changed_for_video_calls"

    invoke-direct {p0, v3, v4, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    .line 388
    .local v3, "ignoreDataEnabledChanged":Z
    iget-boolean v4, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 390
    const-string v4, "[canRequestDataUsage] set dataUsage as false"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    .line 394
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mNeedReportDataUsage:Z

    return v0
.end method

.method private getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .line 399
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 401
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 403
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 407
    :cond_0
    if-eqz v1, :cond_1

    .line 408
    invoke-virtual {v1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 411
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private getTagUsage(Landroid/net/NetworkStats;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    .locals 31
    .param p1, "uidSnapshot"    # Landroid/net/NetworkStats;
    .param p2, "lte_iface"    # Ljava/lang/String;
    .param p3, "wifi_iface"    # Ljava/lang/String;

    .line 416
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTagUsage uid:1000, LTE iface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", WiFi iface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsVT Usage"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-wide/16 v4, 0x0

    .line 419
    .local v4, "TotalLteTxBytes":J
    const-wide/16 v6, 0x0

    .line 420
    .local v6, "TotalLteRxBytes":J
    const-wide/16 v8, 0x0

    .line 421
    .local v8, "TotalWifiTxBytes":J
    const-wide/16 v10, 0x0

    .line 423
    .local v10, "TotalWifiRxBytes":J
    const/4 v2, 0x0

    .line 425
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    move-object/from16 v12, p0

    iget v13, v12, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    const/high16 v14, -0x1000000

    add-int/2addr v14, v13

    .line 426
    .local v14, "lte_tag":I
    const/high16 v15, -0xf00000

    add-int/2addr v13, v15

    .line 428
    .local v13, "wifi_tag":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v12

    if-ge v15, v12, :cond_2

    .line 430
    move-object/from16 v12, p1

    invoke-virtual {v12, v15, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 433
    iget-object v12, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {v12, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const/16 v0, 0x3e8

    if-eqz v12, :cond_0

    iget v12, v2, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne v12, v0, :cond_0

    iget v12, v2, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne v12, v14, :cond_0

    .line 435
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTaggedSnapshot LTE entry:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move v0, v14

    move v12, v15

    .end local v14    # "lte_tag":I
    .end local v15    # "j":I
    .local v0, "lte_tag":I
    .local v12, "j":I
    iget-wide v14, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v14

    .line 438
    iget-wide v14, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v6, v14

    goto :goto_1

    .line 433
    .end local v0    # "lte_tag":I
    .end local v12    # "j":I
    .restart local v14    # "lte_tag":I
    .restart local v15    # "j":I
    :cond_0
    move v0, v14

    move v12, v15

    .line 442
    .end local v14    # "lte_tag":I
    .end local v15    # "j":I
    .restart local v0    # "lte_tag":I
    .restart local v12    # "j":I
    :goto_1
    iget-object v14, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {v14, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    iget v14, v2, Landroid/net/NetworkStats$Entry;->uid:I

    const/16 v15, 0x3e8

    if-ne v14, v15, :cond_1

    iget v14, v2, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne v14, v13, :cond_1

    .line 444
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getTaggedSnapshot WiFi entry:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-wide v14, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v8, v14

    .line 447
    iget-wide v14, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v10, v14

    .line 428
    :cond_1
    add-int/lit8 v15, v12, 0x1

    move-object/from16 v12, p0

    move v14, v0

    move-object/from16 v0, p2

    .end local v12    # "j":I
    .restart local v15    # "j":I
    goto :goto_0

    .end local v0    # "lte_tag":I
    .restart local v14    # "lte_tag":I
    :cond_2
    move v0, v14

    move v12, v15

    .line 451
    .end local v14    # "lte_tag":I
    .end local v15    # "j":I
    .restart local v0    # "lte_tag":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getTaggedSnapshot LTE: Tx="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", Rx="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", Total="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v16, v4, v6

    .line 453
    move/from16 v30, v0

    .end local v0    # "lte_tag":I
    .local v30, "lte_tag":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getTaggedSnapshot WiFi: Tx="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v14, v8, v10

    .line 456
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    add-long v22, v6, v4

    add-long v28, v10, v8

    const-string v17, "Tag"

    move-object/from16 v16, v0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    invoke-direct/range {v16 .. v29}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;JJJJJJ)V

    return-object v0
.end method

.method private updateUsage(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 25
    .param p1, "tagUsage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    invoke-static {v2}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 465
    .local v2, "subId":I
    iget-object v3, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v3, v3, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 466
    .local v3, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 468
    .local v4, "subscriberId":Ljava/lang/String;
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v7

    .line 469
    .local v7, "initWifiTxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v10

    .line 470
    .local v10, "initWifiRxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v13

    .line 472
    .local v13, "initWifiTxRxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v15

    .line 473
    .local v15, "curWifiTxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v5, v9}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v17

    .line 474
    .local v17, "curWifiRxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v5, v12}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v19

    .line 476
    .local v19, "curWifiTxRxBytes":J
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mPreviousUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    iget-object v12, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v5, v12}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->updateFrom(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 482
    invoke-virtual {v1, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v5, v21, v23

    if-nez v5, :cond_1

    .line 483
    invoke-virtual {v1, v9}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v21

    cmp-long v5, v21, v23

    if-nez v5, :cond_0

    .line 485
    move-wide/from16 v21, v10

    .end local v10    # "initWifiRxBytes":J
    .local v21, "initWifiRxBytes":J
    add-long v9, v15, v7

    invoke-virtual {v1, v6, v9, v10}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->setWifiUsage(IJ)V

    .line 486
    add-long v10, v17, v21

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v10, v11}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->setWifiUsage(IJ)V

    .line 487
    add-long v9, v19, v13

    const/4 v11, 0x3

    invoke-virtual {v1, v11, v9, v10}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->setWifiUsage(IJ)V

    goto :goto_0

    .line 483
    .end local v21    # "initWifiRxBytes":J
    .restart local v10    # "initWifiRxBytes":J
    :cond_0
    move-wide/from16 v21, v10

    .end local v10    # "initWifiRxBytes":J
    .restart local v21    # "initWifiRxBytes":J
    goto :goto_0

    .line 482
    .end local v21    # "initWifiRxBytes":J
    .restart local v10    # "initWifiRxBytes":J
    :cond_1
    move-wide/from16 v21, v10

    .line 490
    .end local v10    # "initWifiRxBytes":J
    .restart local v21    # "initWifiRxBytes":J
    :goto_0
    iget-object v9, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget v10, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    invoke-virtual {v9, v10, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->usageSet(ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 492
    iget-object v9, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v1, v9}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->subtraction(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 493
    iget-object v9, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v9, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->updateFrom(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 496
    new-instance v9, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    iget-object v10, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v11, "Delta"

    invoke-direct {v9, v11, v10}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 497
    .local v9, "deltaUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    iget-object v10, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mPreviousUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->subtraction(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 499
    new-instance v10, Landroid/content/Intent;

    iget-object v11, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v11}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v11

    invoke-interface {v11}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->getVTUsageAction()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v10, "VTUsageIntent":Landroid/content/Intent;
    const/4 v5, 0x2

    invoke-virtual {v9, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v11

    const-string v5, "lterxbytes"

    invoke-virtual {v10, v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 501
    invoke-virtual {v9, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v11

    const-string v5, "ltetxbytes"

    invoke-virtual {v10, v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 502
    const/4 v5, 0x2

    invoke-virtual {v9, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v11

    const-string v5, "wifirxbytes"

    invoke-virtual {v10, v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 503
    invoke-virtual {v9, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v11

    const-string v5, "wifiTxbytes"

    invoke-virtual {v10, v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 504
    const-string v5, "subscriberId"

    invoke-virtual {v10, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendVTusageBroadcast:  lterxbytes="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const/4 v5, 0x2

    invoke-virtual {v9, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", ltetxbytes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v9, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", wifirxbytes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const/4 v5, 0x2

    invoke-virtual {v9, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", wifiTxbytes="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v9, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", subscriberId="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 505
    const-string v6, "ImsVT Usage"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v5, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v5, v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-virtual {v6}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/ims/plugin/ImsCallOemPlugin;->getVTUsagePermission()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 512
    return-void
.end method


# virtual methods
.method public requestCallDataUsage()Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    .locals 17

    .line 278
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] [onRequestCallDataUsage] Start"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ImsVT Usage"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->canRequestDataUsage()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 281
    return-object v4

    .line 287
    :cond_0
    const-string v0, ""

    .line 288
    .local v0, "mActiveImsIface":Ljava/lang/String;
    const-string v5, ""

    .line 290
    .local v5, "mActiveWifiIface":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    invoke-static {v8}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "subIdStr":Ljava/lang/String;
    iget-object v8, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mVTProviderUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    iget-object v8, v8, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 292
    .local v8, "sConnMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v9

    .line 295
    .local v9, "nets":[Landroid/net/Network;
    if-eqz v9, :cond_9

    .line 297
    array-length v10, v9

    const/4 v11, 0x0

    move-object v12, v5

    move-object v5, v0

    .end local v0    # "mActiveImsIface":Ljava/lang/String;
    .local v5, "mActiveImsIface":Ljava/lang/String;
    .local v12, "mActiveWifiIface":Ljava/lang/String;
    :goto_0
    if-ge v11, v10, :cond_7

    aget-object v0, v9, v11

    .line 299
    .local v0, "net":Landroid/net/Network;
    invoke-virtual {v8, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 301
    .local v13, "nwInfo":Landroid/net/NetworkInfo;
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 303
    invoke-virtual {v8, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v14

    .line 305
    .local v14, "netCap":Landroid/net/NetworkCapabilities;
    if-nez v14, :cond_1

    .line 306
    const-string v15, "[onRequestCallDataUsage] netCap = null"

    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v16, v9

    goto/16 :goto_1

    .line 310
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onRequestCallDataUsage] nwInfo:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", checking net="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " cap="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v8, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 314
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 315
    invoke-virtual {v8, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 316
    .end local v12    # "mActiveWifiIface":Ljava/lang/String;
    .local v4, "mActiveWifiIface":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[onRequestCallDataUsage] mActiveWifiIface="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v4

    move-object/from16 v16, v9

    goto/16 :goto_1

    .line 318
    .end local v4    # "mActiveWifiIface":Ljava/lang/String;
    .restart local v12    # "mActiveWifiIface":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x4

    invoke-virtual {v14, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "networkSpecifier":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 321
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v9

    .end local v9    # "nets":[Landroid/net/Network;
    .local v16, "nets":[Landroid/net/Network;
    const-string v9, "[onRequestCallDataUsage] Get Ims interface with different sub, net="

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " specifier="

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " sub="

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "specifier.length="

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " sub.length="

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 321
    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    goto :goto_1

    .line 327
    .end local v16    # "nets":[Landroid/net/Network;
    .restart local v9    # "nets":[Landroid/net/Network;
    :cond_3
    move-object/from16 v16, v9

    .end local v9    # "nets":[Landroid/net/Network;
    .restart local v16    # "nets":[Landroid/net/Network;
    invoke-virtual {v8, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 328
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[onRequestCallDataUsage] mActiveImsIface="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v4    # "networkSpecifier":Ljava/lang/String;
    goto :goto_1

    .line 331
    .end local v16    # "nets":[Landroid/net/Network;
    .restart local v9    # "nets":[Landroid/net/Network;
    :cond_4
    move-object/from16 v16, v9

    .end local v9    # "nets":[Landroid/net/Network;
    .restart local v16    # "nets":[Landroid/net/Network;
    const-string v4, "[onRequestCallDataUsage] netCap neither contain WIF nor LTE."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 334
    .end local v16    # "nets":[Landroid/net/Network;
    .restart local v9    # "nets":[Landroid/net/Network;
    :cond_5
    move-object/from16 v16, v9

    .end local v9    # "nets":[Landroid/net/Network;
    .restart local v16    # "nets":[Landroid/net/Network;
    const-string v4, "[onRequestCallDataUsage] sConnMgr.getLinkProperties(net) = NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 301
    .end local v14    # "netCap":Landroid/net/NetworkCapabilities;
    .end local v16    # "nets":[Landroid/net/Network;
    .restart local v9    # "nets":[Landroid/net/Network;
    :cond_6
    move-object/from16 v16, v9

    .line 297
    .end local v0    # "net":Landroid/net/Network;
    .end local v9    # "nets":[Landroid/net/Network;
    .restart local v16    # "nets":[Landroid/net/Network;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v16

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 339
    .end local v13    # "nwInfo":Landroid/net/NetworkInfo;
    .end local v16    # "nets":[Landroid/net/Network;
    .restart local v9    # "nets":[Landroid/net/Network;
    :cond_7
    move-object/from16 v16, v9

    .end local v9    # "nets":[Landroid/net/Network;
    .restart local v16    # "nets":[Landroid/net/Network;
    if-ne v7, v5, :cond_8

    .line 340
    const-string v0, "[onRequestCallDataUsage] mActiveImsIface is empty"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v2, 0x0

    return-object v2

    .line 352
    :cond_8
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 353
    .local v4, "b":Landroid/os/IBinder;
    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v7

    .line 357
    .local v7, "mNetworkManager":Landroid/os/INetworkManagementService;
    const/4 v0, -0x1

    :try_start_0
    sget-object v9, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    invoke-interface {v7, v0, v9}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I[Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 359
    .local v0, "uidSnapshot":Landroid/net/NetworkStats;
    invoke-direct {v1, v0, v5, v12}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->getTagUsage(Landroid/net/NetworkStats;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    move-result-object v9

    .line 360
    .local v9, "tagUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    invoke-direct {v1, v9}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->updateUsage(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 362
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] [onRequestCallDataUsage] Finish (VIWIFI usage:"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const/4 v11, 0x3

    .line 363
    invoke-virtual {v2, v11}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v2, v1, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mCurrentUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 367
    .end local v0    # "uidSnapshot":Landroid/net/NetworkStats;
    .end local v9    # "tagUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v2, 0x0

    return-object v2

    .line 345
    .end local v4    # "b":Landroid/os/IBinder;
    .end local v7    # "mNetworkManager":Landroid/os/INetworkManagementService;
    .end local v12    # "mActiveWifiIface":Ljava/lang/String;
    .end local v16    # "nets":[Landroid/net/Network;
    .local v0, "mActiveImsIface":Ljava/lang/String;
    .local v5, "mActiveWifiIface":Ljava/lang/String;
    .local v9, "nets":[Landroid/net/Network;
    :cond_9
    move-object v2, v4

    const-string v4, "[onRequestCallDataUsage] getAllNetworks returns null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-object v2
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 273
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mContext:Landroid/content/Context;

    .line 274
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 261
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mId:I

    .line 262
    return-void
.end method

.method public setInitUsage(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 0
    .param p1, "initUsage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 269
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mInitialUsage:Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 270
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .param p1, "simId"    # I

    .line 265
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager;->mSimId:I

    .line 266
    return-void
.end method

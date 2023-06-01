.class public Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;
.super Lcom/android/internal/telephony/MultiSimSettingController;
.source "MtkMultiSimSettingController.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MtkMultiSimSettingController"


# instance fields
.field private mActiveModemCount:I

.field private mCarrierConfigsNotLoadedHappened:Z

.field private mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

.field private mSimCloseMode:I

.field private mSimMeLockSupport:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sc"    # Lcom/android/internal/telephony/SubscriptionController;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimMeLockSupport:Z

    .line 114
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    .line 115
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mActiveModemCount:I

    .line 116
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mCarrierConfigsNotLoadedHappened:Z

    .line 120
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 121
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->initSimMeLock(Landroid/content/Context;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->initSimCloseMode(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private filterOutClosedSim(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 466
    .local p1, "activeSubInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz p1, :cond_39

    .line 467
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 468
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/SubscriptionInfo;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 469
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 470
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 471
    .local v2, "subId":I
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->isSimClosed(I)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 472
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is closed, remove from active."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 475
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subId":I
    :cond_38
    goto :goto_6

    .line 477
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/SubscriptionInfo;>;"
    :cond_39
    return-void
.end method

.method private initSimCloseMode(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 441
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->simSwitchMode()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim close mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 443
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3a

    .line 444
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 445
    const-string v2, "msim_mode_setting"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$2;

    invoke-direct {v4, p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$2;-><init>(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;Landroid/os/Handler;)V

    .line 444
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_54

    .line 455
    :cond_3a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_54

    .line 456
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 457
    .local v0, "cis":[Lcom/android/internal/telephony/CommandsInterface;
    array-length v2, v0

    iput v2, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mActiveModemCount:I

    .line 458
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_45
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mActiveModemCount:I

    if-ge v2, v3, :cond_54

    .line 460
    aget-object v3, v0, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x4

    invoke-virtual {v3, p0, v4, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPower(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 458
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 463
    .end local v0    # "cis":[Lcom/android/internal/telephony/CommandsInterface;
    .end local v2    # "i":I
    :cond_54
    :goto_54
    return-void
.end method

.method private initSimMeLock(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 350
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v0

    if-eqz v0, :cond_24

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.phone.ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    new-instance v1, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$1;-><init>(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimMeLockSupport:Z

    .line 370
    const-string v1, "initSimMeLock done."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 372
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_24
    return-void
.end method

.method private isRadioOffBySimManagement(I)Z
    .registers 5
    .param p1, "subId"    # I

    .line 493
    const/4 v0, 0x0

    .line 495
    .local v0, "result":Z
    :try_start_1
    const-string v1, "phoneEx"

    .line 496
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 497
    .local v1, "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v1, :cond_14

    .line 498
    const-string v2, "iTelEx is null!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 499
    const/4 v2, 0x0

    return v2

    .line 501
    :cond_14
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isRadioOffBySimManagement(I)Z

    move-result v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1a

    move v0, v2

    .line 504
    .end local v1    # "iTelEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    goto :goto_1e

    .line 502
    :catch_1a
    move-exception v1

    .line 503
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 505
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1e
    return v0
.end method

.method private isSimClosed(I)Z
    .registers 6
    .param p1, "subId"    # I

    .line 480
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 481
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->isRadioOffBySimManagement(I)Z

    move-result v0

    return v0

    .line 482
    :cond_a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_20

    .line 483
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 484
    .local v0, "id":I
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v2

    .line 485
    invoke-virtual {v2, v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimOnOffState(I)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_20

    .line 486
    return v1

    .line 489
    .end local v0    # "id":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 520
    const-string v0, "MtkMultiSimSettingController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method private updateDefaultDataForSimMeLock(I)Z
    .registers 12
    .param p1, "subCount"    # I

    .line 378
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimMeLockSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 379
    return v1

    .line 381
    :cond_6
    const/4 v0, 0x0

    .line 382
    .local v0, "lockCount":I
    const/4 v2, 0x0

    .line 383
    .local v2, "unlockCount":I
    const/4 v3, -0x1

    .line 384
    .local v3, "unlockSubId":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 385
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v4

    .line 387
    .local v4, "phoneCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    const/4 v6, 0x1

    if-ge v5, v4, :cond_c4

    .line 388
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorUtil;->isActiveSub(Landroid/content/Context;I)Z

    move-result v7

    const-string v8, "slot "

    if-nez v7, :cond_3e

    .line 389
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has no active sub, ignore it."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 390
    goto/16 :goto_c0

    .line 392
    :cond_3e
    iget v7, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_67

    .line 393
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v7

    .line 394
    invoke-virtual {v7, v5}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimOnOffState(I)I

    move-result v7

    const/16 v9, 0xa

    if-ne v7, v9, :cond_67

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is closed sub(mtk sim on/off), ignore it."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 396
    goto :goto_c0

    .line 397
    :cond_67
    iget v7, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    if-ne v7, v6, :cond_8f

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 398
    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->isRadioOffBySimManagement(I)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is closed sub(mtk radio on/off), ignore it."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 400
    goto :goto_c0

    .line 403
    :cond_8f
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getShouldServiceCapability(I)I

    move-result v7

    .line 404
    .local v7, "status":I
    packed-switch v7, :pswitch_data_102

    .line 420
    :pswitch_9a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sim me lock temp sim status:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", wait for next."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 421
    return v6

    .line 413
    :pswitch_b4
    add-int/lit8 v0, v0, 0x1

    .line 414
    goto :goto_c0

    .line 406
    :pswitch_b7
    add-int/lit8 v2, v2, 0x1

    .line 407
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 408
    nop

    .line 387
    .end local v7    # "status":I
    :goto_c0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_18

    .line 425
    .end local v5    # "i":I
    :cond_c4
    if-ne v2, v6, :cond_d5

    if-le p1, v2, :cond_d5

    .line 426
    const-string v5, "sim me lock set only unlock sim as default data between multi sims."

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 427
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 429
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mInitialHandling:Z

    .line 430
    return v6

    .line 431
    :cond_d5
    if-ne p1, v0, :cond_dd

    .line 432
    const-string v1, "sim me lock block set lock sim as default data."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 433
    return v6

    .line 436
    :cond_dd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", lock:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", unlock:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 437
    return v1

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_9a
        :pswitch_b4
    .end packed-switch
.end method

.method private updateDefaultDataForSubSidyLock(I)Z
    .registers 4
    .param p1, "subCount"    # I

    .line 509
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSubsidyLockForOmSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 510
    return v1

    .line 512
    :cond_8
    const/4 v0, 0x1

    if-le p1, v0, :cond_17

    .line 513
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mDataSubSelector:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getSimSwitchForDSSExt()Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;->checkCapSwitch(I)Z

    move-result v0

    return v0

    .line 515
    :cond_17
    return v1
.end method


# virtual methods
.method protected disableDataForNonDefaultNonOpportunisticSubscriptions()V
    .registers 1

    .line 346
    return-void
.end method

.method protected getSimCombinationWarningParams(I)Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;
    .registers 3
    .param p1, "change"    # I

    .line 331
    new-instance v0, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    .line 333
    .local v0, "params":Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_c

    .line 129
    const-string v0, "aosp radio unavailable to clear mSubInfoInitialized, but we needn\'t"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 130
    return-void

    .line 132
    :cond_c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->handleMessage(Landroid/os/Message;)V

    .line 133
    return-void
.end method

.method protected isCarrierConfigLoadedForAllSub()Z
    .registers 12

    .line 165
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubIdList(Z)[I

    move-result-object v0

    .line 166
    .local v0, "activeSubIds":[I
    array-length v2, v0

    move v3, v1

    :goto_9
    const/4 v4, 0x1

    if-ge v3, v2, :cond_50

    aget v5, v0, v3

    .line 167
    .local v5, "activeSubId":I
    const/4 v6, 0x0

    .line 168
    .local v6, "isLoaded":Z
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mCarrierConfigLoadedSubIds:[I

    array-length v8, v7

    move v9, v1

    :goto_13
    if-ge v9, v8, :cond_1e

    aget v10, v7, v9

    .line 169
    .local v10, "configLoadedSub":I
    if-ne v10, v5, :cond_1b

    .line 170
    const/4 v6, 0x1

    .line 171
    goto :goto_1e

    .line 168
    .end local v10    # "configLoadedSub":I
    :cond_1b
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 174
    :cond_1e
    :goto_1e
    if-nez v6, :cond_4d

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Carrier config subId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is not loaded."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 177
    iget v7, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4a

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->isSimClosed(I)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 178
    const-string v4, "mtk sim on/off feature used, ignore closed sim carrier loaded event."

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 179
    goto :goto_4d

    .line 182
    :cond_4a
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mCarrierConfigsNotLoadedHappened:Z

    .line 183
    return v1

    .line 166
    .end local v5    # "activeSubId":I
    .end local v6    # "isLoaded":Z
    :cond_4d
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 187
    :cond_50
    return v4
.end method

.method public synthetic lambda$updateDefaults$0$MtkMultiSimSettingController(I)V
    .registers 3
    .param p1, "newValue"    # I

    .line 301
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    return-void
.end method

.method public synthetic lambda$updateDefaults$1$MtkMultiSimSettingController(I)V
    .registers 3
    .param p1, "newValue"    # I

    .line 307
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    return-void
.end method

.method public synthetic lambda$updateDefaults$2$MtkMultiSimSettingController(I)V
    .registers 3
    .param p1, "newValue"    # I

    .line 313
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    return-void
.end method

.method protected onMultiSimConfigChanged(I)V
    .registers 7
    .param p1, "activeModems"    # I

    .line 192
    invoke-super {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onMultiSimConfigChanged(I)V

    .line 195
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 196
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    .line 197
    .local v0, "cis":[Lcom/android/internal/telephony/CommandsInterface;
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mActiveModemCount:I

    .local v1, "i":I
    :goto_e
    if-ge v1, p1, :cond_1c

    .line 199
    aget-object v2, v0, v1

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForSimPower(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 202
    .end local v1    # "i":I
    :cond_1c
    array-length v1, v0

    iput v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mActiveModemCount:I

    .line 204
    .end local v0    # "cis":[Lcom/android/internal/telephony/CommandsInterface;
    :cond_1f
    return-void
.end method

.method protected onUserDataEnabled(IZ)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .line 143
    const-string v0, "onUserDataEnabled"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->setUserDataEnabledForGroup(IZ)V

    .line 157
    return-void
.end method

.method protected updateDefaults()V
    .registers 10

    .line 222
    const-string v0, "updateDefaults"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->isReadyToReevaluate()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 226
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mContext:Landroid/content/Context;

    .line 227
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mContext:Landroid/content/Context;

    .line 228
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 231
    .local v0, "activeSubInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_23

    move v2, v1

    goto :goto_27

    :cond_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 232
    .local v2, "activeSubCount":I
    :goto_27
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSimCloseMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2f

    const/4 v5, 0x2

    if-ne v3, v5, :cond_32

    .line 234
    :cond_2f
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->filterOutClosedSim(Ljava/util/List;)V

    .line 237
    :cond_32
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 238
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 239
    const-string v1, "[updateDefaultValues] No active sub. Setting default to INVALID sub."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 241
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 242
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 243
    return-void

    .line 248
    :cond_53
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorUtil;->isAnySimNotReady(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_5c

    return-void

    .line 251
    :cond_5c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->updateDefaultDataForSimMeLock(I)Z

    move-result v3

    if-eqz v3, :cond_67

    return-void

    .line 254
    :cond_67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->updateDefaultDataForSubSidyLock(I)Z

    move-result v3

    if-eqz v3, :cond_72

    return-void

    .line 256
    :cond_72
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->updatePrimarySubListAndGetChangeType(Ljava/util/List;)I

    move-result v3

    .line 257
    .local v3, "change":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateDefaultValues] change: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 258
    if-nez v3, :cond_97

    .line 266
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mCarrierConfigsNotLoadedHappened:Z

    if-eqz v5, :cond_96

    .line 267
    const-string v5, "no change but carrier loaded changed, force go on."

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    goto :goto_97

    .line 269
    :cond_96
    return-void

    .line 272
    :cond_97
    :goto_97
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mCarrierConfigsNotLoadedHappened:Z

    .line 282
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_d4

    .line 285
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 286
    .local v1, "subId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateDefaultValues] to only primary sub "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 288
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 289
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 290
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->sendDefaultSubConfirmedNotification(I)V

    .line 291
    return-void

    .line 294
    .end local v1    # "subId":I
    :cond_d4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateDefaultValues] records: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 297
    const-string v1, "[updateDefaultValues] Update default data subscription"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, "dataSelected":Z
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 300
    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v5

    new-instance v6, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;)V

    .line 299
    invoke-virtual {p0, v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v1

    .line 304
    const-string v4, "[updateDefaultValues] Update default voice subscription"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 305
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 306
    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v5

    new-instance v6, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$$ExternalSyntheticLambda1;-><init>(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;)V

    .line 305
    invoke-virtual {p0, v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;)Z

    move-result v4

    .line 310
    .local v4, "voiceSelected":Z
    const-string v5, "[updateDefaultValues] Update default sms subscription"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V

    .line 311
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 312
    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v6

    new-instance v7, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$$ExternalSyntheticLambda2;-><init>(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;)V

    iget-boolean v8, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mIsAskEverytimeSupportedForSms:Z

    .line 311
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->updateDefaultValue(Ljava/util/List;ILcom/android/internal/telephony/MultiSimSettingController$UpdateDefaultAction;Z)Z

    move-result v5

    .line 316
    .local v5, "smsSelected":Z
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110176

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 322
    .local v6, "autoFallbackEnabled":Z
    if-nez v6, :cond_142

    .line 323
    invoke-virtual {p0, v3, v1, v4, v5}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->sendSubChangeNotificationIfNeeded(IZZZ)V

    goto :goto_147

    .line 325
    :cond_142
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->mPrimarySubList:Ljava/util/List;

    invoke-virtual {p0, v7, v1, v4, v5}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->updateUserPreferences(Ljava/util/List;ZZZ)V

    .line 327
    :goto_147
    return-void
.end method

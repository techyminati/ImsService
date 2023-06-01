.class public Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
.super Lcom/android/internal/telephony/PhoneSwitcher;
.source "MtkPhoneSwitcher.java"


# static fields
.field private static final EVALUATION_REASON_RADIO_ON:Ljava/lang/String; = "EVENT_RADIO_ON"

.field private static final EVENT_CALL_EVALUATE:I = 0x3e9

.field private static final EVENT_SIMLOCK_INFO_CHANGED:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "MtkPhoneSwitcher"

.field static final SML_SLOT_LOCK_POLICY_LK_SLOTA_RESTRICT_INVALID_ECC_FOR_VALID_NO_SERVICE:I = 0x9

.field private static final VDBG:Z = true


# instance fields
.field private mIsInCall:Z

.field private final mSimLockChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mTempDataSwitching:Z


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;)V
    .registers 6
    .param p1, "maxActivePhones"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mIsInCall:Z

    .line 89
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mTempDataSwitching:Z

    .line 524
    new-instance v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher$1;-><init>(Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mSimLockChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimLockPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 113
    :cond_31
    return-void
.end method

.method public static acceptRequest(Landroid/net/NetworkRequest;)Z
    .registers 3
    .param p0, "request"    # Landroid/net/NetworkRequest;

    .line 123
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    if-nez v0, :cond_1c

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[acceptRequest] Invalid APN ID request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
    .registers 1

    .line 131
    sget-object v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    return-object v0
.end method

.method private isCampedNr(Lcom/android/internal/telephony/Phone;)Z
    .registers 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 391
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 392
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_10

    .line 393
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 392
    :goto_11
    return v1
.end method

.method private isEimsAllowed(Landroid/net/NetworkRequest;)Z
    .registers 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 465
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 467
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mActiveModemCount:I

    if-ge v0, v2, :cond_21

    .line 468
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isSimInserted(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 469
    const-string v2, "isAllowEims, sim is not null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->loge(Ljava/lang/String;)V

    .line 470
    return v1

    .line 467
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 473
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0

    .line 475
    :cond_23
    const-string v0, "isAllowEims, NetworkRequest not include EIMS capability"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->loge(Ljava/lang/String;)V

    .line 476
    return v1
.end method

.method private isVoLteCalling(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 456
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v0, :cond_13

    .line 457
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v0

    return v0

    .line 459
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVoLteCalling: mPhones["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->loge(Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "l"    # Ljava/lang/String;

    .line 609
    const-string v0, "MtkPhoneSwitcher"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "l"    # Ljava/lang/String;

    .line 613
    const-string v0, "MtkPhoneSwitcher"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .registers 2
    .param p0, "l"    # Ljava/lang/String;

    .line 617
    const-string v0, "MtkPhoneSwitcher"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void
.end method

.method public static mtkMake(ILandroid/content/Context;Landroid/os/Looper;)Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
    .registers 4
    .param p0, "maxDataAttachModemCount"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 98
    sget-object v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    if-nez v0, :cond_13

    .line 99
    const-string v0, "MtkPhoneSwitcher mtkMake"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 101
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mtkInvalidateActiveDataSubIdCaches()V

    .line 104
    :cond_13
    sget-object v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    return-object v0
.end method

.method private needHandleDialing(Lcom/android/internal/telephony/Phone;)Z
    .registers 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 397
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 399
    .local v0, "cm":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 400
    .local v1, "pb":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_20

    .line 401
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 402
    if-eqz v1, :cond_20

    .line 403
    const-string v2, "mtk_handle_dialing_data_during_call_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 407
    :cond_20
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public getPsAllowedByPhoneId(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .line 577
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getShouldServiceCapability(I)I

    move-result v0

    .line 578
    .local v0, "cap":I
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v1

    .line 579
    .local v1, "policy":I
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_1e

    .line 603
    return v2

    .line 599
    :pswitch_15
    if-eqz v0, :cond_1c

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :cond_1c
    :goto_1c
    return v2

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public getSimLockMode()Z
    .registers 4

    .line 559
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v0

    .line 560
    .local v0, "policy":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v2, 0x2

    if-eq v0, v2, :cond_27

    const/4 v2, 0x3

    if-eq v0, v2, :cond_27

    const/4 v2, 0x4

    if-eq v0, v2, :cond_27

    const/4 v2, 0x5

    if-eq v0, v2, :cond_27

    const/4 v2, 0x6

    if-eq v0, v2, :cond_27

    const/4 v2, 0x7

    if-eq v0, v2, :cond_27

    const/16 v2, 0x8

    if-eq v0, v2, :cond_27

    const/16 v2, 0x9

    if-ne v0, v2, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :cond_27
    :goto_27
    return v1
.end method

.method public getTempDataSwitchState()Z
    .registers 4

    .line 549
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 550
    .local v0, "subId":I
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mTempDataSwitching:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 551
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneIdInVoiceCall:I

    if-eq v1, v2, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 550
    :goto_17
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 369
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    .line 385
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    goto :goto_45

    .line 380
    :pswitch_9
    const-string v0, "EVENT_CALL_EVALUATE"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    const-string v1, "CALL_EVALUATE"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    .line 382
    goto :goto_45

    .line 371
    :pswitch_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "simLockChange"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mActiveModemCount:I

    if-ge v1, v2, :cond_3c

    .line 373
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getShouldServiceCapability(I)I

    move-result v2

    .line 374
    .local v2, "cap":I
    const-string v3, " phone["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "],Capability="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .end local v2    # "cap":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 376
    .end local v1    # "i":I
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    .line 377
    nop

    .line 388
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x3e8
        :pswitch_15
        :pswitch_9
    .end packed-switch
.end method

.method protected isPhoneInVoiceCall(Lcom/android/internal/telephony/Phone;)Z
    .registers 10
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 418
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 419
    return v0

    .line 421
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->isVoLteCalling(I)Z

    move-result v1

    .line 423
    .local v1, "isVolteCalling":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDsdalikeAvailable(I)Z

    move-result v2

    .line 424
    .local v2, "isDsdalikeAvailable":Z
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->isCampedNr(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    .line 425
    .local v3, "isNr":Z
    const/4 v4, 0x1

    if-eqz v3, :cond_24

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->needHandleDialing(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    goto :goto_25

    :cond_24
    move v5, v4

    .line 427
    .local v5, "isHandleDialing":Z
    :goto_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ForegroundCall:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", RingingCall:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", BackgroundCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", getPhoneId(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isVolteCalling: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isDsdalikeAvailable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isNr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isHandleDialing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 427
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 437
    if-eqz v2, :cond_e4

    .line 438
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_e4

    if-eqz v1, :cond_e4

    .line 439
    const-string v6, "dsdalikable and volte ring call exist."

    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_e2

    .line 441
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_e2

    if-eqz v5, :cond_ca

    .line 443
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_e2

    .line 444
    :cond_ca
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_e2

    .line 445
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_e3

    :cond_e2
    move v0, v4

    .line 440
    :cond_e3
    return v0

    .line 447
    :cond_e4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_130

    .line 448
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_130

    if-eqz v5, :cond_10a

    .line 449
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_130

    .line 450
    :cond_10a
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_130

    .line 451
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_130

    .line 452
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_131

    :cond_130
    move v0, v4

    .line 447
    :cond_131
    return v0
.end method

.method protected onDdsSwitchResponse(Landroid/os/AsyncResult;)V
    .registers 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 322
    if-eqz p1, :cond_8

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 323
    .local v0, "commandSuccess":Z
    :goto_9
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 324
    .local v1, "phoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    .line 325
    .local v2, "isValidPhoneId":Z
    if-nez v2, :cond_2b

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDdsSwitchResponse: invalid phoneid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->loge(Ljava/lang/String;)V

    .line 328
    :cond_2b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v3, :cond_49

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency override result sent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 330
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;->sendOverrideCompleteCallbackResultAndClear(Z)V

    goto :goto_a7

    .line 333
    :cond_49
    if-nez v0, :cond_a7

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDdsSwitchResponse: DDS switch failed. with exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 335
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_90

    .line 336
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 337
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 338
    .local v3, "error":Lcom/android/internal/telephony/CommandException$Error;
    if-eqz v2, :cond_7c

    .line 339
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_7c
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_86

    .line 342
    const-string v4, "onDdsSwitchResponse: Wait for call end indication"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 343
    return-void

    .line 344
    :cond_86
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SIM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_90

    .line 347
    const-string v4, "onDdsSwitchResponse: Wait for SIM to get READY"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 348
    return-void

    .line 351
    .end local v3    # "error":Lcom/android/internal/telephony/CommandException$Error;
    :cond_90
    if-eqz v2, :cond_a6

    .line 352
    const-string v3, "onDdsSwitchResponse: Scheduling DDS switch retry"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 353
    const/16 v3, 0x71

    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 353
    invoke-static {p0, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 356
    :cond_a6
    return-void

    .line 358
    :cond_a7
    :goto_a7
    if-eqz v0, :cond_bd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDdsSwitchResponse: DDS switch success on phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 359
    :cond_bd
    if-eqz v2, :cond_ca

    .line 360
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mCurrentDdsSwitchFailure:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 363
    :cond_ca
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mActivePhoneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 364
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    .line 365
    return-void
.end method

.method protected onEvaluate(ZLjava/lang/String;)Z
    .registers 12
    .param p1, "requestsChanged"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 151
    .local v1, "diffDetected":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 152
    .local v2, "primaryDataSubId":I
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPrimaryDataSubId:I

    const-string v4, "->"

    if-eq v2, v3, :cond_24

    .line 153
    const-string v3, " mPrimaryDataSubId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    iput v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPrimaryDataSubId:I

    .line 159
    :cond_24
    const/4 v3, 0x0

    .line 162
    .local v3, "hasAnyActiveSubscription":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_26
    iget v6, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mActiveModemCount:I

    if-ge v5, v6, :cond_5f

    .line 163
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 165
    .local v6, "sub":I
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v7

    if-eqz v7, :cond_37

    const/4 v3, 0x1

    .line 167
    :cond_37
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v7, v7, v5

    if-eq v6, v7, :cond_5c

    .line 168
    const-string v7, " phone["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v7, v7, v5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneSubscriptions:[I

    aput v6, v7, v5

    .line 171
    const/4 v1, 0x1

    .line 162
    .end local v6    # "sub":I
    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 175
    .end local v5    # "i":I
    :cond_5f
    if-nez v3, :cond_65

    .line 176
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->transitionToEmergencyPhone()V

    goto :goto_6a

    .line 178
    :cond_65
    const-string v5, "Found an active subscription"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 182
    :goto_6a
    iget v5, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataPhoneId:I

    .line 185
    .local v5, "oldPreferredDataPhoneId":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v6

    .line 192
    .local v6, "oldPreferredDataSubId":I
    if-eqz v3, :cond_77

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->updatePreferredDataPhoneId()V

    .line 194
    :cond_77
    iget v7, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataPhoneId:I

    if-eq v5, v7, :cond_96

    .line 195
    const-string v7, " preferred phoneId "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    const/4 v1, 0x1

    .line 199
    iget v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataPhoneId:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_96

    .line 200
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mActivePhoneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 204
    :cond_96
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v4

    if-eq v6, v4, :cond_a6

    .line 205
    const-string v4, "SIM refresh, notify dds change"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    .line 213
    :cond_a6
    if-nez v1, :cond_b0

    const-string v4, "EVENT_RADIO_ON"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 214
    :cond_b0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "evaluating due to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 219
    const/4 v4, 0x0

    .local v4, "phoneId":I
    :goto_c9
    iget v7, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mActiveModemCount:I

    if-ge v4, v7, :cond_d7

    .line 220
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v7, v7, v4

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 219
    add-int/lit8 v4, v4, 0x1

    goto :goto_c9

    .line 222
    .end local v4    # "phoneId":I
    :cond_d7
    iget v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->sendRilCommands(I)V

    .line 224
    :cond_dc
    return v1
.end method

.method protected phoneIdForRequest(Landroid/net/NetworkRequest;)I
    .registers 5
    .param p1, "netRequest"    # Landroid/net/NetworkRequest;

    .line 537
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    .line 538
    .local v0, "phoneId":I
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mHalCommandToUse:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mHalCommandToUse:I

    if-nez v1, :cond_1b

    .line 539
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getSimLockMode()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 540
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getPsAllowedByPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 541
    const/4 v1, -0x1

    return v1

    .line 545
    :cond_1b
    return v0
.end method

.method protected suggestDefaultActivePhone(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 492
    .local p1, "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 493
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v1

    .line 494
    .local v1, "mainCapPhoneId":I
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "newActivePhones mainCapPhoneId="

    if-eqz v2, :cond_40

    .line 495
    const-string v2, "newActivePhones is empty"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isSimInserted(I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 500
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getSimLockMode()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getPsAllowedByPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 501
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 502
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPrioritizedDcRequests"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logv(Ljava/lang/String;)V

    .line 510
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 511
    const-string v2, "ECC w/o SIM"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 513
    .local v4, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->isEimsAllowed(Landroid/net/NetworkRequest;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_99

    .line 514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 515
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    .end local v4    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    :cond_99
    goto :goto_6b

    .line 520
    :cond_9a
    return-void
.end method

.method protected updateHalCommandToUse()V
    .registers 5

    .line 297
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mHalCommandToUse:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 298
    const-string v0, "updateHalCommandToUse, preferred mode already, no need update."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 299
    return-void

    .line 301
    :cond_b
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->updateHalCommandToUse()V

    .line 302
    const-string v0, "updateHalCommandToUse"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 304
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mHalCommandToUse:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mHalCommandToUse:I

    if-nez v0, :cond_35

    .line 305
    :cond_1c
    const-string v0, "updateHalCommandToUse: The HIDL preferred data not exist, use ALLOW_DATA"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getSimLockMode()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 307
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mSimLockChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.phone.ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    :cond_35
    return-void
.end method

.method protected updatePreferredDataPhoneId()V
    .registers 8

    .line 231
    invoke-static {}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getInstance()Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    move-result-object v0

    .line 232
    .local v0, "mSmartDataSwitchAssistant":Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 235
    .local v1, "voicePhone":Lcom/android/internal/telephony/Phone;
    const/16 v2, 0x11

    const/4 v3, 0x1

    if-eqz v1, :cond_2c

    .line 236
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mIsInCall:Z

    if-nez v4, :cond_2c

    .line 238
    const-string v4, "set mIsInCall to true"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 239
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mIsInCall:Z

    .line 240
    const/16 v4, 0x3e9

    const/4 v5, 0x0

    iget v6, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-virtual {v0, p0, v4, v5, v6}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->registerReEvaluateEvent(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 244
    :cond_2c
    const/4 v4, 0x0

    if-nez v1, :cond_3f

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mIsInCall:Z

    if-ne v5, v3, :cond_3f

    .line 245
    const-string v5, "set mIsInCall to false"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 246
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mIsInCall:Z

    .line 248
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mTempDataSwitching:Z

    .line 249
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->unregisterReEvaluateEvent(Landroid/os/Handler;)V

    .line 252
    :cond_3f
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;

    if-eqz v5, :cond_6c

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;

    iget v5, v5, Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->findPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-eqz v5, :cond_6c

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredDataPhoneId: preferred data overridden for emergency. phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;

    iget v3, v3, Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->logd(Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mEmergencyOverride:Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;

    iget v2, v2, Lcom/android/internal/telephony/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    iput v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataPhoneId:I

    goto :goto_a6

    .line 260
    :cond_6c
    if-eqz v1, :cond_87

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_87

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneIdInVoiceCall:I

    .line 263
    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->checkIsSwitchAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 270
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneIdInVoiceCall:I

    iput v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataPhoneId:I

    .line 272
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mTempDataSwitching:Z

    goto :goto_a6

    .line 274
    :cond_87
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getSubIdForDefaultNetworkRequests()I

    move-result v2

    .line 275
    .local v2, "subId":I
    const/4 v3, -0x1

    .line 277
    .local v3, "phoneId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 278
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_93
    iget v6, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mActiveModemCount:I

    if-ge v5, v6, :cond_a2

    .line 279
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v6, v6, v5

    if-ne v6, v2, :cond_9f

    .line 280
    move v3, v5

    .line 281
    goto :goto_a2

    .line 278
    :cond_9f
    add-int/lit8 v5, v5, 0x1

    goto :goto_93

    .line 286
    .end local v5    # "i":I
    :cond_a2
    :goto_a2
    iput v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataPhoneId:I

    .line 288
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mTempDataSwitching:Z

    .line 291
    .end local v2    # "subId":I
    .end local v3    # "phoneId":I
    :goto_a6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mPreferredDataPhoneId:I

    .line 292
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 291
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->set(I)V

    .line 293
    return-void
.end method

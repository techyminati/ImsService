.class public Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;
.super Lcom/android/internal/telephony/imsphone/ImsPhone;
.source "MtkImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;,
        Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;
    }
.end annotation


# static fields
.field private static final CFU_TIME_SLOT:Ljava/lang/String; = "persist.vendor.radio.cfu.timeslot."

.field public static final EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE:I = 0x6d

.field public static final EVENT_SET_CALL_FORWARD_TIME_SLOT_DONE:I = 0x6e

.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsPhone"

.field public static final UT_BUNDLE_KEY_CLIR:Ljava/lang/String; = "queryClir"


# instance fields
.field private mDialString:Ljava/lang/String;

.field private mIsWfcModeHomeForDomRoaming:Z

.field protected mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .line 164
    sget-object v4, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;Z)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "defaultPhone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "imsManagerFactory"    # Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;
    .param p5, "unitTestMode"    # Z

    .line 170
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/imsphone/ImsPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;Z)V

    .line 145
    new-instance v0, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v0}, Lmediatek/telephony/MtkServiceState;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mSS:Landroid/telephony/ServiceState;

    .line 148
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$1;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    const-string v0, "Start to create MtkImsPhone."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 172
    const-string v0, "MtkImsPhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setPhoneName(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->cacheCarrierConfiguration()V

    .line 177
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->registerForListenCarrierConfigChanged()V

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 129
    iget v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;
    .param p1, "x1"    # Ljava/lang/String;

    .line 129
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 129
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->cacheCarrierConfiguration()V

    return-void
.end method

.method private cacheCarrierConfiguration()V
    .registers 6

    .line 1220
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getSubId()I

    move-result v0

    .line 1221
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    .line 1222
    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1223
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    if-nez v1, :cond_16

    .line 1224
    const-string v2, "cacheCarrierConfiguration failed: config mgr access failed"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1225
    return-void

    .line 1228
    :cond_16
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1230
    .local v2, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v2, :cond_22

    .line 1231
    const-string v3, "cacheCarrierConfiguration failed: carrier config access failed"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1232
    return-void

    .line 1235
    :cond_22
    const-string v3, "mtk_carrier_wfc_mode_domestic_roaming_to_home"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mIsWfcModeHomeForDomRoaming:Z

    .line 1238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cacheCarrierConfiguration,  WfcModeHomeForDomRoaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mIsWfcModeHomeForDomRoaming:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1240
    return-void
.end method

.method private getMtkCallForwardInfo(Lcom/mediatek/ims/MtkImsCallForwardInfo;)Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .registers 4
    .param p1, "info"    # Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 666
    new-instance v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;-><init>()V

    .line 667
    .local v0, "cfInfo":Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    .line 668
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    .line 669
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 670
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mToA:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    .line 671
    iget-object v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 672
    iget v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSeconds:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    .line 673
    iget-object v1, p1, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    .line 674
    return-object v0
.end method

.method private handleCfInTimeSlotQueryResult([Lcom/mediatek/ims/MtkImsCallForwardInfo;)[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .registers 10
    .param p1, "infos"    # [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 628
    const/4 v0, 0x0

    .line 630
    .local v0, "cfInfos":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 631
    if-eqz p1, :cond_15

    array-length v1, p1

    if-eqz v1, :cond_15

    .line 632
    array-length v1, p1

    new-array v0, v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    goto :goto_15

    .line 636
    :cond_10
    if-eqz p1, :cond_15

    .line 637
    array-length v1, p1

    new-array v0, v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 641
    :cond_15
    :goto_15
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 642
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_58

    array-length v4, p1

    if-nez v4, :cond_23

    goto :goto_58

    .line 649
    :cond_23
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, p1

    .local v5, "s":I
    :goto_25
    if-ge v4, v5, :cond_5e

    .line 650
    aget-object v6, p1, v4

    iget v6, v6, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    if-nez v6, :cond_4d

    aget-object v6, p1, v4

    iget v6, v6, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_4d

    .line 652
    if-eqz v1, :cond_4d

    .line 653
    aget-object v6, p1, v4

    iget v6, v6, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    if-ne v6, v3, :cond_3e

    move v6, v3

    goto :goto_3f

    :cond_3e
    move v6, v2

    :goto_3f
    aget-object v7, p1, v4

    iget-object v7, v7, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v6, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 655
    aget-object v6, p1, v4

    iget-object v6, v6, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->saveTimeSlot([J)V

    .line 658
    :cond_4d
    aget-object v6, p1, v4

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getMtkCallForwardInfo(Lcom/mediatek/ims/MtkImsCallForwardInfo;)Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    move-result-object v6

    aput-object v6, v0, v4

    .line 649
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 643
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_58
    :goto_58
    if-eqz v1, :cond_5e

    .line 646
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 662
    :cond_5e
    return-object v0
.end method

.method private isSsCdmaCsPreferred(I)Z
    .registers 7
    .param p1, "errerCode"    # I

    .line 857
    const/4 v0, 0x0

    .line 858
    .local v0, "result":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->isC2kSupported()Z

    move-result v1

    .line 859
    .local v1, "c2kRat":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isCdmaSubscriptionAppPresent()Z

    move-result v2

    .line 861
    .local v2, "c2kCardType":Z
    if-eqz v1, :cond_1c

    if-eqz v2, :cond_1c

    .line 862
    const v3, 0xf006

    if-eq p1, v3, :cond_1a

    const v3, 0xf007

    if-ne p1, v3, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v3, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v3, 0x1

    :goto_1b
    move v0, v3

    .line 867
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSsCdmaCsPreferred, c2kRat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", c2kCardType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 871
    return v0
.end method

.method private isSupportCdma(I)Z
    .registers 7
    .param p1, "slotId"    # I

    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, "isSupportCdma":Z
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSupportCardType(I)[Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, "type":[Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 887
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_28

    .line 888
    aget-object v3, v1, v2

    const-string v4, "RUIM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    aget-object v3, v1, v2

    const-string v4, "CSIM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_27

    .line 887
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 889
    :cond_27
    :goto_27
    const/4 v0, 0x1

    .line 895
    .end local v2    # "i":I
    :cond_28
    return v0
.end method

.method private isSupportImsEcc()Z
    .registers 2

    .line 1187
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isSupportImsEcc()Z

    move-result v0

    return v0
.end method

.method private registerForListenCarrierConfigChanged()V
    .registers 4

    .line 1210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 1211
    const-string v0, "registerForListenCarrierConfigChanged failed"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1212
    return-void

    .line 1214
    :cond_a
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1215
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1216
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1217
    return-void
.end method

.method private supportMdAutoSetupIms()Z
    .registers 4

    .line 1202
    const/4 v0, 0x0

    .line 1203
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1204
    const/4 v0, 0x1

    .line 1206
    :cond_10
    return v0
.end method


# virtual methods
.method public bridge synthetic activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 3

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    .registers 14
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .param p3, "wrappedCallback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 195
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    .line 196
    .local v0, "isUriNumber":Z
    move-object v1, p1

    .line 197
    .local v1, "newDialString":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 198
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_b
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    .line 204
    return-object v3

    .line 209
    :cond_13
    instance-of v2, p2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    if-nez v2, :cond_1c

    .line 210
    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v2

    .local v2, "imsDialArgsBuilder":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    goto :goto_23

    .line 212
    .end local v2    # "imsDialArgsBuilder":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    :cond_1c
    move-object v2, p2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v2

    .line 214
    .restart local v2    # "imsDialArgsBuilder":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;
    :goto_23
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getClirMode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    .line 216
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_40

    .line 217
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    return-object v3

    .line 223
    :cond_40
    move-object v4, p1

    .line 224
    .local v4, "networkPortion":Ljava/lang/String;
    if-nez v0, :cond_47

    .line 225
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 237
    :cond_47
    const/4 v5, 0x0

    .line 238
    .local v5, "mmi":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    if-nez v0, :cond_4f

    .line 239
    invoke-static {v4, p0, p3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    move-result-object v5

    goto :goto_54

    .line 241
    :cond_4f
    const-string v6, "dialInternal: url dial string, it must not be MMI"

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 244
    :goto_54
    invoke-static {}, Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;->getIsEmergencyNumber()Z

    move-result v6

    .line 247
    .local v6, "isEcc":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialInternal: dialing w/ mmi ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "] isEcc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 250
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDialString:Ljava/lang/String;

    .line 252
    if-eqz v5, :cond_d9

    if-eqz v6, :cond_7b

    goto :goto_d9

    .line 254
    :cond_7b
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isTemporaryModeCLIR()Z

    move-result v7

    if-eqz v7, :cond_97

    .line 255
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getCLIRMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    .line 256
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getDialingNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    return-object v3

    .line 257
    :cond_97
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isSupportedOverImsPhone()Z

    move-result v7

    const-string v8, "cs_fallback"

    if-eqz v7, :cond_ce

    .line 266
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v9, Landroid/os/AsyncResult;

    invoke-direct {v9, v3, v5, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 270
    :try_start_ae
    const-string v7, "MMI processCode"

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->processCode()V
    :try_end_b6
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_ae .. :try_end_b6} :catch_b7

    .line 280
    goto :goto_c2

    .line 272
    :catch_b7
    move-exception v7

    .line 273
    .local v7, "cse":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v7}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c3

    .line 282
    .end local v7    # "cse":Lcom/android/internal/telephony/CallStateException;
    :goto_c2
    return-object v3

    .line 274
    .restart local v7    # "cse":Lcom/android/internal/telephony/CallStateException;
    :cond_c3
    const-string v3, "dialInternal: fallback to GSM required."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logi(Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 278
    throw v7

    .line 263
    .end local v7    # "cse":Lcom/android/internal/telephony/CallStateException;
    :cond_ce
    const-string v3, "dialInternal: USSD not supported by IMS; fallback to CS."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logi(Ljava/lang/String;)V

    .line 264
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {v3, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    :cond_d9
    :goto_d9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .registers 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->disableLocationUpdates()V

    return-void
.end method

.method public dispose()V
    .registers 3

    .line 182
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dispose()V

    .line 183
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    .line 184
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    :cond_e
    return-void
.end method

.method public dumpPendingMmi()V
    .registers 5

    .line 355
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 356
    .local v0, "size":I
    if-nez v0, :cond_e

    .line 357
    const-string v1, "dumpPendingMmi: none"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 358
    return-void

    .line 360
    :cond_e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_2e

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpPendingMmi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 363
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .registers 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->enableLocationUpdates()V

    return-void
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method protected getCBTypeFromFacility(Ljava/lang/String;)I
    .registers 3
    .param p1, "facility"    # Ljava/lang/String;

    .line 504
    const-string v0, "ACR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 505
    const/4 v0, 0x6

    return v0

    .line 508
    :cond_a
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getCFReasonFromCondition(I)I
    .registers 3
    .param p1, "condition"    # I

    .line 427
    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_12

    .line 439
    return v0

    .line 434
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 433
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 432
    :pswitch_9
    const/4 v0, 0x4

    return v0

    .line 431
    :pswitch_b
    return v0

    .line 430
    :pswitch_c
    const/4 v0, 0x2

    return v0

    .line 429
    :pswitch_e
    const/4 v0, 0x1

    return v0

    .line 428
    :pswitch_10
    const/4 v0, 0x0

    return v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public getCallForwardInTimeSlot(ILandroid/os/Message;)V
    .registers 7
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallForwardInTimeSlot reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 565
    if-nez p1, :cond_37

    .line 567
    const-string v0, "requesting call forwarding in a time slot query."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 571
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 574
    .local v0, "resp":Landroid/os/Message;
    :try_start_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 575
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/MtkImsUt;

    .line 576
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getConditionFromCFReason(I)I

    move-result v3

    .line 575
    invoke-virtual {v2, v3, v0}, Lcom/mediatek/ims/MtkImsUt;->queryCallForwardInTimeSlot(ILandroid/os/Message;)V
    :try_end_31
    .catch Lcom/android/ims/ImsException; {:try_start_21 .. :try_end_31} :catch_32

    .line 580
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_3d

    .line 578
    :catch_32
    move-exception v1

    .line 579
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 581
    .end local v0    # "resp":Landroid/os/Message;
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :cond_37
    if-eqz p2, :cond_3d

    .line 582
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_3e

    .line 581
    :cond_3d
    :goto_3d
    nop

    .line 584
    :goto_3e
    return-void
.end method

.method protected getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;
    .registers 4
    .param p1, "info"    # Landroid/telephony/ims/ImsCallForwardInfo;

    .line 749
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 750
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 751
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 752
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 753
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 754
    iget-object v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 755
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 756
    return-object v0
.end method

.method public getCallForwardingOptionForServiceClass(IILandroid/os/Message;)V
    .registers 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallForwardingOptionForServiceClass reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", service class= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 625
    return-void
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method protected getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;
    .registers 5
    .param p1, "code"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommandException code= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorString= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 688
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 690
    .local v0, "error":Lcom/android/internal/telephony/CommandException$Error;
    sparse-switch p1, :sswitch_data_58

    goto :goto_52

    .line 738
    :sswitch_22
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    .line 739
    goto :goto_52

    .line 735
    :sswitch_25
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    .line 736
    goto :goto_52

    .line 732
    :sswitch_28
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    .line 733
    goto :goto_52

    .line 729
    :sswitch_2b
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    .line 730
    goto :goto_52

    .line 726
    :sswitch_2e
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_7:Lcom/android/internal/telephony/CommandException$Error;

    .line 727
    goto :goto_52

    .line 723
    :sswitch_31
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    .line 724
    goto :goto_52

    .line 719
    :sswitch_34
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    .line 720
    goto :goto_52

    .line 716
    :sswitch_37
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    .line 717
    goto :goto_52

    .line 713
    :sswitch_3a
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL_VIDEO:Lcom/android/internal/telephony/CommandException$Error;

    .line 714
    goto :goto_52

    .line 710
    :sswitch_3d
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    .line 711
    goto :goto_52

    .line 707
    :sswitch_40
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    .line 708
    goto :goto_52

    .line 704
    :sswitch_43
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    .line 705
    goto :goto_52

    .line 695
    :sswitch_46
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    .line 696
    goto :goto_52

    .line 698
    :sswitch_49
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    .line 699
    goto :goto_52

    .line 692
    :sswitch_4c
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 693
    goto :goto_52

    .line 701
    :sswitch_4f
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 702
    nop

    .line 744
    :goto_52
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v1, v0, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    return-object v1

    :sswitch_data_58
    .sparse-switch
        0xf1 -> :sswitch_4f
        0x321 -> :sswitch_4c
        0x322 -> :sswitch_49
        0x335 -> :sswitch_46
        0x336 -> :sswitch_43
        0x337 -> :sswitch_40
        0x338 -> :sswitch_3d
        0x339 -> :sswitch_3a
        0xf006 -> :sswitch_37
        0xf007 -> :sswitch_34
        0xf009 -> :sswitch_31
        0xf00a -> :sswitch_2e
        0xf010 -> :sswitch_2b
        0xf011 -> :sswitch_28
        0xf012 -> :sswitch_25
        0xf013 -> :sswitch_22
    .end sparse-switch
.end method

.method protected getConditionFromCFReason(I)I
    .registers 3
    .param p1, "reason"    # I

    .line 410
    packed-switch p1, :pswitch_data_14

    .line 422
    const/4 v0, -0x1

    return v0

    .line 417
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 416
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 415
    :pswitch_9
    const/4 v0, 0x4

    return v0

    .line 414
    :pswitch_b
    const/4 v0, 0x3

    return v0

    .line 413
    :pswitch_d
    const/4 v0, 0x2

    return v0

    .line 412
    :pswitch_f
    const/4 v0, 0x1

    return v0

    .line 411
    :pswitch_11
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic getCurrentDataConnectionList()Ljava/util/List;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel1()Ljava/lang/String;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel2()Ljava/lang/String;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getIccSerialNumber()Ljava/lang/String;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImei()Ljava/lang/String;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1AlphaTag()Ljava/lang/String;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageWaitingIndicator()Z
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getPhoneType()I
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubscriberId()Ljava/lang/String;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeSlot()[J
    .registers 15

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.vendor.radio.cfu.timeslot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "timeSlotKey":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "timeSlotString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 539
    .local v3, "timeSlot":[J
    if-eqz v2, :cond_69

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 540
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "timeArray":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_69

    .line 542
    new-array v3, v5, [J

    .line 543
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2f
    if-ge v4, v5, :cond_69

    .line 544
    aget-object v6, v1, v4

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 545
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 546
    .local v6, "calenar":Ljava/util/Calendar;
    aget-wide v7, v3, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 547
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 548
    .local v8, "hour":I
    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 549
    .local v10, "min":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 550
    .local v11, "calenar2":Ljava/util/Calendar;
    invoke-virtual {v11, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 551
    invoke-virtual {v11, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 552
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    aput-wide v12, v3, v4

    .line 543
    .end local v6    # "calenar":Ljava/util/Calendar;
    .end local v8    # "hour":I
    .end local v10    # "min":I
    .end local v11    # "calenar2":Ljava/util/Calendar;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 556
    .end local v1    # "timeArray":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeSlot = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 557
    return-object v3
.end method

.method public bridge synthetic getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I
    .registers 5
    .param p1, "infos"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 841
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 849
    .local v0, "cbInfos":[I
    const/4 v1, 0x0

    aget-object v2, p1, v1

    iget v2, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    aput v2, v0, v1

    .line 851
    return-object v0
.end method

.method public handleCfQueryResult([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;
    .registers 10
    .param p1, "infos"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 761
    const/4 v0, 0x0

    .line 763
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 765
    if-eqz p1, :cond_15

    array-length v1, p1

    if-eqz v1, :cond_15

    .line 766
    array-length v1, p1

    new-array v0, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    goto :goto_15

    .line 770
    :cond_10
    if-eqz p1, :cond_15

    .line 771
    array-length v1, p1

    new-array v0, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 775
    :cond_15
    :goto_15
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4d

    array-length v3, p1

    if-nez v3, :cond_1d

    goto :goto_4d

    .line 780
    :cond_1d
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, p1

    .local v4, "s":I
    :goto_1f
    if-ge v3, v4, :cond_55

    .line 781
    aget-object v5, p1, v3

    iget v5, v5, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    if-nez v5, :cond_42

    aget-object v5, p1, v3

    iget v5, v5, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_42

    .line 783
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    aget-object v6, p1, v3

    iget v6, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    if-ne v6, v2, :cond_3a

    move v6, v2

    goto :goto_3b

    :cond_3a
    move v6, v1

    :goto_3b
    aget-object v7, p1, v3

    iget-object v7, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v5, v2, v6, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 786
    :cond_42
    aget-object v5, p1, v3

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v5

    aput-object v5, v0, v3

    .line 780
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 778
    .end local v3    # "i":I
    .end local v4    # "s":I
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v1, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 790
    :cond_55
    return-object v0
.end method

.method public handleCfQueryResult([Landroid/telephony/ims/ImsCallForwardInfo;Z)[Lcom/android/internal/telephony/CallForwardInfo;
    .registers 12
    .param p1, "infos"    # [Landroid/telephony/ims/ImsCallForwardInfo;
    .param p2, "isVideo"    # Z

    .line 794
    const/4 v0, 0x0

    .line 796
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCfQueryResult, isVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 797
    if-eqz p1, :cond_1d

    array-length v1, p1

    if-eqz v1, :cond_1d

    .line 798
    array-length v1, p1

    new-array v0, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 801
    :cond_1d
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_a5

    array-length v3, p1

    if-nez v3, :cond_26

    goto/16 :goto_a5

    .line 806
    :cond_26
    const/4 v3, -0x1

    .line 807
    .local v3, "videoIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, p1

    .local v5, "s":I
    :goto_29
    if-ge v4, v5, :cond_9c

    .line 808
    aget-object v6, p1, v4

    iget v6, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    if-nez v6, :cond_4c

    aget-object v6, p1, v4

    iget v6, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_4c

    .line 810
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    aget-object v7, p1, v4

    iget v7, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    if-ne v7, v2, :cond_44

    move v7, v2

    goto :goto_45

    :cond_44
    move v7, v1

    :goto_45
    aget-object v8, p1, v4

    iget-object v8, v8, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v6, v2, v7, v8}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 813
    :cond_4c
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v6

    aput-object v6, v0, v4

    .line 814
    if-eqz p2, :cond_99

    .line 815
    aget-object v6, v0, v4

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_7c

    .line 817
    aget-object v6, v0, v4

    iget v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    or-int/lit16 v7, v7, 0x200

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 818
    move v3, v4

    .line 819
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCfQueryResult, add SERVICE_CLASS_VIDEO, index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    goto :goto_99

    .line 820
    :cond_7c
    aget-object v6, v0, v4

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_99

    .line 822
    move v3, v4

    .line 823
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCfQueryResult, SERVICE_CLASS_VIDEO, index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 807
    :cond_99
    :goto_99
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 828
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_9c
    if-lez v3, :cond_ad

    .line 829
    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 830
    .local v2, "videoCfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    aget-object v4, v0, v3

    aput-object v4, v2, v1

    .line 832
    return-object v2

    .line 804
    .end local v2    # "videoCfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "videoIndex":I
    :cond_a5
    :goto_a5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v1, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 836
    :cond_ad
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 901
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 903
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 904
    .local v1, "ss":Lcom/android/internal/telephony/imsphone/ImsPhone$SS;
    if-eqz v0, :cond_12

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    if-eqz v2, :cond_12

    .line 905
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;

    .line 908
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mtk handleMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 911
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-eq v2, v3, :cond_41

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_41

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_41

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6f

    .line 915
    :cond_41
    if-eqz v0, :cond_6f

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/ims/ImsException;

    if-eqz v2, :cond_6f

    .line 916
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 917
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "SS IMS exception"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 918
    if-eqz v1, :cond_6f

    move-object v3, v2

    check-cast v3, Lcom/android/ims/ImsException;

    invoke-virtual {v3}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isSsCdmaCsPreferred(I)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 919
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v5, 0x92

    const-string v6, "Preferred CDMA dialing method"

    invoke-direct {v3, v6, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    .line 921
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendResponseOrRetryOnCsfbSs(Lcom/android/internal/telephony/imsphone/ImsPhone$SS;ILjava/lang/Throwable;Ljava/lang/Object;)V

    .line 922
    return-void

    .line 928
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_6f
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const v5, 0xf008

    const v6, 0xf006

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_266

    .line 1100
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_265

    .line 1019
    :sswitch_82
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 1020
    .local v2, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;

    .line 1021
    .local v5, "cfEx":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;
    iget-boolean v9, v5, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mIsCfu:Z

    if-eqz v9, :cond_a9

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_a9

    if-eqz v2, :cond_a9

    .line 1022
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 1023
    .local v9, "cfAction":I
    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isCfEnable(I)Z

    move-result v10

    .line 1025
    .local v10, "cfEnable":I
    if-ne v10, v8, :cond_9f

    move v7, v8

    :cond_9f
    iget-object v11, v5, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {p0, v2, v8, v7, v11}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1026
    iget-object v7, v5, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mSetTimeSlot:[J

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->saveTimeSlot([J)V

    .line 1029
    .end local v9    # "cfAction":I
    .end local v10    # "cfEnable":I
    :cond_a9
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_d8

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v7, v7, Lcom/android/ims/ImsException;

    if-eqz v7, :cond_d8

    .line 1030
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/ims/ImsException;

    .line 1031
    .local v7, "imsException":Lcom/android/ims/ImsException;
    if-eqz v7, :cond_d8

    invoke-virtual {v7}, Lcom/android/ims/ImsException;->getCode()I

    move-result v8

    if-ne v8, v6, :cond_d8

    .line 1033
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1035
    iget-object v3, v5, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mOnComplete:Landroid/os/Message;

    .line 1036
    .local v3, "resp":Landroid/os/Message;
    if-eqz v3, :cond_d8

    .line 1037
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v3, v4, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1039
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1040
    return-void

    .line 1044
    .end local v3    # "resp":Landroid/os/Message;
    .end local v7    # "imsException":Lcom/android/ims/ImsException;
    :cond_d8
    iget-object v3, v5, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mOnComplete:Landroid/os/Message;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v4, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1045
    goto/16 :goto_265

    .line 994
    .end local v2    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v5    # "cfEx":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;
    :sswitch_e1
    const/4 v2, 0x0

    .line 995
    .local v2, "mtkCfInfos":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_ee

    .line 996
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleCfInTimeSlotQueryResult([Lcom/mediatek/ims/MtkImsCallForwardInfo;)[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    move-result-object v2

    .line 1000
    :cond_ee
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_11f

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_11f

    .line 1001
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/ims/ImsException;

    .line 1002
    .local v4, "imsException":Lcom/android/ims/ImsException;
    if-eqz v4, :cond_11f

    invoke-virtual {v4}, Lcom/android/ims/ImsException;->getCode()I

    move-result v5

    if-ne v5, v6, :cond_11f

    .line 1004
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 1006
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    .line 1007
    .restart local v3    # "resp":Landroid/os/Message;
    if-eqz v3, :cond_11f

    .line 1008
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v3, v2, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1010
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1011
    return-void

    .line 1015
    .end local v3    # "resp":Landroid/os/Message;
    .end local v4    # "imsException":Lcom/android/ims/ImsException;
    :cond_11f
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v2, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1016
    goto/16 :goto_265

    .line 1051
    .end local v2    # "mtkCfInfos":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    :sswitch_12a
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->supportMdAutoSetupIms()Z

    move-result v2

    if-nez v2, :cond_164

    .line 1052
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTransferXcap404()Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_164

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/ims/ImsException;

    if-eqz v2, :cond_164

    .line 1054
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/ims/ImsException;

    .line 1055
    .local v2, "imsException":Lcom/android/ims/ImsException;
    if-eqz v2, :cond_164

    invoke-virtual {v2}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    if-ne v3, v5, :cond_164

    .line 1057
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    .line 1058
    .restart local v3    # "resp":Landroid/os/Message;
    if-eqz v3, :cond_164

    .line 1059
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1061
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1062
    return-void

    .line 1067
    .end local v2    # "imsException":Lcom/android/ims/ImsException;
    .end local v3    # "resp":Landroid/os/Message;
    :cond_164
    const/4 v2, 0x0

    .line 1068
    .local v2, "ssInfos":[I
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_171

    .line 1069
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I

    move-result-object v2

    .line 1071
    :cond_171
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v2, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1073
    .end local v2    # "ssInfos":[I
    goto/16 :goto_265

    .line 1078
    :sswitch_17a
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->supportMdAutoSetupIms()Z

    move-result v2

    if-nez v2, :cond_1b4

    .line 1079
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTransferXcap404()Z

    move-result v2

    if-eqz v2, :cond_1b4

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1b4

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/ims/ImsException;

    if-eqz v2, :cond_1b4

    .line 1082
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/ims/ImsException;

    .line 1083
    .local v2, "imsException":Lcom/android/ims/ImsException;
    if-eqz v2, :cond_1b4

    invoke-virtual {v2}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    if-ne v3, v5, :cond_1b4

    .line 1085
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    .line 1086
    .restart local v3    # "resp":Landroid/os/Message;
    if-eqz v3, :cond_1b4

    .line 1087
    new-instance v5, Lcom/android/internal/telephony/CommandException;

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1089
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1090
    return-void

    .line 1095
    .end local v2    # "imsException":Lcom/android/ims/ImsException;
    .end local v3    # "resp":Landroid/os/Message;
    :cond_1b4
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v4, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1097
    goto/16 :goto_265

    .line 985
    :sswitch_1bd
    const/4 v2, 0x0

    .line 986
    .local v2, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1d1

    .line 987
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Landroid/telephony/ims/ImsCallForwardInfo;

    iget v4, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_1cd

    move v7, v8

    :cond_1cd
    invoke-virtual {p0, v3, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleCfQueryResult([Landroid/telephony/ims/ImsCallForwardInfo;Z)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v2

    .line 990
    :cond_1d1
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v2, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 991
    goto/16 :goto_265

    .line 931
    .end local v2    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :sswitch_1da
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 932
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 933
    .local v3, "cfAction":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 934
    .local v5, "cfReason":I
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isCfEnable(I)Z

    move-result v6

    .line 936
    .local v6, "cfEnable":I
    const/4 v9, 0x0

    .line 937
    .local v9, "isCfu":Z
    const/4 v10, -0x1

    .line 939
    .local v10, "serviceClass":I
    if-eqz v1, :cond_1f6

    .line 940
    iget v11, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mCfReason:I

    if-nez v11, :cond_1f2

    move v11, v8

    goto :goto_1f3

    :cond_1f2
    move v11, v7

    :goto_1f3
    move v9, v11

    .line 941
    iget v10, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mServiceClass:I

    .line 944
    :cond_1f6
    if-eqz v9, :cond_224

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_224

    if-eqz v2, :cond_224

    .line 945
    iget-object v11, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v11, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->queryCFUAgainAfterSet()Z

    move-result v11

    if-eqz v11, :cond_218

    .line 946
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v7, :cond_212

    .line 947
    const-string v7, "arResult is null."

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logi(Ljava/lang/String;)V

    goto :goto_224

    .line 949
    :cond_212
    const-string v7, "[EVENT_SET_CALL_FORWARD_DONE check cfinfo."

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    goto :goto_224

    .line 952
    :cond_218
    and-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_224

    .line 953
    if-ne v6, v8, :cond_21f

    move v7, v8

    :cond_21f
    iget-object v11, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {p0, v2, v8, v7, v11}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 959
    :cond_224
    :goto_224
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v8, :cond_25d

    .line 960
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    instance-of v7, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v7, :cond_25d

    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 961
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isSupportSaveCFNumber()Z

    move-result v7

    if-eqz v7, :cond_25d

    .line 962
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_25d

    .line 963
    if-ne v6, v8, :cond_253

    .line 964
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v8, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mDialingNumber:Ljava/lang/String;

    .line 965
    invoke-virtual {v7, v5, v8}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->applyCFSharePreference(ILjava/lang/String;)Z

    move-result v7

    .line 967
    .local v7, "ret":Z
    if-nez v7, :cond_253

    .line 968
    const-string v8, "applySharePreference false."

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 972
    .end local v7    # "ret":Z
    :cond_253
    const/4 v7, 0x4

    if-ne v3, v7, :cond_25d

    .line 973
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v7, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->clearCFSharePreference(I)V

    .line 980
    :cond_25d
    iget-object v7, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$SS;->mOnComplete:Landroid/os/Message;

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v7, v4, v8}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 982
    .end local v2    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v3    # "cfAction":I
    .end local v5    # "cfReason":I
    .end local v6    # "cfEnable":I
    .end local v9    # "isCfu":Z
    .end local v10    # "serviceClass":I
    nop

    .line 1103
    :goto_265
    return-void

    :sswitch_data_266
    .sparse-switch
        0xc -> :sswitch_1da
        0xd -> :sswitch_1bd
        0x3d -> :sswitch_17a
        0x3e -> :sswitch_12a
        0x6d -> :sswitch_e1
        0x6e -> :sswitch_82
    .end sparse-switch
.end method

.method public handleMmiCodeCsfb(ILcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "mmi"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMmiCodeCsfb: reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDialString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDialString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mmi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->removeMmi(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 377
    const v0, 0xf006

    if-ne p1, v0, :cond_37

    .line 378
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    goto :goto_44

    .line 380
    :cond_37
    const v0, 0xf007

    if-ne p1, v0, :cond_44

    .line 381
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 384
    :cond_44
    :goto_44
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v0

    .line 386
    .local v0, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/Phone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 389
    .local v1, "msgCSFB":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Phone;->sendMessage(Landroid/os/Message;)Z

    .line 390
    return-void
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handlePinMmi(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hangupAll()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 342
    const-string v0, "hangupAll"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->hangupAll()V

    .line 345
    return-void
.end method

.method public isCdmaSubscriptionAppPresent()Z
    .registers 4

    .line 877
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    .line 878
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 879
    .local v0, "cdmaApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v1, v2, :cond_1d

    .line 880
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_1f

    :cond_1d
    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 879
    :goto_20
    return v1
.end method

.method public bridge synthetic isDataAllowed(I)Z
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isDataAllowed(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isUserDataEnabled()Z
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUserDataEnabled()Z

    move-result v0

    return v0
.end method

.method protected isValidCommandInterfaceCFReason(I)Z
    .registers 3
    .param p1, "commandInterfaceCFReason"    # I

    .line 394
    packed-switch p1, :pswitch_data_8

    .line 404
    const/4 v0, 0x0

    return v0

    .line 402
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public isWifiPdnOutOfService()Z
    .registers 2

    .line 1243
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isWifiPdnOutOfService()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic migrateFrom(Lcom/android/internal/telephony/Phone;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->migrateFrom(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method protected needNotifySrvccState()Z
    .registers 2

    .line 1265
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic needsOtaServiceProvisioning()Z
    .registers 2

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyCallForwardingIndicator()V
    .registers 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public bridge synthetic notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public bridge synthetic notifyImsReason(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyImsReason(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public bridge synthetic notifyPhoneStateChanged()V
    .registers 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    return-void
.end method

.method public bridge synthetic notifyPreciseCallStateChanged()V
    .registers 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method public bridge synthetic notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return-void
.end method

.method public bridge synthetic onCallQualityChanged(Landroid/telephony/CallQuality;I)V
    .registers 3

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onCallQualityChanged(Landroid/telephony/CallQuality;I)V

    return-void
.end method

.method protected onIncomingUSSD(ILjava/lang/String;)V
    .registers 9
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingUSSD ussdMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    move v2, v1

    goto :goto_1b

    :cond_1a
    move v2, v0

    .line 298
    .local v2, "isUssdRequest":Z
    :goto_1b
    if-eqz p1, :cond_20

    if-eq p1, v1, :cond_20

    move v0, v1

    .line 302
    .local v0, "isUssdError":Z
    :cond_20
    const/4 v1, 0x0

    .line 303
    .local v1, "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "s":I
    :goto_28
    if-ge v3, v4, :cond_45

    .line 304
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPendingUSSD()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 305
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .line 306
    goto :goto_45

    .line 303
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 310
    .end local v3    # "i":I
    .end local v4    # "s":I
    :cond_45
    :goto_45
    if-eqz v1, :cond_51

    .line 312
    if-eqz v0, :cond_4d

    .line 313
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinishedError()V

    goto :goto_71

    .line 315
    :cond_4d
    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_71

    .line 322
    :cond_51
    if-nez v0, :cond_61

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 324
    invoke-static {p2, v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v3

    .line 327
    .local v3, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .end local v3    # "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    goto :goto_70

    .line 329
    :cond_61
    if-eqz v0, :cond_70

    .line 330
    const-string v3, "onIncomingUSSD show error"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 332
    invoke-static {p2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->newNetworkInitiatedUssdError(Ljava/lang/String;Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    move-result-object v3

    .line 333
    .local v3, "mmi":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    goto :goto_71

    .line 329
    .end local v3    # "mmi":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    :cond_70
    :goto_70
    nop

    .line 337
    :goto_71
    return-void
.end method

.method public bridge synthetic onTtyModeReceived(I)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onTtyModeReceived(I)V

    return-void
.end method

.method public bridge synthetic registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public removeMmi(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .registers 4
    .param p1, "mmi"    # Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeMmi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->dumpPendingMmi()V

    .line 351
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public saveTimeSlot([J)V
    .registers 7
    .param p1, "timeSlot"    # [J

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.vendor.radio.cfu.timeslot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "timeSlotKey":Ljava/lang/String;
    const-string v1, ""

    .line 528
    .local v1, "timeSlotString":Ljava/lang/String;
    if-eqz p1, :cond_3d

    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3d

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-wide v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    :cond_3d
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeSlotString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .registers 4

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .registers 2
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .line 680
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->dumpPendingMmi()V

    .line 681
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method public setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    .registers 23
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "timeSlot"    # [J
    .param p6, "onComplete"    # Landroid/os/Message;

    .line 593
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallForwardInTimeSlot action = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", reason = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    if-nez v3, :cond_5f

    .line 599
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;

    const/4 v5, 0x1

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    invoke-direct {v0, v13, v14, v5, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;-><init>(Ljava/lang/String;[JZLandroid/os/Message;)V

    move-object v5, v0

    .line 600
    .local v5, "cfEx":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;
    const/16 v0, 0x6e

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v2, v6, v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 604
    .local v15, "resp":Landroid/os/Message;
    :try_start_3e
    iget-object v0, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 605
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/MtkImsUt;

    .line 606
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getActionFromCFAction(I)I

    move-result v7

    .line 607
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getConditionFromCFReason(I)I

    move-result v8

    .line 605
    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object v12, v15

    invoke-virtual/range {v6 .. v12}, Lcom/mediatek/ims/MtkImsUt;->updateCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    :try_end_59
    .catch Lcom/android/ims/ImsException; {:try_start_3e .. :try_end_59} :catch_5a

    .line 614
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    goto :goto_69

    .line 612
    :catch_5a
    move-exception v0

    .line 613
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1, v4, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_69

    .line 596
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v5    # "cfEx":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;
    .end local v15    # "resp":Landroid/os/Message;
    :cond_5f
    move-object/from16 v13, p3

    move-object/from16 v14, p5

    .line 615
    if-eqz v4, :cond_69

    .line 616
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_6a

    .line 615
    :cond_69
    :goto_69
    nop

    .line 618
    :goto_6a
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .registers 15
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timerSeconds"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallForwardingOption action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 472
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 477
    if-eqz p3, :cond_38

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 478
    :cond_38
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 479
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6c

    .line 480
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 481
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isSupportSaveCFNumber()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 482
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isCfEnable(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 483
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 484
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCFPreviousDialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "getNumber":Ljava/lang/String;
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 488
    move-object p3, v0

    .line 496
    .end local v0    # "getNumber":Ljava/lang/String;
    :cond_6c
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-super/range {v1 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    goto :goto_7c

    .line 498
    :cond_77
    if-eqz p6, :cond_7c

    .line 499
    invoke-virtual {p0, p6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    .line 501
    :cond_7c
    :goto_7c
    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .registers 3

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .registers 4

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setRadioPower(Z)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setRadioPower(Z)V

    return-void
.end method

.method public setServiceState(I)V
    .registers 7
    .param p1, "state"    # I

    .line 1171
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 1172
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->updateIsEmergencyOnly()V

    .line 1174
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isImsRegistered()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1175
    const-string v0, "wifi_calling"

    .line 1176
    .local v0, "notificationTag":Ljava/lang/String;
    const/4 v1, 0x1

    .line 1178
    .local v1, "notificationId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    .line 1179
    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1181
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isImsRegistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isImsRegistered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkImsPhone"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/4 v3, 0x1

    const-string v4, "wifi_calling"

    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1184
    .end local v0    # "notificationTag":Ljava/lang/String;
    .end local v1    # "notificationId":I
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_39
    return-void
.end method

.method public setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V
    .registers 8
    .param p1, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p2, "line"    # I
    .param p3, "enable"    # Z
    .param p4, "number"    # Ljava/lang/String;

    .line 1248
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1249
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1251
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmSsPrefer()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1252
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 1253
    .local v0, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    if-eqz v0, :cond_2e

    .line 1254
    iget v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1255
    .local v1, "record":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2e

    .line 1256
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1259
    .end local v1    # "record":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->notifyCallForwardingIndicator()V

    .line 1261
    .end local v0    # "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_33
    return-void
.end method

.method public bridge synthetic setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 3

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic startOnHoldTone(Lcom/android/internal/telephony/Connection;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public bridge synthetic startRingbackTone()V
    .registers 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startRingbackTone()V

    return-void
.end method

.method public bridge synthetic stopNetworkScan(Landroid/os/Message;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopNetworkScan(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public bridge synthetic stopRingbackTone()V
    .registers 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopRingbackTone()V

    return-void
.end method

.method public bridge synthetic unregisterForOnHoldTone(Landroid/os/Handler;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForTtyModeReceived(Landroid/os/Handler;)V

    return-void
.end method

.method public updateIsEmergencyOnly()V
    .registers 4

    .line 1191
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1192
    .local v0, "ss":Landroid/telephony/ServiceState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIsEmergencyOnly() sst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " supportImsEcc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isSupportImsEcc()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1192
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isSupportImsEcc()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1195
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    goto :goto_41

    .line 1197
    :cond_3b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mSS:Landroid/telephony/ServiceState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1199
    :goto_41
    return-void
.end method

.method protected updateRoamingState(Landroid/telephony/ServiceState;)V
    .registers 10
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .line 1114
    if-nez p1, :cond_8

    .line 1115
    const-string v0, "updateRoamingState: null ServiceState!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->loge(Ljava/lang/String;)V

    .line 1116
    return-void

    .line 1118
    :cond_8
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 1120
    .local v0, "newRoamingState":Z
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mLastKnownRoamingState:Z

    if-ne v1, v0, :cond_11

    .line 1121
    return-void

    .line 1123
    :cond_11
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 1124
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_21

    :cond_1f
    move v1, v2

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v1, 0x1

    .line 1127
    .local v1, "isInService":Z
    :goto_22
    if-nez v1, :cond_2a

    .line 1128
    const-string v2, "updateRoamingState: we are OUT_OF_SERVICE, ignoring roaming change."

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logi(Ljava/lang/String;)V

    .line 1129
    return-void

    .line 1136
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->isCsNotInServiceAndPsWwanReportingWlan(Landroid/telephony/ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1137
    const-string v2, "updateRoamingState: IWLAN masking roaming, ignore roaming change."

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logi(Ljava/lang/String;)V

    .line 1138
    return-void

    .line 1140
    :cond_36
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_9f

    .line 1141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRoamingState now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1142
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mLastKnownRoamingState:Z

    .line 1143
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mPhoneId:I

    invoke-static {v3, v4}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v3

    .line 1145
    .local v3, "imsManager":Lcom/android/ims/ImsManager;
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mIsWfcModeHomeForDomRoaming:Z

    if-eqz v4, :cond_97

    .line 1146
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v4

    .line 1147
    .local v4, "voiceRoamingType":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v5

    .line 1149
    .local v5, "dataRoamingType":I
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mLastKnownRoamingState:Z

    if-eqz v6, :cond_97

    const/4 v6, 0x2

    if-eq v4, v6, :cond_73

    if-ne v5, v6, :cond_97

    .line 1152
    :cond_73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Convert new roaming to HOME if it\'s domestic roaming,  voiceRoamingType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dataRoamingType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v3, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v6

    invoke-virtual {v3, v6, v2}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 1157
    return-void

    .line 1161
    .end local v4    # "voiceRoamingType":I
    .end local v5    # "dataRoamingType":I
    :cond_97
    invoke-virtual {v3, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v2

    invoke-virtual {v3, v2, v0}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 1162
    .end local v3    # "imsManager":Lcom/android/ims/ImsManager;
    goto :goto_bb

    .line 1163
    :cond_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRoamingState postponed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->logd(Ljava/lang/String;)V

    .line 1164
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1166
    :goto_bb
    return-void
.end method

.method public bridge synthetic updateServiceLocation()V
    .registers 1

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateServiceLocation()V

    return-void
.end method

.class public Lcom/mediatek/internal/telephony/MtkProxyController;
.super Lcom/android/internal/telephony/ProxyController;
.source "MtkProxyController.java"


# static fields
.field private static final C6M_1RILD:I = 0x2

.field private static final C6M_3RILD:I = 0x1

.field private static final EVENT_ON_REQUEST:I = 0x7

.field private static final EVENT_RADIO_AVAILABLE:I = 0x6

.field private static final G5M_1RILD:I = 0x0

.field private static final PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field private static final PROPERTY_CAPABILITY_SWITCH_STATE:Ljava/lang/String; = "persist.vendor.radio.simswitchstate"

.field private static final RC_CANNOT_SWITCH:I = 0x2

.field private static final RC_DO_SWITCH:I = 0x0

.field private static final RC_NO_NEED_SWITCH:I = 0x1

.field private static final RC_RETRY_CAUSE_AIRPLANE_MODE:I = 0x5

.field private static final RC_RETRY_CAUSE_CAPABILITY_SWITCHING:I = 0x2

.field private static final RC_RETRY_CAUSE_IN_CALL:I = 0x3

.field private static final RC_RETRY_CAUSE_NONE:I = 0x0

.field private static final RC_RETRY_CAUSE_RADIO_UNAVAILABLE:I = 0x4

.field private static final RC_RETRY_CAUSE_RESULT_ERROR:I = 0x6

.field private static final RC_RETRY_CAUSE_WORLD_MODE_SWITCHING:I = 0x1


# instance fields
.field private mCallStateReceiver:Landroid/content/BroadcastReceiver;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field mCurrRafs:[Landroid/telephony/RadioAccessFamily;

.field private mDeviceRegisterController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

.field private mHasRegisterCallStateReceiver:Z

.field private mHasRegisterWorldModeReceiver:Z

.field private mIsCapSwitching:Z

.field private mMtkHandler:Landroid/os/Handler;

.field private mMtkPhoneSubInfoControllerEx:Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;

.field protected mMtkUiccPhoneBookController:Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;

.field private mMtkUiccSmsController:Lcom/mediatek/internal/telephony/MtkUiccSmsController;

.field mNextRafs:[Landroid/telephony/RadioAccessFamily;

.field private mProxyControllerExt:Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;

.field private mRildMode:I

.field private mSetRafRetryCause:I

.field private mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field private mWorldModeReceiver:Landroid/content/BroadcastReceiver;

.field private onExceptionCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;-><init>(Landroid/content/Context;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 124
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterWorldModeReceiver:Z

    .line 125
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterCallStateReceiver:Z

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 128
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCurrRafs:[Landroid/telephony/RadioAccessFamily;

    .line 132
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->onExceptionCount:I

    .line 144
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 145
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mProxyControllerExt:Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;

    .line 259
    new-instance v1, Lcom/mediatek/internal/telephony/MtkProxyController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkProxyController$1;-><init>(Lcom/mediatek/internal/telephony/MtkProxyController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    .line 980
    new-instance v1, Lcom/mediatek/internal/telephony/MtkProxyController$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkProxyController$2;-><init>(Lcom/mediatek/internal/telephony/MtkProxyController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1002
    new-instance v1, Lcom/mediatek/internal/telephony/MtkProxyController$3;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkProxyController$3;-><init>(Lcom/mediatek/internal/telephony/MtkProxyController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCallStateReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 154
    const-string v1, "ro.vendor.mtk_ril_mode"

    const-string v2, "c6m_1rild"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "rilMode":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_42

    .line 157
    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    goto :goto_50

    .line 158
    :cond_42
    const-string v2, "c6m_3rild"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    goto :goto_50

    .line 161
    :cond_4e
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    .line 164
    :goto_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor - Enter, rild mode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 167
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkUiccPhoneBookController:Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;

    .line 169
    new-instance v0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v2, v4}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkPhoneSubInfoControllerEx:Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;

    .line 170
    new-instance v0, Lcom/mediatek/internal/telephony/MtkUiccSmsController;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkUiccSmsController:Lcom/mediatek/internal/telephony/MtkUiccSmsController;

    .line 171
    const-string v0, "Constructor - Exit"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkUiccSmsController:Lcom/mediatek/internal/telephony/MtkUiccSmsController;

    invoke-direct {v0, v2, v4, v5}, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/mediatek/internal/telephony/MtkUiccSmsController;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mDeviceRegisterController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    .line 177
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    if-eq v0, v3, :cond_ad

    .line 180
    nop

    .line 181
    :try_start_96
    invoke-static {p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 182
    nop

    .line 183
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeMtkProxyControllerExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mProxyControllerExt:Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a3} :catch_a4

    .line 187
    goto :goto_ad

    .line 184
    :catch_a4
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "mProxyControllerExt init fail"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_ad
    :goto_ad
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkProxyController;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 94
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkProxyController;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkProxyController;
    .param p1, "x1"    # Landroid/os/Message;

    .line 94
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkProxyController;->onRetryWhenRadioAvailable(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/MtkProxyController;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 94
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/MtkProxyController;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 94
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/MtkProxyController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 94
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->isEccInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/MtkProxyController;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkProxyController;

    .line 94
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->unRegisterCallStateReceiver()V

    return-void
.end method

.method private checkRadioCapabilitySwitchConditions([Landroid/telephony/RadioAccessFamily;)I
    .registers 19
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .line 738
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 739
    :try_start_5
    iput-object v2, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 742
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_16

    .line 744
    const-string v0, "keep it and return,because capability swithing"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 745
    iput v3, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 746
    monitor-exit p0

    return v4

    .line 747
    :cond_16
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    const/4 v5, 0x0

    if-ne v0, v3, :cond_22

    .line 748
    const-string v0, "setCapability, mIsCapSwitching is not switching, can switch"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 749
    iput v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 751
    :cond_22
    iput-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 752
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_2a1

    .line 755
    const-string v0, "ro.vendor.mtk_disable_cap_switch"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v6, 0x0

    if-ne v0, v4, :cond_39

    .line 756
    iput-object v6, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 758
    const-string v0, "skip switching because mtk_disable_cap_switch is true"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 759
    return v4

    .line 762
    :cond_39
    const-string v0, "vendor.gsm.gcf.testmode"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_4c

    .line 763
    iput-object v6, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 765
    const-string v0, "skip switching because FTA mode"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 766
    return v4

    .line 769
    :cond_4c
    const-string v0, "persist.vendor.radio.simswitch.emmode"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5f

    .line 770
    iput-object v6, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 772
    const-string v0, "skip switching because EM disable mode"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 773
    return v4

    .line 777
    :cond_5f
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 778
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v0

    if-nez v0, :cond_87

    .line 779
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->isModemTypeSwitching()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 780
    const-string v0, "world mode switching."

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 781
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterWorldModeReceiver:Z

    if-nez v0, :cond_7d

    .line 782
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->registerWorldModeReceiverFor90Modem()V

    .line 784
    :cond_7d
    iput v4, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 785
    monitor-enter p0

    .line 786
    :try_start_80
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 787
    monitor-exit p0

    .line 788
    return v3

    .line 787
    :catchall_84
    move-exception v0

    monitor-exit p0
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_84

    throw v0

    .line 790
    :cond_87
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    if-ne v0, v4, :cond_94

    .line 791
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterWorldModeReceiver:Z

    if-eqz v0, :cond_94

    .line 792
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->unRegisterWorldModeReceiver()V

    .line 793
    iput v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 799
    :cond_94
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v7, 0x3

    if-nez v0, :cond_28b

    .line 800
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->isEccInProgress()Z

    move-result v0

    if-eqz v0, :cond_a7

    goto/16 :goto_28b

    .line 811
    :cond_a7
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    if-ne v0, v7, :cond_b4

    .line 812
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterCallStateReceiver:Z

    if-eqz v0, :cond_b4

    .line 813
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->unRegisterCallStateReceiver()V

    .line 814
    iput v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 819
    :cond_b4
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_b6
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    if-ge v7, v0, :cond_10b

    .line 820
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v0

    const/4 v8, 0x4

    if-nez v0, :cond_f3

    .line 822
    iput v8, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 823
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v7

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    invoke-interface {v0, v4, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCapability fail,Phone"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not available"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 825
    monitor-enter p0

    .line 826
    :try_start_ec
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 827
    monitor-exit p0

    .line 828
    return v3

    .line 827
    :catchall_f0
    move-exception v0

    monitor-exit p0
    :try_end_f2
    .catchall {:try_start_ec .. :try_end_f2} :catchall_f0

    throw v0

    .line 829
    :cond_f3
    iget v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    if-ne v0, v8, :cond_108

    .line 830
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v7

    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    invoke-interface {v0, v8}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 831
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    sub-int/2addr v0, v4

    if-ne v7, v0, :cond_108

    .line 832
    iput v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 819
    :cond_108
    add-int/lit8 v7, v7, 0x1

    goto :goto_b6

    .line 837
    .end local v7    # "i":I
    :cond_10b
    const-string v0, "persist.vendor.radio.simswitch"

    const-string v3, "1"

    .line 838
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 840
    .local v8, "switchStatus":I
    const/4 v0, 0x0

    .line 841
    .local v0, "bIsboth3G":Z
    const/4 v3, 0x0

    .line 842
    .local v3, "bIsMajorPhone":Z
    const/4 v7, 0x0

    .line 844
    .local v7, "newMajorPhoneId":I
    const/4 v9, 0x1

    .line 845
    .local v9, "bIsSameRaf":Z
    const/4 v10, 0x0

    move v11, v7

    move v12, v9

    move v9, v0

    move/from16 v16, v10

    move v10, v3

    move/from16 v3, v16

    .end local v0    # "bIsboth3G":Z
    .end local v7    # "newMajorPhoneId":I
    .local v3, "i":I
    .local v9, "bIsboth3G":Z
    .local v10, "bIsMajorPhone":Z
    .local v11, "newMajorPhoneId":I
    .local v12, "bIsSameRaf":Z
    :goto_128
    array-length v0, v2

    if-ge v3, v0, :cond_198

    .line 846
    const/4 v0, 0x0

    .line 847
    .end local v10    # "bIsMajorPhone":Z
    .local v0, "bIsMajorPhone":Z
    aget-object v7, v2, v3

    invoke-virtual {v7}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v7

    and-int/2addr v7, v4

    if-lez v7, :cond_138

    .line 848
    const/4 v0, 0x1

    move v10, v0

    goto :goto_139

    .line 847
    :cond_138
    move v10, v0

    .line 851
    .end local v0    # "bIsMajorPhone":Z
    .restart local v10    # "bIsMajorPhone":Z
    :goto_139
    if-eqz v10, :cond_183

    .line 852
    aget-object v0, v2, v3

    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v7

    .line 853
    .end local v11    # "newMajorPhoneId":I
    .restart local v7    # "newMajorPhoneId":I
    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_169

    .line 854
    iput v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 856
    monitor-enter p0

    .line 857
    :try_start_148
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v0, :cond_15c

    aget-object v0, v0, v7

    .line 858
    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v0

    if-ne v7, v0, :cond_15c

    .line 859
    iput-object v6, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 860
    const-string v0, "no change, skip setRadioCapability"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    goto :goto_161

    .line 862
    :cond_15c
    const-string v0, "no change, skip setRadioCapability and trigger next"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 864
    :goto_161
    monitor-exit p0
    :try_end_162
    .catchall {:try_start_148 .. :try_end_162} :catchall_166

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 866
    return v4

    .line 864
    :catchall_166
    move-exception v0

    :try_start_167
    monitor-exit p0
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_166

    throw v0

    .line 868
    :cond_169
    if-nez v9, :cond_16f

    .line 875
    const/4 v0, 0x1

    move v9, v0

    move v11, v7

    .end local v9    # "bIsboth3G":Z
    .local v0, "bIsboth3G":Z
    goto :goto_183

    .line 869
    .end local v0    # "bIsboth3G":Z
    .restart local v9    # "bIsboth3G":Z
    :cond_16f
    const-string v0, "set more than one 3G phone, fail"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 870
    monitor-enter p0

    .line 871
    :try_start_175
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 872
    monitor-exit p0
    :try_end_178
    .catchall {:try_start_175 .. :try_end_178} :catchall_180

    .line 873
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "input parameter is incorrect"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :catchall_180
    move-exception v0

    :try_start_181
    monitor-exit p0
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_180

    throw v0

    .line 878
    .end local v7    # "newMajorPhoneId":I
    .restart local v11    # "newMajorPhoneId":I
    :cond_183
    :goto_183
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v0

    aget-object v7, v2, v3

    invoke-virtual {v7}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v7

    if-eq v0, v7, :cond_195

    .line 879
    const/4 v0, 0x0

    move v12, v0

    .line 845
    :cond_195
    add-int/lit8 v3, v3, 0x1

    goto :goto_128

    .line 882
    .end local v3    # "i":I
    :cond_198
    if-eqz v12, :cond_1a7

    .line 884
    const-string v0, "setRadioCapability: Already in requested configuration, nothing to do."

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 885
    monitor-enter p0

    .line 886
    :try_start_1a0
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 887
    monitor-exit p0

    .line 888
    return v4

    .line 887
    :catchall_1a4
    move-exception v0

    monitor-exit p0
    :try_end_1a6
    .catchall {:try_start_1a0 .. :try_end_1a6} :catchall_1a4

    throw v0

    .line 890
    :cond_1a7
    if-eqz v9, :cond_27c

    .line 898
    const-string v0, "ro.vendor.mtk_external_sim_support"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_24b

    .line 900
    const/4 v0, 0x0

    move v3, v0

    .restart local v3    # "i":I
    :goto_1b3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    if-ge v3, v0, :cond_203

    .line 902
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v0, "vendor.gsm.external.sim.enabled"

    const-string v7, "0"

    invoke-static {v3, v0, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 905
    .local v7, "isVsimEnabled":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v0, "vendor.gsm.external.sim.inserted"

    const-string v13, "0"

    invoke-static {v3, v0, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 908
    .local v13, "isVsimInserted":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    .line 909
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getDefaultDataSubId()I

    move-result v14

    .line 908
    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getPhoneId(I)I

    move-result v14

    .line 911
    .local v14, "defaultPhoneId":I
    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_200

    const-string v0, "0"

    .line 912
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f6

    const-string v0, ""

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_200

    :cond_1f6
    if-eq v11, v14, :cond_200

    .line 915
    monitor-enter p0

    .line 916
    :try_start_1f9
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 917
    monitor-exit p0

    .line 918
    return v4

    .line 917
    :catchall_1fd
    move-exception v0

    monitor-exit p0
    :try_end_1ff
    .catchall {:try_start_1f9 .. :try_end_1ff} :catchall_1fd

    throw v0

    .line 900
    .end local v7    # "isVsimEnabled":Ljava/lang/String;
    .end local v13    # "isVsimInserted":Ljava/lang/String;
    .end local v14    # "defaultPhoneId":I
    :cond_200
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b3

    .line 923
    .end local v3    # "i":I
    :cond_203
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    .line 925
    .local v3, "mainPhoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v0, "vendor.gsm.external.sim.enabled"

    const-string v7, "0"

    invoke-static {v3, v0, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 928
    .local v7, "isVsimEnabledOnMain":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v0, "vendor.gsm.external.sim.inserted"

    const-string v13, "0"

    invoke-static {v3, v0, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 930
    .local v13, "mainPhoneIdSimType":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->getPreferedRsimSlot()I

    move-result v14

    .line 932
    .local v14, "rsimPhoneId":I
    const-string v0, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_231

    const-string v0, "2"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_236

    :cond_231
    const/4 v0, -0x1

    if-eq v14, v0, :cond_23e

    if-eq v11, v14, :cond_23e

    .line 935
    :cond_236
    monitor-enter p0

    .line 936
    :try_start_237
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 937
    monitor-exit p0

    .line 938
    return v4

    .line 937
    :catchall_23b
    move-exception v0

    monitor-exit p0
    :try_end_23d
    .catchall {:try_start_237 .. :try_end_23d} :catchall_23b

    throw v0

    .line 939
    :cond_23e
    const-string v15, "ro.vendor.mtk_non_dsda_rsim_support"

    invoke-static {v15, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-ne v15, v4, :cond_24b

    if-eq v14, v0, :cond_24b

    if-ne v14, v11, :cond_24b

    .line 942
    return v5

    .line 948
    .end local v3    # "mainPhoneId":I
    .end local v7    # "isVsimEnabledOnMain":Ljava/lang/String;
    .end local v13    # "mainPhoneIdSimType":Ljava/lang/String;
    .end local v14    # "rsimPhoneId":I
    :cond_24b
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mProxyControllerExt:Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    invoke-interface {v0, v11, v3}, Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;->isNeedSimSwitch(II)Z

    move-result v0

    if-nez v0, :cond_263

    .line 949
    const-string v0, "check sim card type and skip setRadioCapability"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 950
    iput v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 951
    iput-object v6, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 953
    return v4

    .line 956
    :cond_263
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v0

    if-nez v0, :cond_276

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v0

    if-eqz v0, :cond_276

    .line 957
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getWorldPhone()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;->notifyRadioCapabilityChange(I)V

    .line 959
    :cond_276
    const-string v0, "checkRadioCapabilitySwitchConditions, do switch"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 960
    return v5

    .line 891
    :cond_27c
    monitor-enter p0

    .line 892
    :try_start_27d
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 893
    monitor-exit p0
    :try_end_280
    .catchall {:try_start_27d .. :try_end_280} :catchall_288

    .line 894
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "input parameter is incorrect - no 3g phone"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :catchall_288
    move-exception v0

    :try_start_289
    monitor-exit p0
    :try_end_28a
    .catchall {:try_start_289 .. :try_end_28a} :catchall_288

    throw v0

    .line 802
    .end local v8    # "switchStatus":I
    .end local v9    # "bIsboth3G":Z
    .end local v10    # "bIsMajorPhone":Z
    .end local v11    # "newMajorPhoneId":I
    .end local v12    # "bIsSameRaf":Z
    :cond_28b
    :goto_28b
    const-string v0, "setCapability in calling, fail to set RAT for phones"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 803
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterCallStateReceiver:Z

    if-nez v0, :cond_297

    .line 804
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->registerCallStateReceiver()V

    .line 806
    :cond_297
    iput v7, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 807
    monitor-enter p0

    .line 808
    :try_start_29a
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 809
    monitor-exit p0

    .line 810
    return v3

    .line 809
    :catchall_29e
    move-exception v0

    monitor-exit p0
    :try_end_2a0
    .catchall {:try_start_29a .. :try_end_2a0} :catchall_29e

    throw v0

    .line 752
    :catchall_2a1
    move-exception v0

    :try_start_2a2
    monitor-exit p0
    :try_end_2a3
    .catchall {:try_start_2a2 .. :try_end_2a3} :catchall_2a1

    throw v0
.end method

.method private isEccInProgress()Z
    .registers 7

    .line 1075
    const-string v0, "ril.cdma.inecmmode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, "value":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1077
    .local v1, "inEcm":Z
    const/4 v2, 0x0

    .line 1078
    .local v2, "isInEcc":Z
    nop

    .line 1079
    const-string v3, "telecom"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1078
    invoke-static {v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v3

    .line 1080
    .local v3, "tm":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v3, :cond_28

    .line 1082
    :try_start_1c
    invoke-interface {v3}, Lcom/android/internal/telecom/ITelecomService;->isInEmergencyCall()Z

    move-result v4
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_22

    move v2, v4

    .line 1085
    goto :goto_28

    .line 1083
    :catch_22
    move-exception v4

    .line 1084
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Exception of isEccInProgress"

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkProxyController;->loge(Ljava/lang/String;)V

    .line 1087
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEccInProgress, value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", inEcm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isInEcc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 1088
    if-nez v1, :cond_53

    if-eqz v2, :cond_51

    goto :goto_53

    :cond_51
    const/4 v4, 0x0

    goto :goto_54

    :cond_53
    :goto_53
    const/4 v4, 0x1

    :goto_54
    return v4
.end method

.method private onRetryWhenRadioAvailable(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRetryWhenRadioAvailable,mSetRafRetryCause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 965
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ge v0, v1, :cond_3f

    .line 966
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRetryWhenRadioAvailable, Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " modem off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 968
    return-void

    .line 965
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 971
    .end local v0    # "i":I
    :cond_3f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v0, :cond_50

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_50

    .line 973
    :try_start_48
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 976
    goto :goto_50

    .line 974
    :catch_4c
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 978
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_50
    :goto_50
    return-void
.end method

.method private registerCallStateReceiver()V
    .registers 4

    .line 1053
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 1054
    const-string v0, "registerCallStateReceiver, context is null => return"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 1055
    return-void

    .line 1058
    :cond_a
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1059
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1060
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCallStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1061
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterCallStateReceiver:Z

    .line 1062
    return-void
.end method

.method private registerWorldModeReceiverFor90Modem()V
    .registers 4

    .line 1032
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 1033
    const-string v0, "registerWorldModeReceiverFor90Modem, context is null => return"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 1034
    return-void

    .line 1036
    :cond_a
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1037
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "mediatek.intent.action.ACTION_MODEM_SWITCH_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1038
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1039
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterWorldModeReceiver:Z

    .line 1040
    return-void
.end method

.method private resetSimSwitchState()V
    .registers 3

    .line 608
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->isCapabilitySwitching()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 609
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 611
    :cond_c
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 612
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->clearTransaction()V

    .line 613
    return-void

    .line 616
    :cond_15
    monitor-enter p0

    .line 617
    const/4 v0, 0x0

    :try_start_17
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 618
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    .line 619
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->clearTransaction()V

    .line 620
    return-void

    .line 618
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private sendCapabilityFailBroadcast()V
    .registers 4

    .line 1025
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 1026
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1029
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_12
    return-void
.end method

.method private unRegisterCallStateReceiver()V
    .registers 3

    .line 1065
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 1066
    const-string v0, "unRegisterCallStateReceiver, context is null => return"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 1067
    return-void

    .line 1070
    :cond_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCallStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1071
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterCallStateReceiver:Z

    .line 1072
    return-void
.end method

.method private unRegisterWorldModeReceiver()V
    .registers 3

    .line 1043
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 1044
    const-string v0, "unRegisterWorldModeReceiver, context is null => return"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 1045
    return-void

    .line 1048
    :cond_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1049
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHasRegisterWorldModeReceiver:Z

    .line 1050
    return-void
.end method


# virtual methods
.method protected completeRadioCapabilityTransaction()V
    .registers 7

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishRadioCapabilityResponse: success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 556
    const-string v0, "persist.vendor.radio.simswitchstate"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_76

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v0, "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v2, v3, :cond_5e

    .line 560
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    .line 561
    .local v3, "raf":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "radioAccessFamily["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 562
    new-instance v4, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v4, v2, v3}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    .line 563
    .local v4, "phoneRC":Landroid/telephony/RadioAccessFamily;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .end local v3    # "raf":I
    .end local v4    # "phoneRC":Landroid/telephony/RadioAccessFamily;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 565
    .end local v2    # "i":I
    :cond_5e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "rafs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 570
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    .line 573
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetSimSwitchState()V

    .line 574
    .end local v0    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    goto :goto_83

    .line 575
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_76
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 578
    .restart local v2    # "intent":Landroid/content/Intent;
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    .line 581
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetSimSwitchState()V

    .line 585
    :goto_83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v0, :cond_c8

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_9c

    const/4 v4, 0x6

    if-eq v0, v4, :cond_9c

    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    if-ne v0, v3, :cond_c8

    .line 592
    :cond_9c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has next request, trigger it, cause = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 594
    :try_start_b2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v0

    if-nez v0, :cond_be

    .line 595
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V

    goto :goto_c3

    .line 597
    :cond_be
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;
    :try_end_c3
    .catch Ljava/lang/RuntimeException; {:try_start_b2 .. :try_end_c3} :catch_c4

    .line 602
    :goto_c3
    goto :goto_c8

    .line 600
    :catch_c4
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V

    .line 604
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_c8
    :goto_c8
    return-void
.end method

.method protected doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z
    .registers 4
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .line 249
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 250
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    move-result v0

    return v0

    .line 252
    :cond_a
    monitor-enter p0

    .line 253
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    .line 254
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_17

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->onExceptionCount:I

    .line 256
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    move-result v0

    return v0

    .line 254
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSwitcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 707
    goto :goto_a

    .line 705
    :catch_6
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 708
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public getDeviceRegisterController()Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mDeviceRegisterController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    return-object v0
.end method

.method public getMaxRafSupported()I
    .registers 7

    .line 643
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    new-array v0, v0, [I

    .line 644
    .local v0, "numRafSupported":[I
    const/4 v1, 0x0

    .line 645
    .local v1, "maxNumRafBit":I
    const/4 v2, 0x0

    .line 647
    .local v2, "maxRaf":I
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    .line 648
    invoke-super {p0}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v3

    return v3

    .line 652
    :cond_11
    const/4 v3, 0x0

    .local v3, "len":I
    :goto_12
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v4, v4

    if-ge v3, v4, :cond_2e

    .line 653
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2b

    .line 655
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    .line 652
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 658
    .end local v3    # "len":I
    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaxRafSupported: maxRafBit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " maxRaf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 663
    if-nez v2, :cond_58

    .line 664
    or-int/lit8 v2, v2, 0x1

    .line 667
    :cond_58
    return v2
.end method

.method public getMinRafSupported()I
    .registers 6

    .line 674
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    new-array v0, v0, [I

    .line 675
    .local v0, "numRafSupported":[I
    const/4 v1, 0x0

    .line 676
    .local v1, "minNumRafBit":I
    const/4 v2, 0x0

    .line 678
    .local v2, "minRaf":I
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    .line 679
    invoke-super {p0}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v3

    return v3

    .line 683
    :cond_11
    const/4 v3, 0x0

    .local v3, "len":I
    :goto_12
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v4, v4

    if-ge v3, v4, :cond_2e

    .line 684
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2b

    .line 685
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    .line 683
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 688
    .end local v3    # "len":I
    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMinRafSupported: minRafBit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " minRaf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 691
    return v2
.end method

.method public isCapabilitySwitching()Z
    .registers 6

    .line 716
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4f

    .line 717
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    .line 718
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v2, v3, :cond_49

    .line 719
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v3, v3, v2

    if-eq v3, v1, :cond_26

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v3, v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_26

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v3, v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_23

    goto :goto_26

    .line 718
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 722
    :cond_26
    :goto_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCapabilitySwitching: Phone["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] status is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 724
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 727
    .end local v2    # "i":I
    :cond_49
    monitor-exit v0

    .line 728
    const/4 v0, 0x0

    return v0

    .line 727
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_9 .. :try_end_4e} :catchall_4c

    throw v1

    .line 730
    :cond_4f
    monitor-enter p0

    .line 731
    :try_start_50
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mIsCapSwitching:Z

    monitor-exit p0

    return v0

    .line 732
    :catchall_54
    move-exception v0

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_54

    throw v0
.end method

.method protected issueFinish(I)V
    .registers 13
    .param p1, "sessionId"    # I

    .line 517
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 518
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V

    .line 519
    return-void

    .line 523
    :cond_9
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    .line 525
    :try_start_c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 527
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v2, v3, :cond_78

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "issueFinish: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mTransactionFailed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 531
    const/4 v6, 0x4

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mOldRadioAccessFamily:[I

    aget v7, v3, v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    aget-object v8, v3, v2

    .line 537
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    if-eqz v3, :cond_4a

    move v9, v1

    goto :goto_4c

    .line 538
    :cond_4a
    const/4 v3, 0x1

    move v9, v3

    :goto_4c
    const/4 v10, 0x4

    .line 531
    move-object v3, p0

    move v4, v2

    move v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 540
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    if-eqz v3, :cond_75

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "issueFinish: phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status: FAIL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 543
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x5

    aput v4, v3, v2

    .line 527
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 546
    .end local v2    # "i":I
    :cond_78
    monitor-exit v0

    .line 547
    return-void

    .line 546
    :catchall_7a
    move-exception v1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_c .. :try_end_7c} :catchall_7a

    throw v1
.end method

.method protected mtkLogd(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .line 695
    const-string v0, "MtkProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void
.end method

.method protected mtkLoge(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .line 699
    const-string v0, "MtkProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void
.end method

.method protected onApplyExceptionHandler(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 418
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 419
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onApplyExceptionHandler(Landroid/os/Message;)V

    .line 420
    return-void

    .line 422
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 423
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 424
    .local v1, "ar":Landroid/os/AsyncResult;
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v2

    .line 425
    .local v2, "id":I
    const/4 v3, 0x0

    .line 427
    .local v3, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_28

    .line 428
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 431
    :cond_28
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_40

    .line 433
    const/4 v4, 0x4

    iput v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 435
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    const-string v4, "onApplyRadioCapabilityResponse: Retry later due to modem off"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLoge(Ljava/lang/String;)V

    goto :goto_56

    .line 438
    :cond_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApplyRadioCapabilityResponse: exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLoge(Ljava/lang/String;)V

    .line 442
    :goto_56
    return-void
.end method

.method protected onApplyRadioCapabilityErrorHandler(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 379
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 380
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    .line 381
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V

    .line 382
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetSimSwitchState()V

    .line 383
    return-void

    .line 386
    :cond_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 387
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 388
    .local v1, "ar":Landroid/os/AsyncResult;
    const/4 v2, 0x0

    .line 390
    .local v2, "err":Lcom/android/internal/telephony/CommandException$Error;
    if-nez v0, :cond_81

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_81

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->onExceptionCount:I

    if-nez v3, :cond_81

    .line 392
    const/4 v3, 0x1

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->onExceptionCount:I

    .line 393
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_3c

    .line 394
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 397
    :cond_3c
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_5d

    .line 399
    const/4 v3, 0x4

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 401
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_44
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v4, v4

    if-ge v3, v4, :cond_57

    .line 402
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 401
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 404
    .end local v3    # "i":I
    :cond_57
    const-string v3, "onApplyRadioCapabilityResponse: Retry due to RADIO_NOT_AVAILABLE"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLoge(Ljava/lang/String;)V

    goto :goto_73

    .line 406
    :cond_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onApplyRadioCapabilityResponse: exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLoge(Ljava/lang/String;)V

    .line 409
    :goto_73
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    .line 410
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V

    .line 411
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetSimSwitchState()V

    .line 414
    :cond_81
    return-void
.end method

.method protected onFinishRadioCapabilityResponse(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 473
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 474
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    const/4 v1, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v3, :cond_5f

    .line 477
    :cond_13
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5f

    .line 478
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    .line 479
    :try_start_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinishRadioCapabilityResponse C2K mRadioAccessFamilyStatusCounter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 481
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 482
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v1, :cond_40

    .line 483
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 485
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinishRadioCapabilityResponse: exception="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLoge(Ljava/lang/String;)V

    .line 487
    monitor-exit v2

    .line 488
    return-void

    .line 487
    :catchall_5c
    move-exception v1

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_1e .. :try_end_5e} :catchall_5c

    throw v1

    .line 492
    :cond_5f
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_68

    .line 493
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onFinishRadioCapabilityResponse(Landroid/os/Message;)V

    .line 494
    return-void

    .line 497
    :cond_68
    const-string v2, "persist.vendor.radio.simswitchstate"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 498
    .local v2, "phoneId":I
    if-ltz v2, :cond_a5

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    if-ge v2, v3, :cond_a5

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    if-ne v3, v1, :cond_a5

    .line 499
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v1

    .line 500
    .local v1, "raf":I
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_a5

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinishRadioCapabilityResponse, main phone raf["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 502
    const/4 v3, 0x6

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 505
    .end local v1    # "raf":I
    :cond_a5
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onFinishRadioCapabilityResponse(Landroid/os/Message;)V

    .line 506
    return-void
.end method

.method protected onNotificationRadioCapabilityChanged(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 451
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 452
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-nez v0, :cond_10

    .line 453
    const-string v1, "onNotificationRadioCapabilityChanged: rc == null"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 454
    return-void

    .line 456
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationRadioCapabilityChanged: rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v1

    .line 459
    .local v1, "id":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3d

    .line 460
    const-string v2, "onNotificationRadioCapabilityChanged: update phone capability"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkProxyController;->logd(Ljava/lang/String;)V

    .line 461
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;Z)V

    .line 464
    :cond_3d
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onNotificationRadioCapabilityChanged(Landroid/os/Message;)V

    .line 465
    return-void
.end method

.method public onSetRadioCapabilityRequest([Landroid/telephony/RadioAccessFamily;)Z
    .registers 6
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .line 218
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 219
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v0

    .line 220
    .local v0, "ret":Z
    if-nez v0, :cond_d

    .line 221
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 223
    :cond_d
    return v0

    .line 226
    .end local v0    # "ret":Z
    :cond_e
    array-length v0, p1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ne v0, v1, :cond_3b

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2f

    .line 232
    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v1

    and-int/2addr v1, v2

    if-lez v1, :cond_2c

    .line 233
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "persist.vendor.radio.simswitchstate"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    goto :goto_2f

    .line 231
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 239
    .end local v0    # "i":I
    :cond_2f
    :goto_2f
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkProxyController;->checkRadioCapabilitySwitchConditions([Landroid/telephony/RadioAccessFamily;)I

    move-result v0

    .line 240
    .local v0, "result":I
    if-nez v0, :cond_3a

    .line 241
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v1

    return v1

    .line 243
    :cond_3a
    return v2

    .line 227
    .end local v0    # "result":I
    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Length of input rafs must equal to total phone count"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onStartRadioCapabilityResponse(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 288
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v0

    .line 289
    :try_start_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 290
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_6d

    .line 291
    iget v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->onExceptionCount:I

    if-nez v2, :cond_47

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    if-eq v2, v3, :cond_47

    .line 292
    const/4 v2, 0x0

    .line 294
    .local v2, "err":Lcom/android/internal/telephony/CommandException$Error;
    iput v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->onExceptionCount:I

    .line 295
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_27

    .line 296
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    move-object v2, v3

    .line 299
    :cond_27
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_47

    .line 301
    const/4 v3, 0x4

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRafRetryCause:I

    .line 303
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2f
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v4, v4

    if-ge v3, v4, :cond_42

    .line 304
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 306
    .end local v3    # "i":I
    :cond_42
    const-string v3, "onStartRadioCapabilityResponse: Retry later due to modem off"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLoge(Ljava/lang/String;)V

    .line 311
    .end local v2    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartRadioCapabilityResponse got exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iput v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    .line 313
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendCapabilityFailBroadcast()V

    .line 314
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetSimSwitchState()V

    .line 315
    monitor-exit v0

    return-void

    .line 317
    :cond_6d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/RadioCapability;

    .line 318
    .local v2, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v2, :cond_14e

    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v5

    iget v6, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    if-eq v5, v6, :cond_81

    goto/16 :goto_14e

    .line 323
    :cond_81
    iget v5, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 324
    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v5

    .line 325
    .local v5, "id":I
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_cb

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartRadioCapabilityResponse: Error response session="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " status=FAIL"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v6, 0x5

    aput v6, v3, v5

    .line 330
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    goto :goto_e8

    .line 332
    :cond_cb
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " status=STARTED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 333
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    aput v3, v6, v5

    .line 336
    :goto_e8
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v3, :cond_14c

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartRadioCapabilityResponse: success="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    if-nez v6, :cond_fb

    goto :goto_fc

    :cond_fb
    const/4 v4, 0x0

    :goto_fc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 350
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mTransactionFailed:Z

    if-eqz v3, :cond_110

    .line 353
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->issueFinish(I)V

    goto :goto_14c

    .line 356
    :cond_110
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 357
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_114
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v4, v4

    if-ge v3, v4, :cond_14c

    .line 358
    iget v8, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    const/4 v9, 0x2

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNewRadioAccessFamily:[I

    aget v10, v4, v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    aget-object v11, v4, v3

    const/4 v12, 0x0

    const/4 v13, 0x3

    move-object v6, p0

    move v7, v3

    invoke-virtual/range {v6 .. v13}, Lcom/mediatek/internal/telephony/MtkProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " status=APPLYING"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 369
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v6, 0x3

    aput v6, v4, v3

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_114

    .line 373
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "rc":Lcom/android/internal/telephony/RadioCapability;
    .end local v3    # "i":I
    .end local v5    # "id":I
    :cond_14c
    :goto_14c
    monitor-exit v0

    .line 374
    return-void

    .line 319
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    .restart local v2    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :cond_14e
    :goto_14e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartRadioCapabilityResponse: Ignore session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    .line 321
    monitor-exit v0

    return-void

    .line 373
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :catchall_16e
    move-exception v1

    monitor-exit v0
    :try_end_170
    .catchall {:try_start_3 .. :try_end_170} :catchall_16e

    throw v1
.end method

.method protected onTimeoutRadioCapability(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 511
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRadioCapabilitySessionId:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 512
    .local v0, "tmsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 513
    return-void
.end method

.method protected sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    .registers 16
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "rcPhase"    # I
    .param p4, "radioFamily"    # I
    .param p5, "logicalModemId"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "eventId"    # I

    .line 625
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mRildMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 626
    invoke-super/range {p0 .. p7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 628
    return-void

    .line 631
    :cond_9
    if-eqz p5, :cond_13

    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 632
    :cond_13
    const-string p5, "modem_sys3"

    .line 635
    :cond_15
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-super/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 637
    return-void
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .registers 5
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .line 206
    const-string v0, "ro.vendor.mtk_disable_cap_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkProxyController;->completeRadioCapabilityTransaction()V

    .line 208
    const-string v0, "skip switching because mtk_disable_cap_switch is true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkProxyController;->mtkLogd(Ljava/lang/String;)V

    goto :goto_21

    .line 210
    :cond_13
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, "tmsg":Landroid/os/Message;
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mCurrRafs:[Landroid/telephony/RadioAccessFamily;

    .line 212
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkProxyController;->mMtkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    .end local v0    # "tmsg":Landroid/os/Message;
    :goto_21
    return v1
.end method

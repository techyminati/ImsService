.class public Lcom/mediatek/ims/internal/MtkImsManager;
.super Lcom/android/ims/ImsManager;
.source "MtkImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/MtkImsManager$MtkImsServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_INCOMING_CALL_INDICATION:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL_INDICATION"

.field public static final ACTION_IMS_NOT_RINGING_INCOMING_CALL:Ljava/lang/String; = "com.mediatek.ims.NOT_RINGING_INCOMING_CALL"

.field public static final ACTION_IMS_RADIO_STATE_CHANGED:Ljava/lang/String; = "com.android.ims.IMS_RADIO_STATE_CHANGED"

.field public static final ACTION_IMS_RTP_INFO:Ljava/lang/String; = "com.android.ims.IMS_RTP_INFO"

.field public static final ACTION_IMS_SERVICE_DEREGISTERED:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DEREGISTERED"

.field public static final DATA_ROAMING_SETTING_PROP:Ljava/lang/String; = "net.lte.data.roaming.setting"

.field private static final DBG:Z = true

.field public static final ENHANCED_VONR_MODE_ENABLED:Ljava/lang/String; = "vonr_enabled"

.field public static final ENHANCED_VONR_SHOW_UI_ENABLED:Ljava/lang/String; = "vonr_ui_enabled"

.field public static final EXTRA_CALL_MODE:Ljava/lang/String; = "android:imsCallMode"

.field public static final EXTRA_DIAL_STRING:Ljava/lang/String; = "android:imsDialString"

.field public static final EXTRA_IMS_DISABLE_CAP_KEY:Ljava/lang/String; = "android:disablecap"

.field public static final EXTRA_IMS_ENABLE_CAP_KEY:Ljava/lang/String; = "android:enablecap"

.field public static final EXTRA_IMS_RADIO_STATE:Ljava/lang/String; = "android:imsRadioState"

.field public static final EXTRA_IMS_REG_ERROR_KEY:Ljava/lang/String; = "android:regError"

.field public static final EXTRA_IMS_REG_STATE_KEY:Ljava/lang/String; = "android:regState"

.field public static final EXTRA_MT_TO_NUMBER:Ljava/lang/String; = "mediatek:mtToNumber"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phoneId"

.field public static final EXTRA_RTP_NETWORK_ID:Ljava/lang/String; = "android:rtpNetworkId"

.field public static final EXTRA_RTP_PDN_ID:Ljava/lang/String; = "android:rtpPdnId"

.field public static final EXTRA_RTP_RECV_PKT_LOST:Ljava/lang/String; = "android:rtpRecvPktLost"

.field public static final EXTRA_RTP_SEND_PKT_LOST:Ljava/lang/String; = "android:rtpSendPktLost"

.field public static final EXTRA_RTP_TIMER:Ljava/lang/String; = "android:rtpTimer"

.field public static final EXTRA_RTT_INCOMING_CALL:Ljava/lang/String; = "rtt_feature:rtt_incoming_call"

.field public static final EXTRA_SEQ_NUM:Ljava/lang/String; = "android:imsSeqNum"

.field public static final IMS_REGISTERED:I = 0x1

.field public static final IMS_REGISTERING:I = 0x0

.field public static final IMS_REGISTER_FAIL:I = 0x2

.field public static final MTK_IMS_SERVICE:Ljava/lang/String; = "mtkIms"

.field private static final MULTI_IMS_SUPPORT:Ljava/lang/String; = "persist.vendor.mims_support"

.field public static final OOS_END_WITH_DISCONN:I = 0x0

.field public static final OOS_END_WITH_RESUME:I = 0x2

.field public static final OOS_START:I = 0x1

.field private static final PROPERTY_C2K_LTE_MODE:Ljava/lang/String; = "ro.vendor.mtk_c2k_lte_mode"

.field private static final PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field private static final PROPERTY_CT_VOLTE_SUPPORT:Ljava/lang/String; = "persist.vendor.mtk_ct_volte_support"

.field public static final PROPERTY_DBG_VONR_SHOW_UI_OVERRIDE:Ljava/lang/String; = "persist.vendor.dbg.vonr_ui_ovr"

.field private static final PROPERTY_DYNAMIC_IMS_SWITCH:Ljava/lang/String; = "persist.vendor.mtk_dynamic_ims_switch"

.field private static final PROPERTY_IMSCONFIG_FORCE_NOTIFY:Ljava/lang/String; = "vendor.ril.imsconfig.force.notify"

.field private static final PROPERTY_IMS_SUPPORT:Ljava/lang/String; = "persist.vendor.ims_support"

.field private static final PROPERTY_MTK_VILTE_SUPPORT:Ljava/lang/String; = "persist.vendor.vilte_support"

.field private static final PROPERTY_MTK_VOLTE_SUPPORT:Ljava/lang/String; = "persist.vendor.volte_support"

.field private static final PROPERTY_MTK_WFC_SUPPORT:Ljava/lang/String; = "persist.vendor.mtk_wfc_support"

.field private static final PROPERTY_TEST_SIM1:Ljava/lang/String; = "vendor.gsm.sim.ril.testsim"

.field private static final PROPERTY_TEST_SIM2:Ljava/lang/String; = "vendor.gsm.sim.ril.testsim.2"

.field private static final PROPERTY_TEST_SIM3:Ljava/lang/String; = "vendor.gsm.sim.ril.testsim.3"

.field private static final PROPERTY_TEST_SIM4:Ljava/lang/String; = "vendor.gsm.sim.ril.testsim.4"

.field private static final PROPERTY_VILTE_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.vilte.enable"

.field private static final PROPERTY_VIWIFI_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.viwifi.enable"

.field private static final PROPERTY_VOLTE_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.volte.enable"

.field public static final PROPERTY_VONR_SETTING_SUPPORT:Ljava/lang/String; = "persist.vendor.vonr_setting_support"

.field private static final PROPERTY_WFC_ENALBE:Ljava/lang/String; = "persist.vendor.mtk.wfc.enable"

.field public static final SERVICE_REG_CAPABILITY_EVENT_ADDED:I = 0x1

.field public static final SERVICE_REG_CAPABILITY_EVENT_ECC_NOT_SUPPORT:I = 0x4

.field public static final SERVICE_REG_CAPABILITY_EVENT_ECC_SUPPORT:I = 0x2

.field public static final SERVICE_REG_CAPABILITY_EVENT_REMOVED:I = 0x0

.field public static final SERVICE_REG_EVENT_WIFI_PDN_OOS_END_WITH_DISCONN:I = 0x6

.field public static final SERVICE_REG_EVENT_WIFI_PDN_OOS_END_WITH_RESUME:I = 0x7

.field public static final SERVICE_REG_EVENT_WIFI_PDN_OOS_START:I = 0x5

.field protected static final SIM_ID_1:I = 0x0

.field protected static final SIM_ID_2:I = 0x1

.field protected static final SIM_ID_3:I = 0x2

.field protected static final SIM_ID_4:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MtkImsManager"

.field private static final mSupportImsiSwitch:Z


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/ims/RegistrationManager$RegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private mMtkDeathRecipient:Lcom/mediatek/ims/internal/MtkImsManager$MtkImsServiceDeathRecipient;

.field protected mMtkImsListener:Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

.field private mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

.field private mMtkUt:Lcom/mediatek/ims/MtkImsUt;

.field private mNotifyOnly:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 296
    nop

    .line 297
    const-string v0, "ro.vendor.mtk_imsi_switch_support"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/internal/MtkImsManager;->mSupportImsiSwitch:Z

    .line 296
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 763
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    .line 285
    new-instance v1, Lcom/mediatek/ims/internal/MtkImsManager$MtkImsServiceDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager$MtkImsServiceDeathRecipient;-><init>(Lcom/mediatek/ims/internal/MtkImsManager;Lcom/mediatek/ims/internal/MtkImsManager$1;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkDeathRecipient:Lcom/mediatek/ims/internal/MtkImsManager$MtkImsServiceDeathRecipient;

    .line 287
    iput-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkUt:Lcom/mediatek/ims/MtkImsUt;

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    .line 1950
    iput-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1951
    iput-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsListener:Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    .line 1952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mNotifyOnly:Z

    .line 764
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->createMtkImsService(Z)V

    .line 765
    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/ims/internal/MtkImsManager;Lcom/mediatek/ims/internal/IMtkImsService;)Lcom/mediatek/ims/internal/IMtkImsService;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsManager;
    .param p1, "x1"    # Lcom/mediatek/ims/internal/IMtkImsService;

    .line 124
    iput-object p1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/mediatek/ims/internal/MtkImsManager;Lcom/mediatek/ims/MtkImsUt;)Lcom/mediatek/ims/MtkImsUt;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsManager;
    .param p1, "x1"    # Lcom/mediatek/ims/MtkImsUt;

    .line 124
    iput-object p1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkUt:Lcom/mediatek/ims/MtkImsUt;

    return-object p1
.end method

.method static synthetic access$302(Lcom/mediatek/ims/internal/MtkImsManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsManager;
    .param p1, "x1"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mNotifyOnly:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/ims/internal/MtkImsManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 124
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/internal/MtkImsManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 124
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ims/internal/MtkImsManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsManager;

    .line 124
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/internal/MtkImsManager;[I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsManager;
    .param p1, "x1"    # [I

    .line 124
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/MtkImsManager;->convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    return-object v0
.end method

.method private convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 8
    .param p1, "enabledFeatures"    # [I

    .line 2130
    array-length v0, p1

    new-array v0, v0, [Z

    .line 2131
    .local v0, "featuresEnabled":[Z
    const/4 v1, 0x0

    .line 2133
    .local v1, "i":I
    :goto_4
    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-gt v1, v3, :cond_1d

    array-length v5, p1

    if-ge v1, v5, :cond_1d

    .line 2134
    aget v3, p1, v1

    if-ne v3, v1, :cond_13

    .line 2135
    aput-boolean v4, v0, v1

    goto :goto_1a

    .line 2136
    :cond_13
    aget v3, p1, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    .line 2138
    aput-boolean v2, v0, v1

    .line 2133
    :cond_1a
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2141
    .end local v1    # "i":I
    :cond_1d
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    .line 2142
    .local v1, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    aget-boolean v2, v0, v2

    const/4 v5, 0x2

    if-nez v2, :cond_2b

    aget-boolean v2, v0, v5

    if-eqz v2, :cond_2e

    .line 2145
    :cond_2b
    invoke-virtual {v1, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 2147
    :cond_2e
    aget-boolean v2, v0, v4

    if-nez v2, :cond_37

    const/4 v2, 0x3

    aget-boolean v2, v0, v2

    if-eqz v2, :cond_3a

    .line 2150
    :cond_37
    invoke-virtual {v1, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 2152
    :cond_3a
    const/4 v2, 0x4

    aget-boolean v4, v0, v2

    if-nez v4, :cond_43

    aget-boolean v3, v0, v3

    if-eqz v3, :cond_46

    .line 2155
    :cond_43
    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 2157
    :cond_46
    return-object v1
.end method

.method private createMtkImsService(Z)V
    .registers 5
    .param p1, "checkService"    # Z

    .line 1053
    if-eqz p1, :cond_14

    .line 1054
    iget v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    .line 1055
    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->getMtkImsServiceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1057
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_14

    .line 1060
    const-string v1, "createMtkImsService binder is null"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1062
    return-void

    .line 1066
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_14
    iget v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->getMtkImsServiceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1068
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_28

    .line 1070
    :try_start_20
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkDeathRecipient:Lcom/mediatek/ims/internal/MtkImsManager$MtkImsServiceDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    .line 1072
    goto :goto_28

    .line 1071
    :catch_27
    move-exception v1

    .line 1075
    :cond_28
    :goto_28
    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    .line 1078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMtkImsService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method private getAirplaneModeFromSettings()Z
    .registers 5

    .line 747
    const/4 v0, 0x0

    .line 750
    .local v0, "value":Z
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    .line 749
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_d} :catch_14

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 751
    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    move v0, v2

    .line 754
    goto :goto_1c

    .line 752
    :catch_14
    move-exception v1

    .line 753
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "MtkImsManager"

    const-string v3, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAirplaneModeFromSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 756
    return v0
.end method

.method private static getAppropriateManagerForPlugin(Landroid/content/Context;I)Lcom/mediatek/ims/internal/MtkImsManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 1622
    invoke-static {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getImsManagerPluginInstance(Landroid/content/Context;)Lcom/mediatek/ims/internal/ext/IImsManagerExt;

    move-result-object v0

    .line 1624
    .local v0, "imsMgrExt":Lcom/mediatek/ims/internal/ext/IImsManagerExt;
    if-eqz v0, :cond_a

    .line 1625
    invoke-interface {v0, p0, p1}, Lcom/mediatek/ims/internal/ext/IImsManagerExt;->getImsPhoneId(Landroid/content/Context;I)I

    move-result p1

    .line 1627
    :cond_a
    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/internal/MtkImsManager;

    return-object v1
.end method

.method private static getCallId(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .param p0, "incomingCallExtras"    # Landroid/os/Bundle;

    .line 2378
    if-nez p0, :cond_4

    .line 2379
    const/4 v0, 0x0

    return-object v0

    .line 2382
    :cond_4
    const-string v0, "android:imsCallID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCallNum(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p1, "incomingCallIntent"    # Landroid/content/Intent;

    .line 1129
    if-nez p1, :cond_4

    .line 1130
    const/4 v0, 0x0

    return-object v0

    .line 1133
    :cond_4
    const-string v0, "android:imsDialString"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFeaturePropValue(Ljava/lang/String;I)I
    .registers 7
    .param p0, "propName"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 1694
    const/4 v0, 0x0

    .line 1696
    .local v0, "defaultPropValue":I
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1698
    .local v1, "featureValue":I
    invoke-static {}, Lcom/mediatek/ims/internal/MtkImsManager;->isSupportMims()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_15

    .line 1699
    shl-int v2, v4, p1

    and-int/2addr v2, v1

    if-lez v2, :cond_13

    move v3, v4

    :cond_13
    move v2, v3

    .local v2, "propResult":I
    goto :goto_1b

    .line 1702
    .end local v2    # "propResult":I
    :cond_15
    and-int/lit8 v2, v1, 0x1

    if-lez v2, :cond_1a

    move v3, v4

    :cond_1a
    move v2, v3

    .line 1704
    .restart local v2    # "propResult":I
    :goto_1b
    return v2
.end method

.method private static getImsManagerPluginInstance(Landroid/content/Context;)Lcom/mediatek/ims/internal/ext/IImsManagerExt;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1523
    const-string v0, "getImsManagerPluginInstance"

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->logd(Ljava/lang/String;)V

    .line 1525
    invoke-static {p0}, Lcom/mediatek/ims/internal/ext/OpImsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/internal/ext/OpImsCustomizationFactoryBase;

    move-result-object v0

    .line 1526
    invoke-virtual {v0, p0}, Lcom/mediatek/ims/internal/ext/OpImsCustomizationFactoryBase;->makeImsManagerExt(Landroid/content/Context;)Lcom/mediatek/ims/internal/ext/IImsManagerExt;

    move-result-object v0

    .line 1527
    .local v0, "imsMgrExt":Lcom/mediatek/ims/internal/ext/IImsManagerExt;
    if-nez v0, :cond_14

    .line 1528
    const-string v1, "Unable to create ImsManagerPluginInstane"

    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManager;->logd(Ljava/lang/String;)V

    .line 1530
    :cond_14
    return-object v0
.end method

.method private getIsimImpi(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 1912
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    .line 1913
    const-string v1, "[IR] getIsimImpi: Invalid subId so return"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1914
    return-object v0

    .line 1917
    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimImpiForSubscriber(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_12} :catch_13

    return-object v0

    .line 1920
    :catch_13
    move-exception v1

    .line 1922
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 1918
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v1

    .line 1919
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public static getMainPhoneIdForSingleIms(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "phoneId":I
    const-string v1, "persist.vendor.radio.simswitch"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v1, v2

    .line 308
    .end local v0    # "phoneId":I
    .local v1, "phoneId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMainPhoneIdForSingleIms] : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->logd(Ljava/lang/String;)V

    .line 309
    return v1
.end method

.method private static getMccMncForSubId(ILandroid/telephony/SubscriptionManager;)Ljava/lang/String;
    .registers 9
    .param p0, "subId"    # I
    .param p1, "subsMgr"    # Landroid/telephony/SubscriptionManager;

    .line 1927
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, "mccMnc":Ljava/lang/String;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 1929
    const-string v1, "[IR] Getting mcc mnc from TelephonyManager.getSimOperator"

    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManager;->logd(Ljava/lang/String;)V

    .line 1930
    return-object v0

    .line 1932
    :cond_16
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 1933
    .local v1, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IR] Getting mcc mnc from from subinfo for subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/MtkImsManager;->logd(Ljava/lang/String;)V

    .line 1934
    if-eqz v1, :cond_81

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_81

    .line 1935
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 1936
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, p0, :cond_80

    .line 1937
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v2

    .line 1938
    .local v2, "mcc":I
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v4

    .line 1939
    .local v4, "mnc":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1940
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IR] getMccMncForSubId from subInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ims/internal/MtkImsManager;->logd(Ljava/lang/String;)V

    .line 1941
    return-object v0

    .line 1943
    .end local v2    # "mcc":I
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "mnc":I
    :cond_80
    goto :goto_3a

    .line 1945
    :cond_81
    return-object v0
.end method

.method private getMtToNumber(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p1, "incomingCallIntent"    # Landroid/content/Intent;

    .line 1152
    if-nez p1, :cond_4

    .line 1153
    const/4 v0, 0x0

    return-object v0

    .line 1156
    :cond_4
    const-string v0, "mediatek:mtToNumber"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMtkImsServiceName(I)Ljava/lang/String;
    .registers 2
    .param p0, "phoneId"    # I

    .line 1046
    const-string v0, "mtkIms"

    return-object v0
.end method

.method private getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;
    .registers 2

    .line 1908
    const-string v0, "iphonesubinfoEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v0

    return-object v0
.end method

.method private getOperatorNumericFromImpi(Ljava/lang/String;)Ljava/lang/String;
    .registers 26
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 1860
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "405840"

    const-string v3, "405854"

    const-string v4, "405855"

    const-string v5, "405856"

    const-string v6, "405857"

    const-string v7, "405858"

    const-string v8, "405859"

    const-string v9, "405860"

    const-string v10, "405861"

    const-string v11, "405862"

    const-string v12, "405863"

    const-string v13, "405864"

    const-string v14, "405865"

    const-string v15, "405866"

    const-string v16, "405867"

    const-string v17, "405868"

    const-string v18, "405869"

    const-string v19, "405870"

    const-string v20, "405871"

    const-string v21, "405872"

    const-string v22, "405873"

    const-string v23, "405874"

    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    move-result-object v2

    .line 1864
    .local v2, "mImsMccMncList":[Ljava/lang/String;
    const-string v3, "mcc"

    .line 1865
    .local v3, "mccTag":Ljava/lang/String;
    const-string v4, "mnc"

    .line 1866
    .local v4, "mncTag":Ljava/lang/String;
    const/4 v5, 0x3

    .line 1867
    .local v5, "mccLength":I
    const/4 v6, 0x3

    .line 1869
    .local v6, "mncLength":I
    array-length v7, v2

    if-nez v7, :cond_43

    .line 1870
    const-string v7, "[IR] mImsMccMncList is null, returning default mccmnc"

    invoke-direct {v0, v7}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1871
    return-object v1

    .line 1873
    :cond_43
    const/4 v7, 0x0

    .line 1874
    .local v7, "impi":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[IR] IMPI requested by phoneId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1875
    iget v8, v0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v8

    invoke-direct {v0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v7

    .line 1876
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[IR] IMPI : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1878
    if-eqz v7, :cond_128

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_84

    goto/16 :goto_128

    .line 1882
    :cond_84
    const-string v9, "mcc"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 1883
    .local v10, "mccPosition":I
    const-string v11, "mnc"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 1884
    .local v12, "mncPosition":I
    const/4 v13, -0x1

    if-eq v10, v13, :cond_122

    if-ne v12, v13, :cond_97

    goto/16 :goto_122

    .line 1888
    :cond_97
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v10

    .line 1889
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x3

    .line 1888
    invoke-virtual {v7, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v12

    .line 1890
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x3

    .line 1889
    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1891
    .local v9, "masterMccMnc":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[IR] MccMnc fetched from IMPI: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1892
    if-eqz v9, :cond_10d

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e3

    goto :goto_10d

    .line 1896
    :cond_e3
    array-length v8, v2

    const/4 v11, 0x0

    :goto_e5
    if-ge v11, v8, :cond_107

    aget-object v13, v2, v11

    .line 1897
    .local v13, "mccMnc":Ljava/lang/String;
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_104

    .line 1898
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[IR] mccMnc matched, Returning mccmnc from IMPI: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1899
    return-object v9

    .line 1896
    .end local v13    # "mccMnc":Ljava/lang/String;
    :cond_104
    add-int/lit8 v11, v11, 0x1

    goto :goto_e5

    .line 1902
    :cond_107
    const-string v8, "[IR] IMPI mcc/mnc not matched, returning default mccmnc"

    invoke-direct {v0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1903
    return-object v1

    .line 1893
    :cond_10d
    :goto_10d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[IR] IMPI MccMnc is null/empty, Returning default mccmnc: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1894
    return-object v1

    .line 1885
    .end local v9    # "masterMccMnc":Ljava/lang/String;
    :cond_122
    :goto_122
    const-string v8, "[IR] mcc/mnc position -1, returning default mccmnc"

    invoke-direct {v0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1886
    return-object v1

    .line 1879
    .end local v10    # "mccPosition":I
    .end local v12    # "mncPosition":I
    :cond_128
    :goto_128
    const-string v8, "[IR] impi is null/empty, returning default mccmnc"

    invoke-direct {v0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1880
    return-object v1
.end method

.method private static getPhoneId(Landroid/content/Intent;)I
    .registers 3
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    .line 1254
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 1255
    return v0

    .line 1258
    :cond_4
    const-string v1, "android:phoneId"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSeqNum(Landroid/content/Intent;)I
    .registers 4
    .param p1, "incomingCallIntent"    # Landroid/content/Intent;

    .line 1144
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 1145
    return v0

    .line 1148
    :cond_4
    const-string v1, "android:imsSeqNum"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hookProprietaryImsListener()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1955
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 1956
    const-string v0, "hookProprietaryImsListener get NULL mMtkImsService so create it"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1957
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->createMtkImsService(Z)V

    .line 1960
    :cond_d
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    if-nez v0, :cond_37

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] hook proprietary IMS listener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mNotifyOnly:Z

    .line 1963
    new-instance v0, Lcom/mediatek/ims/internal/MtkImsManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/MtkImsManager$1;-><init>(Lcom/mediatek/ims/internal/MtkImsManager;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    goto :goto_3c

    .line 2061
    :cond_37
    const-string v0, "mListener was created"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2064
    :goto_3c
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsListener:Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    if-nez v0, :cond_48

    .line 2065
    new-instance v0, Lcom/mediatek/ims/internal/MtkImsManager$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/MtkImsManager$2;-><init>(Lcom/mediatek/ims/internal/MtkImsManager;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsListener:Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    goto :goto_4d

    .line 2110
    :cond_48
    const-string v0, "mMtkListener was created"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2114
    :goto_4d
    const/16 v0, 0x6a

    :try_start_4f
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    if-eqz v2, :cond_62

    .line 2115
    iget v3, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    iget-object v4, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    iget-object v5, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsListener:Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    iget-boolean v6, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mNotifyOnly:Z

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/mediatek/ims/internal/IMtkImsService;->registerProprietaryImsListener(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;Z)V

    .line 2117
    iput-boolean v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mNotifyOnly:Z

    .line 2126
    nop

    .line 2127
    return-void

    .line 2119
    :cond_62
    const-string v1, "mMtkImsService is not ready yet"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2120
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "hookProprietaryImsListener()"

    invoke-direct {v1, v2, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/mediatek/ims/internal/MtkImsManager;
    throw v1
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_6f} :catch_6f

    .line 2123
    .restart local p0    # "this":Lcom/mediatek/ims/internal/MtkImsManager;
    :catch_6f
    move-exception v1

    .line 2124
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "registerProprietaryImsListener(listener)"

    invoke-direct {v2, v3, v1, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method private is5gSupported()Z
    .registers 3

    .line 2603
    const-string v0, "ro.vendor.mtk_ps1_rat"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2604
    .local v0, "ps1Rat":Ljava/lang/String;
    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private isCellularDataRoaming()Z
    .registers 9

    .line 2230
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    .line 2231
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2233
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 2234
    const-string v2, "isCellularDataRoaming(): TelephonyManager null"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 2235
    return v1

    .line 2238
    :cond_13
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 2239
    .local v2, "ss":Landroid/telephony/ServiceState;
    if-nez v2, :cond_23

    .line 2240
    const-string v3, "isCellularDataRoaming(): ServiceState null"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 2241
    return v1

    .line 2244
    :cond_23
    instance-of v3, v2, Lmediatek/telephony/MtkServiceState;

    if-eqz v3, :cond_55

    .line 2245
    move-object v3, v2

    check-cast v3, Lmediatek/telephony/MtkServiceState;

    .line 2246
    .local v3, "mtkSs":Lmediatek/telephony/MtkServiceState;
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getCellularDataRegState()I

    move-result v4

    .line 2247
    .local v4, "regState":I
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getCellularDataRoaming()Z

    move-result v5

    .line 2249
    .local v5, "isDataroaming":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCellularDataRoaming(): regState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isDataroaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2251
    if-nez v4, :cond_54

    if-eqz v5, :cond_54

    .line 2252
    const/4 v1, 0x1

    return v1

    .line 2254
    .end local v3    # "mtkSs":Lmediatek/telephony/MtkServiceState;
    .end local v4    # "regState":I
    .end local v5    # "isDataroaming":Z
    :cond_54
    goto :goto_5a

    .line 2255
    :cond_55
    const-string v3, "isCellularDataRoaming(): not MtkServiceState"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 2258
    :goto_5a
    return v1
.end method

.method private isConvertRoamingStateForSpecificOP()Z
    .registers 9

    .line 665
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    .line 666
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 668
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const-string v1, "mtk_carrier_wfc_mode_domestic_roaming_to_home"

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    .line 670
    .local v1, "isWfcModeHomeForDomRoaming":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWfcModeHomeForDomRoaming:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 672
    const/4 v2, 0x0

    .line 674
    .local v2, "ret":Z
    if-eqz v1, :cond_69

    .line 675
    if-eqz v0, :cond_64

    .line 676
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 677
    .local v3, "ss":Landroid/telephony/ServiceState;
    if-eqz v3, :cond_5e

    .line 678
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v4

    .line 679
    .local v4, "voiceRoamingType":I
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v5

    .line 681
    .local v5, "dataRoamingType":I
    const/4 v6, 0x2

    if-eq v4, v6, :cond_40

    if-ne v5, v6, :cond_5d

    .line 683
    :cond_40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Convert roaming to HOME if it\'s domestic roaming,  voiceRoamingType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dataRoamingType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 686
    const/4 v2, 0x1

    .line 688
    .end local v4    # "voiceRoamingType":I
    .end local v5    # "dataRoamingType":I
    :cond_5d
    goto :goto_63

    .line 689
    :cond_5e
    const-string v4, "isCellularDataRoaming(): ServiceState null"

    invoke-direct {p0, v4}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 691
    .end local v3    # "ss":Landroid/telephony/ServiceState;
    :goto_63
    goto :goto_69

    .line 692
    :cond_64
    const-string v3, "isCellularDataRoaming(): TelephonyManager null"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 696
    :cond_69
    :goto_69
    return v2
.end method

.method private isFeatureEnabledByPlatformExt(I)Z
    .registers 7
    .param p1, "feature"    # I

    .line 1500
    const/4 v0, 0x1

    .line 1501
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    const-string v2, ", return "

    if-nez v1, :cond_24

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid: context="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->logw(Ljava/lang/String;)V

    .line 1503
    return v0

    .line 1505
    :cond_24
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManager;->getImsManagerPluginInstance(Landroid/content/Context;)Lcom/mediatek/ims/internal/ext/IImsManagerExt;

    move-result-object v1

    .line 1506
    .local v1, "imsMgrExt":Lcom/mediatek/ims/internal/ext/IImsManagerExt;
    if-nez v1, :cond_47

    .line 1507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plugin null="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->logw(Ljava/lang/String;)V

    .line 1508
    return v0

    .line 1510
    :cond_47
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-interface {v1, v2, p1, v3}, Lcom/mediatek/ims/internal/ext/IImsManagerExt;->isFeatureEnabledByPlatform(Landroid/content/Context;II)Z

    move-result v0

    .line 1512
    return v0
.end method

.method private isLteSupported()Z
    .registers 3

    .line 1689
    const-string v0, "ro.vendor.mtk_ps1_rat"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1690
    .local v0, "ps1Rat":Ljava/lang/String;
    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 374
    invoke-static {}, Lcom/mediatek/ims/internal/MtkImsManager;->isSupportMims()Z

    move-result v0

    if-nez v0, :cond_a

    .line 375
    invoke-static {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getMainPhoneIdForSingleIms(Landroid/content/Context;)I

    move-result p1

    .line 377
    :cond_a
    invoke-static {p0, p1}, Lcom/mediatek/ims/internal/MtkImsManager;->getAppropriateManagerForPlugin(Landroid/content/Context;I)Lcom/mediatek/ims/internal/MtkImsManager;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v0

    .line 377
    return v0
.end method

.method private isOp09SimCard(Ljava/lang/String;)Z
    .registers 7
    .param p1, "iccId"    # Ljava/lang/String;

    .line 1591
    const/4 v0, 0x0

    .line 1592
    .local v0, "isOp09Card":Z
    const-string v1, "898603"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_80

    const-string v1, "898611"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 1593
    const-string v1, "8985302"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_80

    const-string v1, "8985307"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 1594
    const-string v1, "8985231"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_80

    .line 1596
    :cond_2a
    const-string v1, "894900"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1597
    const-string v1, ""

    .line 1598
    .local v1, "currentMccMnc":Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    const-string v3, ""

    if-nez v2, :cond_41

    .line 1599
    const-string v2, "vendor.gsm.ril.uicc.mccmnc"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_58

    .line 1601
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vendor.gsm.ril.uicc.mccmnc."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1602
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1604
    :goto_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOp09SimCard, currentMccMnc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1605
    if-eqz v1, :cond_81

    .line 1606
    const-string v2, "46011"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    const-string v2, "46003"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 1607
    :cond_7e
    const/4 v0, 0x1

    goto :goto_81

    .line 1595
    .end local v1    # "currentMccMnc":Ljava/lang/String;
    :cond_80
    :goto_80
    const/4 v0, 0x1

    .line 1610
    :cond_81
    :goto_81
    return v0
.end method

.method private isPhoneIdSupportIms(I)Z
    .registers 9
    .param p1, "phoneId"    # I

    .line 2198
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 2199
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_e

    .line 2200
    return v2

    .line 2203
    :cond_e
    const/4 v1, 0x0

    const-string v3, "persist.vendor.ims_support"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2204
    .local v1, "isImsSupport":I
    const-string v3, "persist.vendor.mims_support"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2205
    .local v3, "mimsCount":I
    const/4 v4, 0x0

    .line 2207
    .local v4, "result":Z
    if-eqz v1, :cond_6f

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_6f

    .line 2212
    :cond_25
    if-ne v3, v2, :cond_31

    .line 2213
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->getMainCapabilityPhoneId(Landroid/content/Context;)I

    move-result v2

    if-ne v2, p1, :cond_6e

    .line 2214
    const/4 v4, 0x1

    goto :goto_6e

    .line 2217
    :cond_31
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getProtocolStackId(I)I

    move-result v2

    .line 2218
    .local v2, "protocalStackId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPhoneIdSupportIms(), mimsCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", protocalStackId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", MainCapabilityPhoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    .line 2220
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/MtkImsManager;->getMainCapabilityPhoneId(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2218
    invoke-direct {p0, v5}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2221
    if-gt v2, v3, :cond_6e

    .line 2222
    const/4 v4, 0x1

    .line 2225
    .end local v2    # "protocalStackId":I
    :cond_6e
    :goto_6e
    return v4

    .line 2208
    :cond_6f
    :goto_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] isPhoneIdSupportIms, not support IMS"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2209
    return v4
.end method

.method public static isSupportMims()Z
    .registers 2

    .line 301
    const-string v0, "persist.vendor.mims_support"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method static synthetic lambda$isImsOverNrEnabledByPlatform$1(I)Z
    .registers 2
    .param p0, "cap"    # I

    .line 2456
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1083
    const-string v0, "MtkImsManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1100
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkImsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mLogTagPostfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return-void
.end method

.method private static sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1107
    const-string v0, "MtkImsManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setComboFeatureValue(III)V
    .registers 15
    .param p1, "volte_en"    # I
    .param p2, "vt_en"    # I
    .param p3, "wfc_en"    # I

    .line 1709
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_7e

    .line 1713
    .local v1, "features":[I
    new-array v2, v0, [I

    fill-array-data v2, :array_8a

    .line 1715
    .local v2, "networks":[I
    new-array v0, v0, [I

    fill-array-data v0, :array_96

    .line 1717
    .local v0, "setvalues":[I
    iget v3, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    const-string v4, "persist.vendor.mtk.volte.enable"

    invoke-static {v4, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v3

    .line 1718
    .local v3, "oldvolteValue":I
    iget v4, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    const-string v5, "persist.vendor.mtk.vilte.enable"

    invoke-static {v5, v4}, Lcom/mediatek/ims/internal/MtkImsManager;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v4

    .line 1719
    .local v4, "oldvilteValue":I
    iget v5, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    const-string v6, "persist.vendor.mtk.viwifi.enable"

    invoke-static {v6, v5}, Lcom/mediatek/ims/internal/MtkImsManager;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v5

    .line 1720
    .local v5, "oldviwifiValue":I
    iget v6, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    const-string v7, "persist.vendor.mtk.wfc.enable"

    invoke-static {v7, v6}, Lcom/mediatek/ims/internal/MtkImsManager;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v6

    .line 1722
    .local v6, "oldWfcValue":I
    const/4 v7, -0x1

    if-eq p1, v7, :cond_35

    move v8, p1

    goto :goto_36

    :cond_35
    move v8, v3

    :goto_36
    const/4 v9, 0x0

    aput v8, v0, v9

    .line 1723
    const/4 v8, 0x1

    if-eq p2, v7, :cond_3e

    move v9, p2

    goto :goto_3f

    :cond_3e
    move v9, v4

    :goto_3f
    aput v9, v0, v8

    .line 1724
    const/4 v8, 0x2

    if-eq p2, v7, :cond_46

    move v9, p2

    goto :goto_47

    :cond_46
    move v9, v5

    :goto_47
    aput v9, v0, v8

    .line 1725
    const/4 v8, 0x3

    if-eq p3, v7, :cond_4e

    move v7, p3

    goto :goto_4f

    :cond_4e
    move v7, v6

    :goto_4f
    aput v7, v0, v8

    .line 1727
    iget-object v7, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-static {v7, v8}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v7

    .line 1729
    .local v7, "imsManager":Lcom/android/ims/ImsManager;
    :try_start_59
    move-object v8, v7

    check-cast v8, Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-virtual {v8}, Lcom/mediatek/ims/internal/MtkImsManager;->getConfigInterfaceEx()Lcom/mediatek/ims/internal/MtkImsConfig;

    move-result-object v8

    .line 1730
    .local v8, "config":Lcom/mediatek/ims/internal/MtkImsConfig;
    if-eqz v8, :cond_67

    .line 1731
    iget-object v9, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mImsConfigListener:Lcom/android/ims/ImsConfigListener;

    invoke-virtual {v8, v1, v2, v0, v9}, Lcom/mediatek/ims/internal/MtkImsConfig;->setMultiFeatureValues([I[I[ILcom/android/ims/ImsConfigListener;)V
    :try_end_67
    .catch Lcom/android/ims/ImsException; {:try_start_59 .. :try_end_67} :catch_68

    .line 1736
    .end local v8    # "config":Lcom/mediatek/ims/internal/MtkImsConfig;
    :cond_67
    goto :goto_7d

    .line 1734
    :catch_68
    move-exception v8

    .line 1735
    .local v8, "e":Lcom/android/ims/ImsException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setComboFeatureValue(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 1737
    .end local v8    # "e":Lcom/android/ims/ImsException;
    :goto_7d
    return-void

    :array_7e
    .array-data 4
        0x0
        0x1
        0x3
        0x2
    .end array-data

    :array_8a
    .array-data 4
        0xd
        0xd
        0x12
        0x12
    .end array-data

    :array_96
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private setWfcModeConfigEx(I)V
    .registers 4
    .param p1, "wfcMode"    # I

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWfcModeConfigEx wfcMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 650
    :try_start_14
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getConfigInterfaceEx()Lcom/mediatek/ims/internal/MtkImsConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/MtkImsConfig;->setWfcMode(I)V
    :try_end_1b
    .catch Lcom/android/ims/ImsException; {:try_start_14 .. :try_end_1b} :catch_1c

    .line 653
    goto :goto_1d

    .line 651
    :catch_1c
    move-exception v0

    .line 654
    :goto_1d
    return-void
.end method

.method private supportMdAutoSetupIms()Z
    .registers 4

    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 659
    const/4 v0, 0x1

    .line 661
    :cond_10
    return v0
.end method


# virtual methods
.method public addImsConnectionStateListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2164
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2165
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsConnectionStateListener added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2166
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2167
    invoke-direct {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->hookProprietaryImsListener()V

    .line 2168
    monitor-exit v0

    .line 2169
    return-void

    .line 2168
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method protected changeMmTelCapabilityInternally(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .registers 5
    .param p1, "r"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 2362
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    if-eqz v0, :cond_29

    .line 2363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] changeMmTelCapabilityInternally "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2364
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->changeEnabledCapabilities(ILandroid/telephony/ims/feature/CapabilityChangeRequest;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 2368
    :cond_29
    goto :goto_3f

    .line 2366
    :catch_2a
    move-exception v0

    .line 2367
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to changeMmTelCapabilityInternally "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 2369
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3f
    return-void
.end method

.method public close()V
    .registers 2

    .line 789
    const-string v0, "close"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 792
    invoke-super {p0}, Lcom/android/ims/ImsManager;->close()V

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkUt:Lcom/mediatek/ims/MtkImsUt;

    .line 794
    return-void
.end method

.method public createCallSession(II)Landroid/telephony/ims/ImsCallSession;
    .registers 9
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2341
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 2342
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCallSession: profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2343
    invoke-super {p0, v0}, Lcom/android/ims/ImsManager;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    .line 2344
    .local v1, "imsCallSession":Landroid/telephony/ims/ImsCallSession;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCallSession: imsCallSession = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCallSession: imsCallSession.getSession() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2346
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    iget v3, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    const/4 v4, 0x0

    .line 2347
    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v5

    .line 2346
    invoke-interface {v2, v3, v0, v4, v5}, Lcom/mediatek/ims/internal/IMtkImsService;->createMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v2

    .line 2349
    .local v2, "mtkImsCallSessionImpl":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    new-instance v3, Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/mediatek/ims/internal/MtkImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5f} :catch_60

    return-object v3

    .line 2351
    .end local v0    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local v1    # "imsCallSession":Landroid/telephony/ims/ImsCallSession;
    .end local v2    # "mtkImsCallSessionImpl":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :catch_60
    move-exception v0

    .line 2352
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateCallSession: Error, remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2354
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2352
    const-string v2, "MtkImsManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "createCallSession()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method protected createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;
    .registers 7
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1476
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCallSession: profile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1477
    invoke-super {p0, p1}, Lcom/android/ims/ImsManager;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    .line 1478
    .local v0, "imsCallSession":Landroid/telephony/ims/ImsCallSession;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCallSession: imsCallSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCallSession: imsCallSession.getSession() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->getSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1480
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    iget v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->getSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsService;->createMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    .line 1482
    .local v1, "mtkImsCallSessionImpl":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    new-instance v2, Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->getSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/mediatek/ims/internal/MtkImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5a} :catch_5b

    return-object v2

    .line 1484
    .end local v0    # "imsCallSession":Landroid/telephony/ims/ImsCallSession;
    .end local v1    # "mtkImsCallSessionImpl":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :catch_5b
    move-exception v0

    .line 1485
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateCallSession: Error, remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1485
    const-string v2, "MtkImsManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "createCallSession()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public factoryReset()V
    .registers 8

    .line 1297
    const-string v0, "enhanced_4g_lte_on_by_default_bool"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    .line 1299
    .local v0, "value":Z
    const-string v1, "persist.vendor.mtk_ct_volte_support"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_50

    .line 1302
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 1303
    .local v1, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v3, 0x0

    .line 1304
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_20

    .line 1305
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 1307
    :cond_20
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    .line 1308
    .local v4, "iccid":Ljava/lang/String;
    :goto_28
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_50

    invoke-direct {p0, v4}, Lcom/mediatek/ims/internal/MtkImsManager;->isOp09SimCard(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1310
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v5, v6}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getCdmaCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v5

    .line 1311
    .local v5, "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    if-eqz v5, :cond_50

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->is4GCard()Z

    move-result v6

    if-nez v6, :cond_50

    sget-object v6, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-eq v5, v6, :cond_50

    .line 1313
    const-string v6, "factoryReset, CT 3G card case"

    invoke-direct {p0, v6}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1314
    const/4 v0, 0x0

    .line 1319
    .end local v1    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "iccid":Ljava/lang/String;
    .end local v5    # "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    :cond_50
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1321
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v3

    .line 1323
    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v4

    .line 1320
    const-string v5, "volte_vt_enabled"

    invoke-interface {v1, v3, v5, v4}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string v1, "persist.vendor.vonr_setting_support"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7c

    .line 1326
    const-string v1, "factoryReset: reset VoNR Setting"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1327
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1329
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v3

    .line 1331
    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v4

    .line 1328
    const-string v5, "vonr_enabled"

    invoke-interface {v1, v3, v5, v4}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1335
    :cond_7c
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1337
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v3

    .line 1339
    const-string v4, "carrier_default_wfc_ims_enabled_bool"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/MtkImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v4

    .line 1336
    const-string v5, "wfc_ims_enabled"

    invoke-interface {v1, v3, v5, v4}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1345
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v3

    .line 1347
    const-string v4, "carrier_default_wfc_ims_mode_int"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/MtkImsManager;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1344
    const-string v5, "wfc_ims_mode"

    invoke-interface {v1, v3, v5, v4}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1351
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1353
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v3

    .line 1355
    const-string v4, "carrier_default_wfc_ims_roaming_enabled_bool"

    invoke-virtual {p0, v4}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/MtkImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v4

    .line 1352
    const-string v5, "wfc_ims_roaming_enabled"

    invoke-interface {v1, v3, v5, v4}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1360
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v3

    .line 1362
    invoke-static {v2}, Lcom/mediatek/ims/internal/MtkImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1360
    const-string v4, "vt_ims_enabled"

    invoke-interface {v1, v3, v4, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1365
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->updateImsServiceConfig()V

    .line 1366
    return-void
.end method

.method public fallBackAospMTFlow()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2277
    const-string v0, "fallBackAospMTFlow"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2280
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 2283
    :try_start_8
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService;->fallBackAospMTFlow(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_11

    .line 2287
    nop

    .line 2288
    return-void

    .line 2284
    :catch_11
    move-exception v0

    .line 2285
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "fallBackAospMTFlow()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getConfigInterfaceEx()Lcom/mediatek/ims/internal/MtkImsConfig;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1372
    const-string v0, "getConfigInterfaceEx()"

    const/4 v1, 0x0

    .line 1375
    .local v1, "config":Lcom/mediatek/ims/internal/MtkImsConfig;
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 1378
    :try_start_6
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    iget v3, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    .line 1379
    invoke-interface {v2, v3}, Lcom/mediatek/ims/internal/IMtkImsService;->getConfigInterfaceEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v2

    .line 1380
    .local v2, "binder":Lcom/mediatek/ims/internal/IMtkImsConfig;
    if-eqz v2, :cond_1a

    .line 1384
    new-instance v3, Lcom/mediatek/ims/internal/MtkImsConfig;

    iget-object v4, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v2, v4}, Lcom/mediatek/ims/internal/MtkImsConfig;-><init>(Lcom/mediatek/ims/internal/IMtkImsConfig;Landroid/content/Context;)V

    move-object v0, v3

    .line 1388
    .end local v1    # "config":Lcom/mediatek/ims/internal/MtkImsConfig;
    .end local v2    # "binder":Lcom/mediatek/ims/internal/IMtkImsConfig;
    .local v0, "config":Lcom/mediatek/ims/internal/MtkImsConfig;
    nop

    .line 1389
    return-object v0

    .line 1381
    .end local v0    # "config":Lcom/mediatek/ims/internal/MtkImsConfig;
    .restart local v1    # "config":Lcom/mediatek/ims/internal/MtkImsConfig;
    .restart local v2    # "binder":Lcom/mediatek/ims/internal/IMtkImsConfig;
    :cond_1a
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v4, 0x83

    invoke-direct {v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "config":Lcom/mediatek/ims/internal/MtkImsConfig;
    .end local p0    # "this":Lcom/mediatek/ims/internal/MtkImsManager;
    throw v3
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_22

    .line 1385
    .end local v2    # "binder":Lcom/mediatek/ims/internal/IMtkImsConfig;
    .restart local v1    # "config":Lcom/mediatek/ims/internal/MtkImsConfig;
    .restart local p0    # "this":Lcom/mediatek/ims/internal/MtkImsManager;
    :catch_22
    move-exception v2

    .line 1386
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v4, 0x6a

    invoke-direct {v3, v0, v2, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3
.end method

.method protected getMainCapabilityPhoneId(Landroid/content/Context;)I
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1519
    invoke-static {p1}, Lcom/mediatek/ims/internal/MtkImsManager;->getMainPhoneIdForSingleIms(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1028
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    .line 1029
    .local v0, "c":Lcom/android/ims/MmTelFeatureConnection;
    const/16 v1, 0x6a

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1034
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    if-nez v2, :cond_2f

    .line 1035
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->createMtkImsService(Z)V

    .line 1037
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    if-eqz v2, :cond_27

    goto :goto_2f

    .line 1038
    :cond_27
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "MtkImsService is unavailable"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1042
    :cond_2f
    :goto_2f
    return-object v0

    .line 1030
    :cond_30
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Service is unavailable"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1025
    .end local v0    # "c":Lcom/android/ims/MmTelFeatureConnection;
    :cond_38
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x96

    const-string v2, "IMS not supported on device."

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public getPendingMtkCallSession(Ljava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPendingMtkCallSession callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2328
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 2331
    :try_start_17
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->getPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20

    return-object v0

    .line 2332
    :catch_20
    move-exception v0

    .line 2333
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "getPendingMtkCallSession()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getSupplementaryServiceConfiguration()Lcom/android/ims/ImsUtInterface;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkUt:Lcom/mediatek/ims/MtkImsUt;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsUt;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 808
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;
    :try_end_d
    .catch Lcom/android/ims/ImsException; {:try_start_a .. :try_end_d} :catch_4d

    .line 812
    nop

    .line 815
    :try_start_e
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService;->getMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v0

    .line 817
    .local v0, "iMtkUt":Lcom/mediatek/ims/internal/IMtkImsUt;
    const/16 v1, 0x321

    if-eqz v0, :cond_3a

    .line 823
    iget v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/mediatek/ims/internal/IMtkImsUt;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 824
    .local v2, "iUt":Lcom/android/ims/internal/IImsUt;
    const-string v3, "iMtkUt.getUtInterface"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 825
    if-eqz v2, :cond_32

    .line 831
    new-instance v1, Lcom/mediatek/ims/MtkImsUt;

    invoke-direct {v1, v2, v0}, Lcom/mediatek/ims/MtkImsUt;-><init>(Lcom/android/ims/internal/IImsUt;Lcom/mediatek/ims/internal/IMtkImsUt;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkUt:Lcom/mediatek/ims/MtkImsUt;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2e} :catch_42

    .line 836
    .end local v0    # "iMtkUt":Lcom/mediatek/ims/internal/IMtkImsUt;
    .end local v2    # "iUt":Lcom/android/ims/internal/IImsUt;
    nop

    .line 839
    :cond_2f
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkUt:Lcom/mediatek/ims/MtkImsUt;

    return-object v0

    .line 826
    .restart local v0    # "iMtkUt":Lcom/mediatek/ims/internal/IMtkImsUt;
    .restart local v2    # "iUt":Lcom/android/ims/internal/IImsUt;
    :cond_32
    :try_start_32
    new-instance v3, Lcom/android/ims/ImsException;

    const-string v4, "getSupplementaryServiceConfiguration() - getUtInterface"

    invoke-direct {v3, v4, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/mediatek/ims/internal/MtkImsManager;
    throw v3

    .line 818
    .end local v2    # "iUt":Lcom/android/ims/internal/IImsUt;
    .restart local p0    # "this":Lcom/mediatek/ims/internal/MtkImsManager;
    :cond_3a
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getSupplementaryServiceConfiguration() - getMtkUtInterface"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/mediatek/ims/internal/MtkImsManager;
    throw v2
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_42} :catch_42

    .line 832
    .end local v0    # "iMtkUt":Lcom/mediatek/ims/internal/IMtkImsUt;
    .restart local p0    # "this":Lcom/mediatek/ims/internal/MtkImsManager;
    :catch_42
    move-exception v0

    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "getSupplementaryServiceConfiguration()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 809
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_4d
    move-exception v0

    .line 810
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "getSupplementaryServiceConfiguration(): "

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 811
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getVonrSetting()Z
    .registers 3

    .line 2576
    const-string v0, "persist.vendor.vonr_setting_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    .line 2577
    const-string v0, "getVonrSetting: VoNR Setting not support"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2578
    const/4 v0, 0x1

    return v0

    .line 2580
    :cond_10
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isVonrEnabledByUser()Z

    move-result v0

    return v0
.end method

.method public getWfcRegErrorCode()I
    .registers 5

    .line 2408
    const/4 v0, 0x0

    .line 2410
    .local v0, "errorCode":I
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    if-eqz v1, :cond_2a

    .line 2411
    iget v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/mediatek/ims/internal/IMtkImsService;->getWfcRegErrorCode(I)I

    move-result v1

    move v0, v1

    .line 2412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] getWfcRegErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2a} :catch_2b

    .line 2416
    :cond_2a
    goto :goto_40

    .line 2414
    :catch_2b
    move-exception v1

    .line 2415
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to getWfcRegErrorCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 2417
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_40
    return v0
.end method

.method public hangupAllCall(I)V
    .registers 6
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1237
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 1240
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->hangupAllCall(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 1244
    nop

    .line 1245
    return-void

    .line 1241
    :catch_a
    move-exception v0

    .line 1242
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "hangupAll()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method protected isDataRoaming()Z
    .registers 5

    .line 482
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    .line 483
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 485
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 486
    const-string v2, "isDataRoaming(): TelephonyManager null"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 487
    return v1

    .line 490
    :cond_13
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 491
    .local v2, "ss":Landroid/telephony/ServiceState;
    if-nez v2, :cond_23

    .line 492
    const-string v3, "isDataRoaming(): ServiceState null"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 493
    return v1

    .line 496
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SubId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] isDataRoaming(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    return v1
.end method

.method protected isDataRoamingSettingsEnabled()Z
    .registers 4

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "net.lte.data.roaming.setting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 507
    .local v0, "isDataRoamingSettingsEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] isDataRoamingSettingsEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 508
    return v0
.end method

.method public isEnhanced4gLteModeSettingEnabledByUser()Z
    .registers 10

    .line 315
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v0

    .line 316
    .local v0, "sub":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    const-string v2, "volte_vt_enabled"

    const/4 v3, -0x1

    invoke-interface {v1, v0, v2, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v1

    .line 319
    .local v1, "setting":I
    const-string v2, "enhanced_4g_lte_on_by_default_bool"

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v2

    .line 321
    .local v2, "onByDefault":Z
    iget v4, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-direct {p0, v4}, Lcom/mediatek/ims/internal/MtkImsManager;->isPhoneIdSupportIms(I)Z

    move-result v4

    .line 324
    .local v4, "isPSsupport":Z
    const/4 v5, 0x1

    if-ne v0, v3, :cond_35

    .line 325
    iget-object v6, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 327
    .local v6, "manager":Landroid/telephony/TelephonyManager;
    iget v7, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    .line 328
    .local v7, "cardState":I
    if-eq v7, v5, :cond_30

    .line 329
    const/4 v2, 0x0

    goto :goto_35

    .line 331
    :cond_30
    const-string v8, "isEnhanced4gLteModeSettingEnabledByUser, sim absent"

    invoke-direct {p0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 335
    .end local v6    # "manager":Landroid/telephony/TelephonyManager;
    .end local v7    # "cardState":I
    :cond_35
    :goto_35
    const-string v6, "editable_enhanced_4g_lte_bool"

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_50

    .line 336
    const-string v6, "hide_enhanced_4g_lte_bool"

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_50

    if-ne v1, v3, :cond_49

    goto :goto_50

    .line 358
    :cond_49
    if-ne v1, v5, :cond_4e

    if-eqz v4, :cond_4e

    goto :goto_4f

    :cond_4e
    move v5, v7

    :goto_4f
    return v5

    .line 338
    :cond_50
    :goto_50
    if-eqz v2, :cond_93

    const-string v3, "ro.vendor.mtk_c2k_lte_mode"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_93

    .line 341
    iget-object v3, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 342
    .local v3, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v5, 0x0

    .line 343
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_67

    .line 344
    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 346
    :cond_67
    if-eqz v5, :cond_6e

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    goto :goto_6f

    :cond_6e
    const/4 v6, 0x0

    .line 347
    .local v6, "iccid":Ljava/lang/String;
    :goto_6f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_93

    invoke-direct {p0, v6}, Lcom/mediatek/ims/internal/MtkImsManager;->isOp09SimCard(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 349
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v7, v8}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getCdmaCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v7

    .line 350
    .local v7, "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    if-eqz v7, :cond_93

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->is4GCard()Z

    move-result v8

    if-nez v8, :cond_93

    .line 351
    const-string v8, "isEnhanced4gLteModeSettingEnabledByUser, CT 3G card case"

    invoke-direct {p0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 352
    const/4 v2, 0x0

    .line 356
    .end local v3    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "iccid":Ljava/lang/String;
    .end local v7    # "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    :cond_93
    return v2
.end method

.method public isImsOverNrEnabledByPlatform()Z
    .registers 5

    .line 2452
    const-string v0, "carrier_nr_availabilities_int_array"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->getIntArrayCarrierConfig(Ljava/lang/String;)[I

    move-result-object v0

    .line 2454
    .local v0, "nrCarrierCaps":[I
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2455
    :cond_a
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    sget-object v3, Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda1;->INSTANCE:Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda1;

    .line 2456
    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v2

    .line 2457
    .local v2, "voNrCarrierSupported":Z
    if-nez v2, :cond_17

    return v1

    .line 2461
    :cond_17
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isVonrEnabledByPlatform()Z

    move-result v1

    return v1
.end method

.method protected isImsResourceSupport(I)Z
    .registers 6
    .param p1, "feature"    # I

    .line 1268
    const/4 v0, 0x1

    .line 1269
    .local v0, "support":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImsResourceSupport, feature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1270
    const-string v1, "persist.vendor.mtk_dynamic_ims_switch"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1272
    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_47

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid main phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", return true as don\'t care"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 1275
    return v0

    .line 1278
    :cond_47
    :try_start_47
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getConfigInterfaceEx()Lcom/mediatek/ims/internal/MtkImsConfig;

    move-result-object v1

    .line 1279
    .local v1, "config":Lcom/mediatek/ims/internal/MtkImsConfig;
    if-eqz v1, :cond_58

    .line 1280
    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/MtkImsConfig;->getImsResCapability(I)I

    move-result v2
    :try_end_51
    .catch Lcom/android/ims/ImsException; {:try_start_47 .. :try_end_51} :catch_59

    const/4 v3, 0x1

    if-eq v2, v3, :cond_56

    .line 1281
    const/4 v3, 0x0

    goto :goto_57

    :cond_56
    nop

    :goto_57
    move v0, v3

    .line 1285
    .end local v1    # "config":Lcom/mediatek/ims/internal/MtkImsConfig;
    :cond_58
    goto :goto_6e

    .line 1283
    :catch_59
    move-exception v1

    .line 1284
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isImsResourceSupport() failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 1287
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImsResourceSupport("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1291
    :cond_8a
    return v0
.end method

.method public isServiceAvailable()Z
    .registers 4

    .line 771
    const/4 v0, 0x1

    .line 772
    .local v0, "available":Z
    invoke-super {p0}, Lcom/android/ims/ImsManager;->isServiceAvailable()Z

    move-result v1

    if-nez v1, :cond_c

    .line 773
    const-string v1, "ImsService binder is not available and rebind again"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->logw(Ljava/lang/String;)V

    .line 776
    :cond_c
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    const/4 v2, 0x1

    if-nez v1, :cond_14

    .line 777
    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->createMtkImsService(Z)V

    .line 780
    :cond_14
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    if-eqz v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    move v0, v2

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 782
    return v0
.end method

.method public isShowVonrSettingUI()Z
    .registers 10

    .line 2609
    const-string v0, "persist.vendor.vonr_setting_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    .line 2610
    const-string v0, "isShowVonrSettingUI: error, VoNR Setting not support"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 2611
    return v1

    .line 2613
    :cond_f
    const-string v0, "persist.vendor.dbg.vonr_ui_ovr"

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2614
    .local v0, "dbg":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1f

    .line 2615
    const-string v1, "isShowVonrSettingUI: force show VoNR Setting UI"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->logi(Ljava/lang/String;)V

    .line 2616
    return v3

    .line 2617
    :cond_1f
    if-nez v0, :cond_27

    .line 2618
    const-string v2, "isShowVonrSettingUI: force hide VoNR Setting UI"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->logi(Ljava/lang/String;)V

    .line 2619
    return v1

    .line 2621
    :cond_27
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v4

    .line 2622
    .local v4, "sub":I
    iget-object v5, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    const-string v6, "vonr_ui_enabled"

    invoke-interface {v5, v4, v6, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v5

    .line 2625
    .local v5, "setting":I
    const-string v6, "mtk_vonr_show_setting_ui_bool"

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v6

    .line 2627
    .local v6, "onByDefault":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isShowVonrSettingUI: subId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", set:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", default:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2628
    if-ne v5, v2, :cond_60

    .line 2629
    return v6

    .line 2631
    :cond_60
    if-ne v5, v3, :cond_63

    move v1, v3

    :cond_63
    return v1
.end method

.method protected isTestSim()Z
    .registers 7

    .line 1548
    iget v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    .line 1549
    .local v0, "phoneId":I
    const-string v1, "persist.vendor.mims_support"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_11

    .line 1550
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->getMainCapabilityPhoneId(Landroid/content/Context;)I

    move-result v0

    .line 1552
    :cond_11
    const/4 v1, 0x0

    .line 1553
    .local v1, "isTestSim":Z
    const-string v2, "0"

    const-string v3, "1"

    packed-switch v0, :pswitch_data_8e

    goto :goto_46

    .line 1567
    :pswitch_1a
    const-string v4, "vendor.gsm.sim.ril.testsim.4"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_46

    .line 1563
    :pswitch_25
    const-string v4, "vendor.gsm.sim.ril.testsim.3"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1565
    goto :goto_46

    .line 1559
    :pswitch_30
    const-string v4, "vendor.gsm.sim.ril.testsim.2"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1561
    goto :goto_46

    .line 1555
    :pswitch_3b
    const-string v4, "vendor.gsm.sim.ril.testsim"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1557
    nop

    .line 1572
    :goto_46
    if-eqz v1, :cond_8d

    .line 1573
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    .line 1574
    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1575
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 1576
    .local v3, "currentMccMnc":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTestSim, currentMccMnc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1577
    if-eqz v3, :cond_8d

    .line 1578
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 1579
    const-string v4, "00101"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 1580
    const-string v4, "11111"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 1581
    const-string v4, "46011"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 1582
    const/4 v1, 0x0

    .line 1585
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    .end local v3    # "currentMccMnc":Ljava/lang/String;
    :cond_8d
    return v1

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_30
        :pswitch_25
        :pswitch_1a
    .end packed-switch
.end method

.method protected isVTIgnoreDataChangedByOpid(Ljava/lang/String;)Z
    .registers 4
    .param p1, "optr"    # Ljava/lang/String;

    .line 1536
    const-string v0, "OP01"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "OP02"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "OP09"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1537
    const-string v0, "OP17"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "OP50"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "OP149"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1538
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_39

    .line 1542
    :cond_37
    const/4 v0, 0x0

    return v0

    .line 1539
    :cond_39
    :goto_39
    const/4 v0, 0x1

    return v0
.end method

.method public isVolteEnabledByPlatform()Z
    .registers 11

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.volte_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    .line 391
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_a4

    .line 393
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_27

    goto/16 :goto_a4

    .line 399
    :cond_27
    const/4 v0, 0x1

    .line 400
    .local v0, "isVolteResourceSupport":Z
    const/4 v1, 0x1

    .line 401
    .local v1, "isVonrResourceSupport":Z
    const/4 v2, 0x1

    .line 402
    .local v2, "isCarrierConfigSupport":Z
    const/4 v4, 0x1

    .line 403
    .local v4, "isGbaValidSupport":Z
    const/4 v5, 0x1

    .line 404
    .local v5, "isFeatureEnableByPlatformExt":Z
    const/4 v6, 0x1

    .line 406
    .local v6, "isPSsupport":Z
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/MtkImsManager;->isImsResourceSupport(I)Z

    move-result v0

    .line 411
    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->isImsResourceSupport(I)Z

    move-result v1

    .line 413
    const-string v8, "carrier_volte_available_bool"

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v2

    .line 415
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isGbaValid()Z

    move-result v4

    .line 416
    invoke-direct {p0, v7}, Lcom/mediatek/ims/internal/MtkImsManager;->isFeatureEnabledByPlatformExt(I)Z

    move-result v5

    .line 418
    iget v8, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-direct {p0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->isPhoneIdSupportIms(I)Z

    move-result v6

    .line 420
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Volte, isVolteResourceSupport:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isVonrResourceSupport:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isCarrierConfigSupport:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isGbaValidSupport:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isFeatureEnableByPlatformExt:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isPSsupport:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 427
    const-string v8, "persist.vendor.volte_support"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v3, :cond_a2

    .line 428
    invoke-direct {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isLteSupported()Z

    move-result v8

    if-eqz v8, :cond_a2

    if-nez v0, :cond_99

    if-eqz v1, :cond_a2

    :cond_99
    if-eqz v2, :cond_a2

    if-eqz v4, :cond_a2

    if-eqz v5, :cond_a2

    if-eqz v6, :cond_a2

    goto :goto_a3

    :cond_a2
    move v3, v7

    .line 427
    :goto_a3
    return v3

    .line 395
    .end local v0    # "isVolteResourceSupport":Z
    .end local v1    # "isVonrResourceSupport":Z
    .end local v2    # "isCarrierConfigSupport":Z
    .end local v4    # "isGbaValidSupport":Z
    .end local v5    # "isFeatureEnableByPlatformExt":Z
    .end local v6    # "isPSsupport":Z
    :cond_a4
    :goto_a4
    return v3
.end method

.method public isVonrEnabledByPlatform()Z
    .registers 8

    .line 2471
    invoke-direct {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->is5gSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2472
    return v1

    .line 2474
    :cond_8
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->isImsResourceSupport(I)Z

    move-result v0

    .line 2476
    .local v0, "isVonrResourceSupport":Z
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isGbaValid()Z

    move-result v2

    .line 2477
    .local v2, "isGbaValidSupport":Z
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->isFeatureEnabledByPlatformExt(I)Z

    move-result v3

    .line 2479
    .local v3, "isFeatureEnableByPlatformExt":Z
    iget v4, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-direct {p0, v4}, Lcom/mediatek/ims/internal/MtkImsManager;->isPhoneIdSupportIms(I)Z

    move-result v4

    .line 2481
    .local v4, "isPSsupport":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VoNR,  isVonrEnabledByPlatform:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isGbaValidSupport:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isFeatureEnableByPlatformExt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isPSsupport:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2486
    const-string v5, "persist.vendor.volte_support"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_59

    if-eqz v0, :cond_59

    if-eqz v2, :cond_59

    if-eqz v3, :cond_59

    if-eqz v4, :cond_59

    move v1, v6

    :cond_59
    return v1
.end method

.method public isVonrEnabledByUser()Z
    .registers 8

    .line 2585
    const-string v0, "persist.vendor.vonr_setting_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_13

    .line 2586
    const-string v0, "isVonrEnabledByUser: VoNR Setting not support, return volte value"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v0

    return v0

    .line 2589
    :cond_13
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v0

    .line 2590
    .local v0, "sub":I
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    const-string v3, "vonr_enabled"

    const/4 v4, -0x1

    invoke-interface {v2, v0, v3, v4}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v2

    .line 2593
    .local v2, "setting":I
    const-string v3, "enhanced_4g_lte_on_by_default_bool"

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v3

    .line 2595
    .local v3, "onByDefault":Z
    iget v5, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-direct {p0, v5}, Lcom/mediatek/ims/internal/MtkImsManager;->isPhoneIdSupportIms(I)Z

    move-result v5

    .line 2596
    .local v5, "isPSsupport":Z
    const/4 v6, 0x1

    if-ne v2, v4, :cond_35

    .line 2597
    if-eqz v3, :cond_34

    if-eqz v5, :cond_34

    move v1, v6

    :cond_34
    return v1

    .line 2599
    :cond_35
    if-ne v2, v6, :cond_3a

    if-eqz v5, :cond_3a

    move v1, v6

    :cond_3a
    return v1
.end method

.method public isVtEnabledByPlatform()Z
    .registers 9

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.vt_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    .line 533
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_99

    .line 535
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_27

    goto/16 :goto_99

    .line 541
    :cond_27
    const/4 v0, 0x1

    .line 542
    .local v0, "isVilteResourceSupport":Z
    const/4 v1, 0x1

    .line 543
    .local v1, "isVinrResourceSupport":Z
    const/4 v2, 0x1

    .line 544
    .local v2, "isCarrierConfigSupport":Z
    const/4 v4, 0x1

    .line 545
    .local v4, "isGbaValidSupport":Z
    const/4 v5, 0x1

    .line 552
    .local v5, "isFeatureEnableByPlatformExt":Z
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isTestSim()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 553
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->isImsResourceSupport(I)Z

    move-result v0

    .line 558
    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/MtkImsManager;->isImsResourceSupport(I)Z

    move-result v1

    .line 561
    :cond_3b
    const-string v6, "carrier_vt_available_bool"

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v2

    .line 563
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isGbaValid()Z

    move-result v4

    .line 564
    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->isFeatureEnabledByPlatformExt(I)Z

    move-result v5

    .line 567
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vt, isVilteResourceSupport:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isVinrResourceSupport:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isCarrierConfigSupport:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isGbaValidSupport:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isFeatureEnableByPlatformExt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 574
    const-string v6, "persist.vendor.vilte_support"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_97

    .line 575
    invoke-direct {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isLteSupported()Z

    move-result v6

    if-eqz v6, :cond_97

    if-nez v0, :cond_90

    if-eqz v1, :cond_97

    :cond_90
    if-eqz v2, :cond_97

    if-eqz v4, :cond_97

    if-eqz v5, :cond_97

    goto :goto_98

    :cond_97
    move v3, v7

    .line 574
    :goto_98
    return v3

    .line 537
    .end local v0    # "isVilteResourceSupport":Z
    .end local v1    # "isVinrResourceSupport":Z
    .end local v2    # "isCarrierConfigSupport":Z
    .end local v4    # "isGbaValidSupport":Z
    .end local v5    # "isFeatureEnableByPlatformExt":Z
    :cond_99
    :goto_99
    return v3
.end method

.method public isWfcEnabledByPlatform()Z
    .registers 10

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.wfc_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    .line 705
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_a4

    .line 707
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_27

    goto/16 :goto_a4

    .line 713
    :cond_27
    const/4 v0, 0x1

    .line 714
    .local v0, "isResourceSupport":Z
    const/4 v1, 0x1

    .line 715
    .local v1, "isCarrierConfigSupport":Z
    const/4 v2, 0x1

    .line 716
    .local v2, "isGbaValidSupport":Z
    const/4 v4, 0x1

    .line 717
    .local v4, "isFeatureEnableByPlatformExt":Z
    const/4 v5, 0x1

    .line 718
    .local v5, "wfcSupportAirplaneMode":Z
    const/4 v6, 0x0

    .line 720
    .local v6, "isAirplaneModeON":Z
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/MtkImsManager;->isImsResourceSupport(I)Z

    move-result v0

    .line 722
    const-string v8, "carrier_wfc_ims_available_bool"

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    .line 724
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isGbaValid()Z

    move-result v2

    .line 725
    invoke-direct {p0, v7}, Lcom/mediatek/ims/internal/MtkImsManager;->isFeatureEnabledByPlatformExt(I)Z

    move-result v4

    .line 727
    const-string v7, "wos_flight_mode_support_bool"

    invoke-virtual {p0, v7}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v5

    .line 729
    invoke-direct {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getAirplaneModeFromSettings()Z

    move-result v6

    .line 731
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wfc, isResourceSupport:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isCarrierConfigSupport:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isGbaValidSupport:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isFeatureEnableByPlatformExt:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", wfcSupportAirplaneMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isAirplaneModeON:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 739
    const-string v7, "persist.vendor.mtk_wfc_support"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v3, :cond_a2

    .line 740
    invoke-direct {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isLteSupported()Z

    move-result v7

    if-eqz v7, :cond_a2

    if-eqz v0, :cond_a2

    if-eqz v1, :cond_a2

    if-eqz v2, :cond_a2

    if-eqz v4, :cond_a2

    if-nez v5, :cond_a1

    if-nez v6, :cond_a2

    :cond_a1
    goto :goto_a3

    :cond_a2
    move v3, v8

    .line 739
    :goto_a3
    return v3

    .line 709
    .end local v0    # "isResourceSupport":Z
    .end local v1    # "isCarrierConfigSupport":Z
    .end local v2    # "isGbaValidSupport":Z
    .end local v4    # "isFeatureEnableByPlatformExt":Z
    .end local v5    # "wfcSupportAirplaneMode":Z
    .end local v6    # "isAirplaneModeON":Z
    :cond_a4
    :goto_a4
    return v3
.end method

.method public synthetic lambda$setWfcModeInternal$0$MtkImsManager(I)V
    .registers 4
    .param p1, "value"    # I

    .line 637
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConfig;->setConfig(II)I
    :try_end_9
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 641
    goto :goto_b

    .line 639
    :catch_a
    move-exception v0

    .line 642
    :goto_b
    return-void
.end method

.method public makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .registers 8
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callees"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeCall :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManager;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 855
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 862
    new-instance v0, Lcom/mediatek/ims/MtkImsCall;

    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/mediatek/ims/MtkImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 864
    .local v0, "call":Lcom/android/ims/ImsCall;
    invoke-virtual {v0, p3}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    .line 865
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/MtkImsManager;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    .line 867
    .local v1, "session":Landroid/telephony/ims/ImsCallSession;
    if-eqz p2, :cond_4a

    array-length v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4a

    .line 869
    const-string v2, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {p1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 871
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCall;->start(Landroid/telephony/ims/ImsCallSession;Ljava/lang/String;)V

    goto :goto_4d

    .line 873
    :cond_4a
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsCall;->start(Landroid/telephony/ims/ImsCallSession;[Ljava/lang/String;)V

    .line 876
    :goto_4d
    return-object v0
.end method

.method public notifyRegServiceCapabilityChangedEvent(I)V
    .registers 7
    .param p1, "event"    # I

    .line 1632
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_c4

    :pswitch_5
    goto/16 :goto_c3

    .line 1674
    :pswitch_7
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1675
    :try_start_a
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 1676
    .local v2, "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    instance-of v3, v2, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    if-eqz v3, :cond_27

    .line 1677
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    const/4 v4, 0x2

    .line 1678
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/MtkImsConnectionStateListener;->onWifiPdnOOSStateChanged(I)V

    .line 1680
    .end local v2    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    :cond_27
    goto :goto_10

    .line 1681
    :cond_28
    monitor-exit v1

    .line 1682
    goto/16 :goto_c3

    .line 1681
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2b

    throw v0

    .line 1664
    :pswitch_2e
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1665
    :try_start_31
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 1666
    .local v3, "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    instance-of v4, v3, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    if-eqz v4, :cond_4d

    .line 1667
    move-object v4, v3

    check-cast v4, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    .line 1668
    invoke-virtual {v4, v0}, Lcom/mediatek/ims/MtkImsConnectionStateListener;->onWifiPdnOOSStateChanged(I)V

    .line 1670
    .end local v3    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    :cond_4d
    goto :goto_37

    .line 1671
    :cond_4e
    monitor-exit v2

    .line 1672
    goto/16 :goto_c3

    .line 1671
    :catchall_51
    move-exception v0

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_51

    throw v0

    .line 1654
    :pswitch_54
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1655
    :try_start_57
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 1656
    .restart local v3    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    instance-of v4, v3, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    if-eqz v4, :cond_73

    .line 1657
    move-object v4, v3

    check-cast v4, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    .line 1658
    invoke-virtual {v4, v1}, Lcom/mediatek/ims/MtkImsConnectionStateListener;->onWifiPdnOOSStateChanged(I)V

    .line 1660
    .end local v3    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    :cond_73
    goto :goto_5d

    .line 1661
    :cond_74
    monitor-exit v2

    .line 1662
    goto :goto_c3

    .line 1661
    :catchall_76
    move-exception v0

    monitor-exit v2
    :try_end_78
    .catchall {:try_start_57 .. :try_end_78} :catchall_76

    throw v0

    .line 1644
    :pswitch_79
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1645
    :try_start_7c
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 1646
    .restart local v3    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    instance-of v4, v3, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    if-eqz v4, :cond_98

    .line 1647
    move-object v4, v3

    check-cast v4, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    .line 1648
    invoke-virtual {v4, v0}, Lcom/mediatek/ims/MtkImsConnectionStateListener;->onImsEmergencyCapabilityChanged(Z)V

    .line 1650
    .end local v3    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    :cond_98
    goto :goto_82

    .line 1651
    :cond_99
    monitor-exit v2

    .line 1652
    goto :goto_c3

    .line 1651
    :catchall_9b
    move-exception v0

    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_7c .. :try_end_9d} :catchall_9b

    throw v0

    .line 1634
    :pswitch_9e
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1635
    :try_start_a1
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 1636
    .restart local v3    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    instance-of v4, v3, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    if-eqz v4, :cond_bd

    .line 1637
    move-object v4, v3

    check-cast v4, Lcom/mediatek/ims/MtkImsConnectionStateListener;

    .line 1638
    invoke-virtual {v4, v1}, Lcom/mediatek/ims/MtkImsConnectionStateListener;->onImsEmergencyCapabilityChanged(Z)V

    .line 1640
    .end local v3    # "callback":Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    :cond_bd
    goto :goto_a7

    .line 1641
    :cond_be
    monitor-exit v0

    .line 1642
    goto :goto_c3

    .line 1641
    :catchall_c0
    move-exception v1

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_a1 .. :try_end_c2} :catchall_c0

    throw v1

    .line 1686
    :goto_c3
    return-void

    :pswitch_data_c4
    .packed-switch 0x2
        :pswitch_9e
        :pswitch_5
        :pswitch_79
        :pswitch_54
        :pswitch_2e
        :pswitch_7
    .end packed-switch
.end method

.method public queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 6

    .line 1819
    const-string v0, "queryCapabilityStatus = "

    const/4 v1, 0x0

    .line 1821
    .local v1, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection;->queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_25
    .catchall {:try_start_3 .. :try_end_f} :catchall_23

    move-object v1, v2

    .line 1827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1829
    return-object v1

    .line 1826
    :catchall_23
    move-exception v2

    goto :goto_4a

    .line 1822
    :catch_25
    move-exception v2

    .line 1823
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to queryCapabilityStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 1824
    new-instance v3, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_23

    move-object v1, v3

    .line 1827
    .end local v2    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_15

    :goto_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_15
.end method

.method public removeImsConnectionStateListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2175
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2176
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsConnectionStateListener removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mCallbacks:Ljava/util/ArrayList;

    .line 2178
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2177
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2179
    monitor-exit v0

    .line 2180
    return-void

    .line 2179
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public setCallIndication(ILandroid/content/Intent;ZI)V
    .registers 24
    .param p1, "phoneId"    # I
    .param p2, "incomingCallIndication"    # Landroid/content/Intent;
    .param p3, "isAllow"    # Z
    .param p4, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1172
    move-object/from16 v1, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallIndication :: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", incomingCallIndication="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isAllow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cause="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p4

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 1181
    const/16 v0, 0x65

    if-eqz v11, :cond_a2

    .line 1186
    invoke-static/range {p2 .. p2}, Lcom/mediatek/ims/internal/MtkImsManager;->getPhoneId(Landroid/content/Intent;)I

    move-result v14

    .line 1188
    .local v14, "incomingPhoneId":I
    if-ne v10, v14, :cond_9a

    .line 1194
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/MtkImsManager;->getCallId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v15

    .line 1196
    .local v15, "callId":Ljava/lang/String;
    if-eqz v15, :cond_92

    .line 1202
    invoke-direct {v1, v11}, Lcom/mediatek/ims/internal/MtkImsManager;->getCallNum(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v16

    .line 1204
    .local v16, "callNum":Ljava/lang/String;
    if-eqz v16, :cond_8a

    .line 1210
    invoke-direct {v1, v11}, Lcom/mediatek/ims/internal/MtkImsManager;->getSeqNum(Landroid/content/Intent;)I

    move-result v9

    .line 1212
    .local v9, "seqNum":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_82

    .line 1218
    invoke-direct {v1, v11}, Lcom/mediatek/ims/internal/MtkImsManager;->getMtToNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v17

    .line 1221
    .local v17, "toNumber":Ljava/lang/String;
    :try_start_5e
    iget-object v2, v1, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_60} :catch_75

    move/from16 v3, p1

    move-object v4, v15

    move-object/from16 v5, v16

    move v6, v9

    move-object/from16 v7, v17

    move/from16 v8, p3

    move/from16 v18, v9

    .end local v9    # "seqNum":I
    .local v18, "seqNum":I
    move/from16 v9, p4

    :try_start_6e
    invoke-interface/range {v2 .. v9}, Lcom/mediatek/ims/internal/IMtkImsService;->setCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_71} :catch_73

    .line 1226
    nop

    .line 1227
    return-void

    .line 1223
    :catch_73
    move-exception v0

    goto :goto_78

    .end local v18    # "seqNum":I
    .restart local v9    # "seqNum":I
    :catch_75
    move-exception v0

    move/from16 v18, v9

    .line 1224
    .end local v9    # "seqNum":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "seqNum":I
    :goto_78
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    const-string v4, "setCallIndication()"

    invoke-direct {v2, v4, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 1213
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v17    # "toNumber":Ljava/lang/String;
    .end local v18    # "seqNum":I
    .restart local v9    # "seqNum":I
    :cond_82
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "seqNum missing in the incoming call intent"

    invoke-direct {v2, v3, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1205
    .end local v9    # "seqNum":I
    :cond_8a
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Call Num missing in the incoming call intent"

    invoke-direct {v2, v3, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1197
    .end local v16    # "callNum":Ljava/lang/String;
    :cond_92
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Call ID missing in the incoming call intent"

    invoke-direct {v2, v3, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1189
    .end local v15    # "callId":Ljava/lang/String;
    :cond_9a
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Service id is mismatched in the incoming call intent"

    invoke-direct {v2, v3, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1182
    .end local v14    # "incomingPhoneId":I
    :cond_a2
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Can\'t retrieve session with null intent"

    invoke-direct {v2, v3, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public setCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 16
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callNum"    # Ljava/lang/String;
    .param p4, "seqNum"    # I
    .param p5, "toNumber"    # Ljava/lang/String;
    .param p6, "isAllow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallIndication phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",callNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2308
    invoke-static {p3}, Lcom/mediatek/ims/internal/MtkImsManager;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",seqNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",toNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2309
    invoke-static {p5}, Lcom/mediatek/ims/internal/MtkImsManager;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isAllow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2307
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2312
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 2315
    :try_start_47
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    const/4 v8, -0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v8}, Lcom/mediatek/ims/internal/IMtkImsService;->setCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_53} :catch_55

    .line 2320
    nop

    .line 2321
    return-void

    .line 2317
    :catch_55
    move-exception v0

    .line 2318
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "setCallIndication()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setDataRoamingSettingsEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] setDataRoamingSettingsEnabled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "net.lte.data.roaming.setting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3e

    const-string v1, "true"

    goto :goto_40

    :cond_3e
    const-string v1, "false"

    :goto_40
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public setEnhanced4gLteModeVtSetting(Landroid/content/Context;ZZ)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "e4genabled"    # Z
    .param p3, "vtenabled"    # Z

    .line 1742
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 1743
    .local v3, "volte_value":I
    move/from16 v4, p3

    .line 1745
    .local v4, "vt_value":I
    const/4 v5, 0x0

    .line 1748
    .local v5, "enableViLte":Z
    iget v0, v1, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-static {v2, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v6

    .line 1749
    .local v6, "imsManager":Lcom/android/ims/ImsManager;
    const-string v7, "setEnhanced4gLteModeVtSetting error"

    if-eqz v6, :cond_10d

    .line 1751
    :try_start_13
    invoke-virtual {v6}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    .line 1752
    .local v0, "config":Lcom/android/ims/ImsConfig;
    invoke-static {}, Lcom/mediatek/ims/internal/MtkImsManager;->isSupportMims()Z

    move-result v8
    :try_end_1b
    .catch Lcom/android/ims/ImsException; {:try_start_13 .. :try_end_1b} :catch_108

    const/4 v9, -0x1

    const-string v10, "volte_vt_enabled"

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v8, :cond_41

    .line 1753
    :try_start_22
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v8

    if-eqz v8, :cond_2a

    move v8, v12

    goto :goto_2b

    :cond_2a
    move v8, v11

    .line 1754
    .local v8, "prevSetting":I
    :goto_2b
    iget-object v13, v1, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v14

    .line 1756
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 1754
    invoke-interface {v13, v14, v10, v15}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1757
    if-ne v4, v12, :cond_3c

    move v10, v12

    goto :goto_3d

    :cond_3c
    move v10, v11

    :goto_3d
    invoke-virtual {v1, v10}, Lcom/mediatek/ims/internal/MtkImsManager;->setVtSettingOnly(Z)V

    goto :goto_85

    .line 1759
    .end local v8    # "prevSetting":I
    :cond_41
    const-string v8, "editable_enhanced_4g_lte_bool"

    invoke-virtual {v1, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 1760
    move v8, v3

    goto :goto_4c

    :cond_4b
    move v8, v12

    .line 1761
    .local v8, "value":I
    :goto_4c
    iget-object v13, v1, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 1762
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v14

    .line 1761
    invoke-interface {v13, v14, v10, v9}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->getIntegerSubscriptionProperty(ILjava/lang/String;I)I

    move-result v13

    .line 1765
    .local v13, "prevSetting":I
    if-ne v13, v8, :cond_62

    const-string v14, "vendor.ril.imsconfig.force.notify"

    .line 1766
    invoke-static {v14, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_62

    .line 1767
    move v3, v13

    goto :goto_6f

    .line 1770
    :cond_62
    iget-object v14, v1, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v15

    .line 1772
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 1770
    invoke-interface {v14, v15, v10, v11}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1774
    :goto_6f
    iget-object v11, v1, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v14

    .line 1776
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 1774
    invoke-interface {v11, v14, v10, v15}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1778
    if-ne v4, v12, :cond_80

    move v10, v12

    goto :goto_81

    :cond_80
    const/4 v10, 0x0

    :goto_81
    invoke-virtual {v1, v10}, Lcom/mediatek/ims/internal/MtkImsManager;->setVtSettingOnly(Z)V

    move v8, v13

    .line 1781
    .end local v13    # "prevSetting":I
    .local v8, "prevSetting":I
    :goto_85
    iget v10, v1, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-static {v2, v10}, Lcom/mediatek/ims/internal/MtkImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_c8

    .line 1782
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isVolteEnabledByPlatform()Z

    move-result v10

    if-eqz v10, :cond_c9

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isVtEnabledByPlatform()Z

    move-result v10

    if-eqz v10, :cond_c9

    .line 1783
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isTestSim()Z

    move-result v10

    if-eqz v10, :cond_ac

    .line 1784
    const-string v10, "persist.vendor.operator.optr"

    const-string v11, "OM"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mediatek/ims/internal/MtkImsManager;->isVTIgnoreDataChangedByOpid(Ljava/lang/String;)Z

    move-result v10

    goto :goto_b2

    .line 1785
    :cond_ac
    const-string v10, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {v1, v10}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v10

    :goto_b2
    nop

    .line 1787
    .local v10, "ignoreDataEnabledChanged":Z
    if-eqz p2, :cond_c5

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isVtEnabledByUser()Z

    move-result v11

    if-eqz v11, :cond_c5

    if-nez v10, :cond_c3

    .line 1788
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isDataEnabled()Z

    move-result v11

    if-eqz v11, :cond_c5

    :cond_c3
    move v11, v12

    goto :goto_c6

    :cond_c5
    const/4 v11, 0x0

    :goto_c6
    move v5, v11

    goto :goto_c9

    .line 1793
    .end local v10    # "ignoreDataEnabledChanged":Z
    :cond_c8
    move v3, v8

    .line 1796
    :cond_c9
    :goto_c9
    if-eqz p3, :cond_cf

    if-eqz v5, :cond_cf

    move v11, v12

    goto :goto_d0

    :cond_cf
    const/4 v11, 0x0

    :goto_d0
    invoke-direct {v1, v3, v11, v9}, Lcom/mediatek/ims/internal/MtkImsManager;->setComboFeatureValue(III)V

    .line 1798
    if-nez p2, :cond_ff

    if-eqz p3, :cond_d8

    goto :goto_ff

    .line 1801
    :cond_d8
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isTurnOffImsAllowedByPlatform()Z

    move-result v9

    if-eqz v9, :cond_107

    .line 1802
    invoke-virtual {v6}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v9

    if-eqz v9, :cond_ea

    .line 1803
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v9

    if-nez v9, :cond_107

    .line 1804
    :cond_ea
    invoke-virtual {v6}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v9

    if-eqz v9, :cond_f6

    .line 1805
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isWfcEnabledByUser()Z

    move-result v9

    if-nez v9, :cond_107

    .line 1806
    :cond_f6
    const-string v9, "setEnhanced4gLteModeVtSetting() : imsServiceAllowTurnOff -> turnOffIms"

    invoke-direct {v1, v9}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1807
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->turnOffIms()V

    goto :goto_107

    .line 1799
    :cond_ff
    :goto_ff
    const-string v9, "setEnhanced4gLteModeVtSetting() : turnOnIms"

    invoke-direct {v1, v9}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1800
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->turnOnIms()V
    :try_end_107
    .catch Lcom/android/ims/ImsException; {:try_start_22 .. :try_end_107} :catch_108

    .line 1811
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_107
    :goto_107
    goto :goto_126

    .line 1809
    .end local v8    # "prevSetting":I
    :catch_108
    move-exception v0

    .line 1810
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-direct {v1, v7}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 1811
    .end local v0    # "e":Lcom/android/ims/ImsException;
    goto :goto_126

    .line 1813
    :cond_10d
    invoke-direct {v1, v7}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInstance null for phoneId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 1816
    :goto_126
    return-void
.end method

.method public setImsPreCallInfo(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V
    .registers 14
    .param p1, "mode"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "fromUri"    # Ljava/lang/String;
    .param p5, "location"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2431
    .local p4, "extraHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsPreCallInfo mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/mediatek/ims/internal/MtkImsManager;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fromUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2432
    invoke-static {p3}, Lcom/mediatek/ims/internal/MtkImsManager;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraHeaders: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2431
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2436
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 2439
    :try_start_3f
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    iget v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/mediatek/ims/internal/IMtkImsService;->setImsPreCallInfo(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4b} :catch_4d

    .line 2444
    nop

    .line 2445
    return-void

    .line 2441
    :catch_4d
    move-exception v0

    .line 2442
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "setImsPreCallInfo()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setMTRedirect(Z)V
    .registers 6
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMTRedirect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2266
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 2269
    :try_start_17
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->setMTRedirect(IZ)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_20

    .line 2273
    nop

    .line 2274
    return-void

    .line 2270
    :catch_20
    move-exception v0

    .line 2271
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "setMTRedirect()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setSipHeader(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 7
    .param p2, "fromUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2292
    .local p1, "extraHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSipHeader fromUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/mediatek/ims/internal/MtkImsManager;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraHeaders: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2295
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 2298
    :try_start_23
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsService;->setSipHeader(ILjava/util/Map;Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_2c

    .line 2302
    nop

    .line 2303
    return-void

    .line 2299
    :catch_2c
    move-exception v0

    .line 2300
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "setSipHeader()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setVdpProvisioned(I)V
    .registers 6
    .param p1, "value"    # I

    .line 2387
    :try_start_0
    const-class v0, Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Vdp value to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_23
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_23} :catch_24

    .line 2393
    goto :goto_47

    .line 2390
    :catch_24
    move-exception v0

    .line 2391
    .local v0, "e":Lcom/android/ims/ImsException;
    const-class v1, Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set Vdp value to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_47
    return-void
.end method

.method public setVoltePreferSetting(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 440
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getConfigInterfaceEx()Lcom/mediatek/ims/internal/MtkImsConfig;

    move-result-object v0

    .line 441
    .local v0, "config":Lcom/mediatek/ims/internal/MtkImsConfig;
    if-eqz v0, :cond_9

    .line 442
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/MtkImsConfig;->setVoltePreference(I)V
    :try_end_9
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_9} :catch_a

    .line 446
    .end local v0    # "config":Lcom/mediatek/ims/internal/MtkImsConfig;
    :cond_9
    goto :goto_1f

    .line 444
    :catch_a
    move-exception v0

    .line 445
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoltePreferSetting(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 447
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_1f
    return-void
.end method

.method public setVonrSetting(Z)Z
    .registers 7
    .param p1, "enabled"    # Z

    .line 2537
    const-string v0, "persist.vendor.vonr_setting_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    .line 2538
    const-string v0, "setVonrSetting: error, VoNR Setting not support"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 2539
    return v1

    .line 2541
    :cond_f
    const/4 v0, 0x1

    .line 2542
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v2

    .line 2543
    .local v2, "subId":I
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->isSubIdValid(I)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 2544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVonrSetting: invalid sub id, can not set property in  siminfo db; subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 2546
    return v1

    .line 2549
    :cond_2f
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 2551
    invoke-static {p1}, Lcom/mediatek/ims/internal/MtkImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v3

    .line 2549
    const-string v4, "vonr_enabled"

    invoke-interface {v1, v2, v4, v3}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2554
    if-eqz p1, :cond_4b

    :try_start_3c
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 2555
    const-string v1, "setVonrSetting: VoLTE is off, need enable VoLTE and VoNR"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2556
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/MtkImsManager;->setEnhanced4gLteModeSetting(Z)V

    goto :goto_71

    .line 2558
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVonrSetting: set VoNR to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2559
    new-instance v1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 2560
    .local v1, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v3

    .line 2562
    .local v3, "isNonTty":Z
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->updateVoiceCellFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 2563
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 2564
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    :try_end_71
    .catch Lcom/android/ims/ImsException; {:try_start_3c .. :try_end_71} :catch_72

    .line 2569
    .end local v1    # "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .end local v3    # "isNonTty":Z
    :goto_71
    goto :goto_88

    .line 2566
    :catch_72
    move-exception v1

    .line 2567
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVonrSetting, couldn\'t set config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 2568
    const/4 v0, 0x0

    .line 2570
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_88
    return v0
.end method

.method public setVonrSettingUiEnable(Z)Z
    .registers 6
    .param p1, "isShow"    # Z

    .line 2636
    const-string v0, "persist.vendor.vonr_setting_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    .line 2637
    const-string v0, "setVonrSettingUiEnable: error, VoNR Setting not support"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 2638
    return v1

    .line 2640
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v0

    .line 2641
    .local v0, "subId":I
    const-string v2, "persist.vendor.dbg.vonr_ui_ovr"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->isSubIdValid(I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVonrSettingUiEnable: set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2644
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 2646
    invoke-static {p1}, Lcom/mediatek/ims/internal/MtkImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 2644
    const-string v3, "vonr_ui_enabled"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2647
    const/4 v1, 0x1

    return v1

    .line 2649
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVonrSettingUiEnable: invalid sub id, can not set property in  siminfo db; subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 2651
    return v1
.end method

.method public setVtSettingOnly(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 585
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v1

    .line 586
    invoke-static {p1}, Lcom/mediatek/ims/internal/MtkImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 585
    const-string v3, "vt_ims_enabled"

    invoke-interface {v0, v1, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method protected setWfcModeInternal(I)V
    .registers 5
    .param p1, "wfcMode"    # I

    .line 630
    invoke-direct {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_e

    .line 631
    const-string v0, "Set wfc mode to MD."

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 632
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/MtkImsManager;->setWfcModeConfigEx(I)V

    .line 634
    :cond_e
    move v0, p1

    .line 635
    .local v0, "value":I
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getImsThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/ims/internal/MtkImsManager;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 643
    return-void
.end method

.method public setWfcNonPersistent(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "wfcMode"    # I

    .line 595
    invoke-super {p0, p1, p2}, Lcom/android/ims/ImsManager;->setWfcNonPersistent(ZI)V

    .line 598
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 599
    .local v0, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V

    .line 601
    :try_start_f
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->changeMmTelCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    :try_end_12
    .catch Lcom/android/ims/ImsException; {:try_start_f .. :try_end_12} :catch_13

    .line 604
    goto :goto_19

    .line 602
    :catch_13
    move-exception v1

    .line 603
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "setWfcNonPersistent(): "

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 605
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_19
    return-void
.end method

.method public setWfcRegErrorCode(I)V
    .registers 5
    .param p1, "errorCode"    # I

    .line 2398
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    if-eqz v0, :cond_29

    .line 2399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] setWfcRegErrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2400
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->setWfcRegErrorCode(II)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 2404
    :cond_29
    goto :goto_3f

    .line 2402
    :catch_2a
    move-exception v0

    .line 2403
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to setWfcRegErrorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 2405
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3f
    return-void
.end method

.method public setWfcSetting(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 454
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isWfcProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_e

    .line 455
    const-string v0, "setWfcSetting: Not possible to enable WFC due to provisioning."

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 456
    return-void

    .line 459
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSubId()I

    move-result v0

    .line 460
    .local v0, "subId":I
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->isSubIdValid(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 461
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 462
    invoke-static {p1}, Lcom/mediatek/ims/internal/MtkImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v2

    .line 461
    const-string v3, "wfc_ims_enabled"

    invoke-interface {v1, v0, v3, v2}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 464
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWfcSetting: invalid sub id, can not set WFC setting in siminfo db; subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V

    .line 468
    :goto_38
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    .line 469
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 470
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    .line 471
    .local v2, "isRoaming":Z
    if-eqz v2, :cond_4f

    invoke-direct {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isConvertRoamingStateForSpecificOP()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 472
    const/4 v2, 0x0

    .line 474
    :cond_4f
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->getWfcMode(Z)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->setWfcNonPersistent(ZI)V

    .line 475
    return-void
.end method

.method protected shouldEnableImsForIR()Z
    .registers 7

    .line 1836
    sget-boolean v0, Lcom/mediatek/ims/internal/MtkImsManager;->mSupportImsiSwitch:Z

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 1837
    const-string v0, "[IR] IMSI switch feature not supported"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1838
    return v1

    .line 1840
    :cond_b
    const/4 v0, 0x1

    .line 1841
    .local v0, "enableIms":Z
    iget v2, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 1842
    .local v2, "subId":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    .line 1843
    const-string v3, "[IR] shouldEnableImsForIR: Invalid subId so return"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1844
    return v1

    .line 1846
    :cond_1b
    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->getOperatorNumericFromImpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1847
    .local v3, "permanentMccMnc":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/ims/internal/MtkImsManager;->getMccMncForSubId(ILandroid/telephony/SubscriptionManager;)Ljava/lang/String;

    move-result-object v4

    .line 1848
    .local v4, "currentMccMnc":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 1849
    const/4 v0, 0x0

    .line 1851
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IR] updateVolteFeatureValue: subId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", phoneId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Current currentMccMnc = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", permanentMccMnc = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", enableIms = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1856
    return v0
.end method

.method protected shouldForceUpdated()Z
    .registers 3

    .line 363
    const-string v0, "vendor.ril.imsconfig.force.notify"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public takeCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .registers 11
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "incomingCallExtras"    # Landroid/os/Bundle;
    .param p3, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "takeCall :: incomingCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsManager;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1412
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->getOrThrowExceptionIfServiceUnavailable()Lcom/android/ims/MmTelFeatureConnection;

    .line 1414
    const/16 v0, 0x65

    if-eqz p2, :cond_94

    .line 1420
    const-string v1, "android:ussd"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1421
    .local v1, "isUssd":Z
    if-eqz v1, :cond_43

    .line 1422
    const-string v0, "takeCall :: isUssd = true, invoke original AOPS\'s takeCall()"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 1423
    invoke-super {p0, p1, p3}, Lcom/android/ims/ImsManager;->takeCall(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v0

    return-object v0

    .line 1427
    :cond_43
    invoke-static {p2}, Lcom/mediatek/ims/internal/MtkImsManager;->getCallId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 1429
    .local v3, "callId":Ljava/lang/String;
    if-eqz v3, :cond_8c

    .line 1437
    :try_start_49
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;

    iget v4, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mPhoneId:I

    invoke-interface {v0, v4, v3}, Lcom/mediatek/ims/internal/IMtkImsService;->getPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 1440
    .local v0, "mtkSession":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    if-eqz v0, :cond_79

    .line 1445
    invoke-interface {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    move-object p1, v4

    .line 1447
    invoke-interface {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    .line 1448
    .local v4, "callProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v4, :cond_71

    .line 1452
    new-instance v5, Lcom/mediatek/ims/MtkImsCall;

    iget-object v6, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Lcom/mediatek/ims/MtkImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1454
    .local v5, "call":Lcom/android/ims/ImsCall;
    new-instance v6, Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-direct {v6, p1, v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    invoke-virtual {v5, v6}, Lcom/android/ims/ImsCall;->attachSession(Landroid/telephony/ims/ImsCallSession;)V

    .line 1455
    invoke-virtual {v5, p3}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    .line 1457
    return-object v5

    .line 1449
    .end local v5    # "call":Lcom/android/ims/ImsCall;
    :cond_71
    new-instance v5, Lcom/android/ims/ImsException;

    const-string v6, "takeCall(): profile is null"

    invoke-direct {v5, v6, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "isUssd":Z
    .end local v3    # "callId":Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/internal/MtkImsManager;
    .end local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .end local p2    # "incomingCallExtras":Landroid/os/Bundle;
    .end local p3    # "listener":Lcom/android/ims/ImsCall$Listener;
    throw v5

    .line 1441
    .end local v4    # "callProfile":Landroid/telephony/ims/ImsCallProfile;
    .restart local v1    # "isUssd":Z
    .restart local v3    # "callId":Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/internal/MtkImsManager;
    .restart local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .restart local p2    # "incomingCallExtras":Landroid/os/Bundle;
    .restart local p3    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_79
    new-instance v4, Lcom/android/ims/ImsException;

    const-string v5, "No pending IMtkImsCallSession for the call"

    const/16 v6, 0x6b

    invoke-direct {v4, v5, v6}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v1    # "isUssd":Z
    .end local v3    # "callId":Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/internal/MtkImsManager;
    .end local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .end local p2    # "incomingCallExtras":Landroid/os/Bundle;
    .end local p3    # "listener":Lcom/android/ims/ImsCall$Listener;
    throw v4
    :try_end_83
    .catchall {:try_start_49 .. :try_end_83} :catchall_83

    .line 1458
    .end local v0    # "mtkSession":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .restart local v1    # "isUssd":Z
    .restart local v3    # "callId":Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/internal/MtkImsManager;
    .restart local p1    # "session":Lcom/android/ims/internal/IImsCallSession;
    .restart local p2    # "incomingCallExtras":Landroid/os/Bundle;
    .restart local p3    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_83
    move-exception v0

    .line 1459
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v4, Lcom/android/ims/ImsException;

    const-string v5, "takeCall()"

    invoke-direct {v4, v5, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4

    .line 1430
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_8c
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v4, "Call ID missing in the incoming call intent"

    invoke-direct {v2, v4, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1415
    .end local v1    # "isUssd":Z
    .end local v3    # "callId":Ljava/lang/String;
    :cond_94
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Can\'t retrieve session with null intent"

    invoke-direct {v1, v2, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method protected updateVideoCallFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V
    .registers 21
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "isNonTty"    # Z

    .line 886
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isVtEnabledByPlatform()Z

    move-result v3

    .line 887
    .local v3, "available":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isVtEnabledByUser()Z

    move-result v4

    .line 888
    .local v4, "vtEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v5

    .line 889
    .local v5, "advancedEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isDataEnabled()Z

    move-result v6

    .line 890
    .local v6, "isDataEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isTestSim()Z

    move-result v7

    const-string v8, "OM"

    const-string v9, "persist.vendor.operator.optr"

    if-eqz v7, :cond_29

    .line 891
    invoke-static {v9, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mediatek/ims/internal/MtkImsManager;->isVTIgnoreDataChangedByOpid(Ljava/lang/String;)Z

    move-result v7

    goto :goto_2f

    .line 892
    :cond_29
    const-string v7, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {v0, v7}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v7

    :goto_2f
    nop

    .line 893
    .local v7, "ignoreDataEnabledChanged":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isDataRoaming()Z

    move-result v10

    if-eqz v10, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isDataRoamingSettingsEnabled()Z

    move-result v10

    if-eqz v10, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v10, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v10, 0x1

    .line 894
    .local v10, "isDataRoamingEnable":Z
    :goto_40
    const-string v13, "mtk_ignore_data_roaming_for_video_calls"

    invoke-virtual {v0, v13}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v13

    .line 896
    .local v13, "ignoreDataRoaming":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isImsOverNrEnabledByPlatform()Z

    move-result v14

    .line 906
    .local v14, "nrAvailable":Z
    if-eqz v3, :cond_5c

    if-eqz v4, :cond_5c

    if-eqz v2, :cond_5c

    if-eqz v5, :cond_5c

    if-nez v7, :cond_5a

    if-eqz v6, :cond_5c

    if-nez v13, :cond_5a

    if-eqz v10, :cond_5c

    :cond_5a
    const/4 v15, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v15, 0x0

    .line 910
    .local v15, "isVilteFeatureOn":Z
    :goto_5d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateVideoCallFeatureValue ViLTE: available = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", vtEnabled = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", advancedCallEnabled = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", nonTTY = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", ignoreDataEnabledChanged = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", data enabled = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", ignoreDataRoaming = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", data roaming enabled = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", nrAvailable = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", is test sim = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isTestSim()Z

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " (ignore data = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isTestSim()Z

    move-result v11

    if-nez v11, :cond_c4

    const-string v8, "No need to check"

    goto :goto_d0

    .line 922
    :cond_c4
    invoke-static {v9, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->isVTIgnoreDataChangedByOpid(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_d0
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 910
    invoke-direct {v0, v8}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 925
    const/4 v8, 0x2

    if-eqz v15, :cond_e7

    .line 926
    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_eb

    .line 931
    :cond_e7
    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 936
    :goto_eb
    const/4 v11, 0x3

    if-eqz v15, :cond_f4

    if-eqz v14, :cond_f4

    .line 937
    invoke-virtual {v1, v8, v11}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_f7

    .line 941
    :cond_f4
    invoke-virtual {v1, v8, v11}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 947
    :goto_f7
    const-string v11, "mtk_vt_over_wifi_check_wfc_enable_bool"

    invoke-virtual {v0, v11}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v11

    .line 949
    .local v11, "isViWifiNeedCheckWfcEnabled":Z
    const-string v12, "mtk_vt_over_wifi_check_volte_enable_bool"

    invoke-virtual {v0, v12}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v12

    .line 951
    .local v12, "isViWifiNeedCheckVolteEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isVtEnabledByUser()Z

    move-result v16

    if-eqz v16, :cond_11c

    if-eqz v12, :cond_111

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v16

    if-eqz v16, :cond_11c

    :cond_111
    if-eqz v11, :cond_119

    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isWfcEnabledByUser()Z

    move-result v16

    if-eqz v16, :cond_11c

    :cond_119
    const/16 v16, 0x1

    goto :goto_11e

    :cond_11c
    move/from16 v16, v9

    :goto_11e
    move/from16 v17, v16

    .line 954
    .local v17, "viwifiEnabled":Z
    const-string v9, "mtk_vt_over_wifi_check_data_enable_bool"

    invoke-virtual {v0, v9}, Lcom/mediatek/ims/internal/MtkImsManager;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v9

    .line 957
    .local v9, "isViWifiNeedCheckDataEnabled":Z
    if-eqz v3, :cond_135

    move/from16 v8, v17

    .end local v17    # "viwifiEnabled":Z
    .local v8, "viwifiEnabled":Z
    if-eqz v8, :cond_137

    if-eqz v2, :cond_137

    if-eqz v9, :cond_132

    if-eqz v6, :cond_137

    :cond_132
    const/16 v16, 0x1

    goto :goto_139

    .end local v8    # "viwifiEnabled":Z
    .restart local v17    # "viwifiEnabled":Z
    :cond_135
    move/from16 v8, v17

    .end local v17    # "viwifiEnabled":Z
    .restart local v8    # "viwifiEnabled":Z
    :cond_137
    const/16 v16, 0x0

    .line 960
    .local v16, "isViwifiFeatureOn":Z
    :goto_139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    .end local v4    # "vtEnabled":Z
    .local v17, "vtEnabled":Z
    const-string v4, "updateVideoCallFeatureValue ViWiFi: available = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", viwifiEnabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isViWifiNeedCheckWfcEnabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isWfcEnabledByUser = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isWfcEnabledByUser()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isViWifiNeedCheckDataEnabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isViWifiNeedCheckVolteEnabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 960
    invoke-direct {v0, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 967
    if-eqz v16, :cond_183

    .line 968
    const/4 v2, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_188

    .line 973
    :cond_183
    const/4 v2, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 977
    :goto_188
    return-void
.end method

.method protected updateVonrFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest;Z)V
    .registers 9
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "isFeatureOn"    # Z

    .line 2497
    const-string v0, "persist.vendor.vonr_setting_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    .line 2498
    const-string v0, "updateVonrFeatureValue: VoNR Setting not support"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2499
    return-void

    .line 2501
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isImsOverNrEnabledByPlatform()Z

    move-result v0

    .line 2502
    .local v0, "isVonrAvailable":Z
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isVonrEnabledByUser()Z

    move-result v2

    .line 2503
    .local v2, "isVonrEnabled":Z
    const/4 v3, 0x1

    if-eqz v0, :cond_1f

    if-eqz v2, :cond_1f

    if-eqz p2, :cond_1f

    move v1, v3

    .line 2505
    .local v1, "isVonrFeatureOn":Z
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVonrFeatureValue: isVonrAvailable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isVonrEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isVonrFeatureOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2508
    const/4 v4, 0x3

    if-eqz v1, :cond_4a

    .line 2509
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_4d

    .line 2513
    :cond_4a
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2517
    :goto_4d
    return-void
.end method

.method protected updateVonrSetting(IZ)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 2522
    const-string v0, "persist.vendor.vonr_setting_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    .line 2523
    const-string v0, "updateVonrSetting: VoNR Setting not support"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->log(Ljava/lang/String;)V

    .line 2524
    return-void

    .line 2527
    :cond_f
    if-nez p2, :cond_22

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/MtkImsManager;->isVonrEnabledByUser()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2528
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager;->mSubscriptionManagerProxy:Lcom/android/ims/ImsManager$SubscriptionManagerProxy;

    .line 2530
    invoke-static {p2}, Lcom/mediatek/ims/internal/MtkImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 2528
    const-string v2, "vonr_enabled"

    invoke-interface {v0, p1, v2, v1}, Lcom/android/ims/ImsManager$SubscriptionManagerProxy;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2532
    :cond_22
    return-void
.end method

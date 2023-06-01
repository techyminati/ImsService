.class public Lcom/mediatek/wfo/impl/WifiOffloadService;
.super Lcom/mediatek/wfo/IWifiOffloadService$Stub;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/impl/WifiOffloadService$WifiOffloadDeathRecipient;,
        Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;,
        Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;,
        Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;,
        Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;,
        Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;,
        Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;,
        Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;
    }
.end annotation


# static fields
.field private static final EVENT_HANDLE_MODEM_POWER:I = 0xc

.field private static final EVENT_LOCATION_CHANGED:I = 0xa

.field private static final EVENT_NATIVE_MAL_CONNECTION_READY:I = 0x5

.field private static final EVENT_NATIVE_MAL_CONNECTION_RESET:I = 0x4

.field private static final EVENT_NOTIFY_SERVICE_STATE_CHANGE:I = 0x3

.field private static final EVENT_NOTIFY_WIFI_NO_INTERNET:I = 0xe

.field private static final EVENT_NOTIRY_MAL_USER_PROFILE:I = 0x14

.field private static final EVENT_ON_HANDOVER:I = 0x7

.field private static final EVENT_ON_REQUEST_IMS_SWITCH:I = 0x9

.field private static final EVENT_ON_ROVE_OUT:I = 0x8

.field private static final EVENT_REQUEST_LOCATION:I = 0xb

.field private static final EVENT_RETRY_CHECK_IF_START_WIFI_SCAN:I = 0x11

.field private static final EVENT_RETRY_INIT:I = 0xf

.field private static final EVENT_RETRY_UPDATE_WIFI_CONNTECTED_INFO:I = 0x12

.field private static final EVENT_SUBSCRIPTION_INFO_CHANGED:I = 0x2

.field private static final EVENT_WIFI_NETWORK_STATE_CHANGE:I = 0x1

.field private static final EVENT_WIFI_SCAN:I = 0xd

.field private static final EVENT_WIFI_SCAN_AVAILABLE:I = 0x10

.field private static final EVENT_WIFI_SIGNAL_STRENGTH_CHANGE:I = 0x6

.field private static final EVENT_WIFI_STATE_CHANGE:I = 0x13

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final EXTRA_POWER_ON_MODEM_KEY:Ljava/lang/String; = "mediatek:POWER_ON_MODEM"

.field private static final EXTRA_WFC_STATUS_KEY:Ljava/lang/String; = "wfc_status"

.field private static MAL_CONNECTION_SETUP_RETRY_TIMEOUT:I = 0x0

.field private static final MAL_STATE_INITIALIZING:I = 0x1

.field private static final MAL_STATE_READY:I = 0x2

.field private static final MAL_STATE_UNAVAILABLE:I = 0x0

.field private static final MCCMNC_MODE_BOTH:I = 0x2

.field private static final MCCMNC_MODE_RESOURCE:I = 0x0

.field private static final MCCMNC_MODE_SYSTEM_PROPERTY:I = 0x1

.field private static final NEED_DEFER:I = 0x1

.field private static final NETWORK_LOCATION_UPDATE_TIME:I = 0x0

.field private static final NO_NEED_DEFER:I = 0x0

.field private static final PROPERTY_FORCE_ENALBE_WFC_SUPPORTED:Ljava/lang/String; = "persist.enable_wfc_supported"

.field private static final PROPERTY_IMS_VIDEO_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.ims.video.enable"

.field private static final PROPERTY_MULTI_IMS_SUPPORT:Ljava/lang/String; = "persist.vendor.mims_support"

.field private static final PROPERTY_VOLTE_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.volte.enable"

.field private static final PROPERTY_WFC_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.wfc.enable"

.field private static final PROPERTY_WFC_MCCMNC_ALLOWLIST:Ljava/lang/String; = "persist.vendor.mtk.wfc.mccmnc_list"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final RADIO_MANAGER_POWER_ON_MODEM:Ljava/lang/String; = "mediatek.intent.action.WFC_POWER_ON_MODEM"

.field private static final RADIO_STATE_DEFUALT:I = -0x1

.field private static final SNR_NOINFO:I = 0x3c

.field static final TAG:Ljava/lang/String; = "WifiOffloadService"

.field private static final TELDBG:Z

.field private static final USR_BUILD:Z

.field private static final WFC_NOTIFY_GO:I = 0x2

.field private static final WFC_STATUS_CHANGED:Ljava/lang/String; = "com.mediatek.intent.action.WFC_STATUS_CHANGED"

.field private static final WFO_HIDL_SERVICE_NAME:Ljava/lang/String; = "wfo_hidl_service"

.field private static WIFI_NO_INTERNET_ERROR_CODE:I = 0x0

.field private static WIFI_NO_INTERNET_TIMEOUT:I = 0x0

.field private static WIFI_SCAN_DELAY:I = 0x0

.field private static final WIFI_STATE_UI_DISABLING:I = 0x26ac


# instance fields
.field private mActiveSubId:[I

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCfgListeners:[Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDataRegState:[I

.field private mDataRoamingEnabled:I

.field private mDeferredNotificationToWifi:Z

.field private mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

.field private mFeatureValueReceiver:Landroid/content/BroadcastReceiver;

.field private mFqdn:[Ljava/lang/String;

.field private mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

.field private mHasWiFiDisabledPending:Z

.field private mHasWiFiEnabledPending:Z

.field private mIfName:Ljava/lang/String;

.field mInitThred:Ljava/lang/Thread;

.field private mIsAirplaneModeOn:Z

.field private mIsAllowTurnOffIms:[Z

.field private mIsCurDataRoaming:[Z

.field private mIsCurVoiceRoaming:[Z

.field private mIsSimWfcSupported:[Z

.field private mIsVilteEnabled:[Z

.field private mIsVolteEnabled:[Z

.field private mIsWfcEnabled:[Z

.field private mIsWifiConnected:Z

.field private mIsWifiEnabled:Z

.field private mIsWifiL2Connected:Z

.field private mLastRssi:I

.field private mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/mediatek/wfo/IWifiOffloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocatedPlmn:[Ljava/lang/String;

.field private final mLocationListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLock:Ljava/lang/Object;

.field private mNativeMalState:I

.field private mPendingMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneServicesStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioState:[I

.field private mRadioTechnology:[I

.field private mRatType:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

.field private mSettingsObserver:Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;

.field private mSimCount:I

.field private mSimState:[Ljava/lang/String;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionsChangedlistener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoiceRadioTechnology:[I

.field private mVoiceRegState:[I

.field private mWfcMode:I

.field private mWifiApMac:Ljava/lang/String;

.field private mWifiIpv4Address:Ljava/lang/String;

.field private mWifiIpv6Address:Ljava/lang/String;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiLockCount:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiMgrInitDone:Z

.field private mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

.field final mWifiOffloadDeathRecipient:Lcom/mediatek/wfo/impl/WifiOffloadService$WifiOffloadDeathRecipient;

.field mWifiOffloadHIDLCallback:Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;

.field private mWifiPdnExisted:[Z

.field private mWosExt:Lcom/mediatek/wfo/op/IWosExt;

.field private mWosFactory:Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 184
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 185
    const-string v3, "userdebug"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v2

    :goto_1a
    sput-boolean v0, Lcom/mediatek/wfo/impl/WifiOffloadService;->USR_BUILD:Z

    .line 186
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_25

    move v1, v2

    :cond_25
    sput-boolean v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->TELDBG:Z

    .line 236
    const/16 v0, 0x439

    sput v0, Lcom/mediatek/wfo/impl/WifiOffloadService;->WIFI_NO_INTERNET_ERROR_CODE:I

    .line 237
    const/16 v0, 0x1f40

    sput v0, Lcom/mediatek/wfo/impl/WifiOffloadService;->WIFI_NO_INTERNET_TIMEOUT:I

    .line 261
    const/16 v0, 0x7d0

    sput v0, Lcom/mediatek/wfo/impl/WifiOffloadService;->MAL_CONNECTION_SETUP_RETRY_TIMEOUT:I

    .line 264
    const/16 v0, 0xbb8

    sput v0, Lcom/mediatek/wfo/impl/WifiOffloadService;->WIFI_SCAN_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 916
    const-string v0, "captive_portal_mode"

    invoke-direct {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;-><init>()V

    .line 188
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 230
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z

    .line 231
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiL2Connected:Z

    .line 232
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiApMac:Ljava/lang/String;

    .line 233
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv4Address:Ljava/lang/String;

    .line 234
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv6Address:Ljava/lang/String;

    .line 235
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIfName:Ljava/lang/String;

    .line 241
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAirplaneModeOn:Z

    .line 242
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHasWiFiEnabledPending:Z

    .line 246
    iput v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDataRoamingEnabled:I

    .line 257
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mPhoneServicesStateListeners:Ljava/util/Map;

    .line 280
    iput v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLockCount:I

    .line 282
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDeferredNotificationToWifi:Z

    .line 305
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mInitThred:Ljava/lang/Thread;

    .line 329
    iput-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWosFactory:Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;

    .line 330
    iput-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    .line 339
    new-instance v4, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;

    invoke-direct {v4, p0, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSettingsObserver:Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;

    .line 341
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiMgrInitDone:Z

    .line 343
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mPendingMsgs:Ljava/util/ArrayList;

    .line 344
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLock:Ljava/lang/Object;

    .line 443
    new-instance v3, Lcom/mediatek/wfo/impl/WifiOffloadService$1;

    invoke-direct {v3, p0}, Lcom/mediatek/wfo/impl/WifiOffloadService$1;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    iput-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 564
    new-instance v3, Lcom/mediatek/wfo/impl/WifiOffloadService$2;

    invoke-direct {v3, p0}, Lcom/mediatek/wfo/impl/WifiOffloadService$2;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    iput-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mFeatureValueReceiver:Landroid/content/BroadcastReceiver;

    .line 638
    new-instance v3, Lcom/mediatek/wfo/impl/WifiOffloadService$3;

    invoke-direct {v3, p0}, Lcom/mediatek/wfo/impl/WifiOffloadService$3;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    iput-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSubscriptionsChangedlistener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 679
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocationListeners:Ljava/util/HashMap;

    .line 2167
    new-instance v3, Lcom/mediatek/wfo/impl/WifiOffloadService$7;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService$7;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContentObserver:Landroid/database/ContentObserver;

    .line 917
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    .line 921
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "WFOServiceHandlerThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 922
    .local v4, "mHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 923
    new-instance v5, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    .line 926
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 927
    const-string v6, "wfc_ims_enabled"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 926
    invoke-virtual {v5, v6, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 929
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->initWifiManager()V

    .line 932
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 934
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 936
    .local v3, "b":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 937
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSubscriptionsChangedlistener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 939
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 940
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    iput-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocationManager:Landroid/location/LocationManager;

    .line 941
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v6, "WifiOffloadService"

    if-eqz v5, :cond_e3

    .line 942
    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    invoke-static {v7, v5}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v5

    iput v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWfcMode:I

    goto :goto_f0

    .line 944
    :cond_e3
    const-string v5, "WOS: telephony manager null"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWfcMode:I

    .line 948
    :goto_f0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getDataRoamingSetting()I

    move-result v5

    iput v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDataRoamingEnabled:I

    .line 949
    new-instance v5, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiOffloadDeathRecipient;

    invoke-direct {v5, p0}, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiOffloadDeathRecipient;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    iput-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffloadDeathRecipient:Lcom/mediatek/wfo/impl/WifiOffloadService$WifiOffloadDeathRecipient;

    .line 950
    new-instance v5, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;

    invoke-direct {v5, p0}, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    iput-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffloadHIDLCallback:Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;

    .line 951
    new-instance v5, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {v5, v7}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;-><init>(Landroid/net/ConnectivityManager;)V

    iput-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    .line 954
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/wfo/op/OpWosCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWosFactory:Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;

    .line 955
    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;->makeWosExt(Landroid/content/Context;)Lcom/mediatek/wfo/op/IWosExt;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    .line 957
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_19f

    .line 958
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    iput v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I

    .line 959
    new-array v6, v5, [Z

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsCurDataRoaming:[Z

    .line 960
    new-array v6, v5, [I

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRadioTechnology:[I

    .line 961
    new-array v6, v5, [I

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDataRegState:[I

    .line 962
    new-array v6, v5, [Z

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsCurVoiceRoaming:[Z

    .line 963
    new-array v6, v5, [I

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mVoiceRadioTechnology:[I

    .line 964
    new-array v6, v5, [I

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mVoiceRegState:[I

    .line 965
    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocatedPlmn:[Ljava/lang/String;

    .line 966
    new-array v6, v5, [Z

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVolteEnabled:[Z

    .line 967
    new-array v6, v5, [Z

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWfcEnabled:[Z

    .line 968
    new-array v6, v5, [Z

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVilteEnabled:[Z

    .line 969
    new-array v6, v5, [Z

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAllowTurnOffIms:[Z

    .line 970
    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mFqdn:[Ljava/lang/String;

    .line 971
    new-array v6, v5, [Z

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiPdnExisted:[Z

    .line 972
    new-array v6, v5, [I

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRatType:[I

    .line 973
    new-array v6, v5, [Lcom/mediatek/wfo/DisconnectCause;

    iput-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

    .line 975
    new-array v5, v5, [Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;

    iput-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mCfgListeners:[Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;

    .line 976
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_168
    iget v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I

    if-ge v5, v6, :cond_181

    .line 977
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mCfgListeners:[Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;

    new-instance v7, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;

    invoke-direct {v7, p0, v5}, Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V

    aput-object v7, v6, v5

    .line 978
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mFqdn:[Ljava/lang/String;

    aput-object v2, v6, v5

    .line 980
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAllowTurnOffIms:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 976
    add-int/lit8 v5, v5, 0x1

    goto :goto_168

    .line 983
    .end local v5    # "i":I
    :cond_181
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRadioState:[I

    .line 984
    const/4 v5, -0x1

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    .line 986
    iget v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I

    new-array v5, v2, [Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimState:[Ljava/lang/String;

    .line 987
    new-array v5, v2, [I

    iput-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mActiveSubId:[I

    .line 989
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v5, v2}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->initialize(I)V

    .line 991
    iget v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsSimWfcSupported:[Z

    goto :goto_1a4

    .line 994
    :cond_19f
    const-string v2, "Initialize failed, telephony is null"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :goto_1a4
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSettingsObserver:Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->register()V
    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->access$5600(Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;)V

    .line 998
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->registerForBroadcast()V

    .line 999
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->setupCallbacksForWifiStatus()V

    .line 1000
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->setupImsConfigFeatureValueMonitoring()V

    .line 1001
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->updateServiceStateListeners()V

    .line 1003
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->updateFeatureValue()V

    .line 1004
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->initHidlService()V

    .line 1005
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->initMalConnection()V

    .line 1009
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1011
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isTestNetwork()Z

    move-result v2

    if-eqz v2, :cond_1ea

    .line 1015
    :try_start_1cf
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, -0x2

    invoke-static {v2, v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1017
    .local v2, "defaultValue2":I
    if-ne v2, v5, :cond_1e5

    .line 1018
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1e5} :catch_1e6

    .line 1023
    .end local v2    # "defaultValue2":I
    :cond_1e5
    goto :goto_1ea

    .line 1021
    :catch_1e6
    move-exception v0

    .line 1022
    .local v0, "ie":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1025
    .end local v0    # "ie":Ljava/lang/Exception;
    :cond_1ea
    :goto_1ea
    const-string v0, "Initialize finish"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVolteEnabled:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/wfo/impl/WifiOffloadService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/wfo/impl/WifiOffloadService;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimState:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/wfo/impl/WifiOffloadService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mActiveSubId:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalSimInfo(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/wfo/impl/WifiOffloadService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->updateIsAllowTurnOffIms(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->handleModemPower()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->handleWfcModeChange()V

    return-void
.end method

.method static synthetic access$1702(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiL2Connected:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->handleAirPlaneModeChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVilteEnabled:[Z

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mCfgListeners:[Lcom/mediatek/wfo/impl/WifiOffloadService$CfgListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/wfo/impl/WifiOffloadService;Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/wfo/impl/WifiOffloadService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getNetworkTypeByFeature(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/wfo/impl/WifiOffloadService;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I

    .line 156
    iput p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWfcMode:I

    return p1
.end method

.method static synthetic access$2600(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->cancelNetworkLocationRequest(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->updateWifiConnectedInfo(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->updateServiceStateListeners()V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->updateDataRoamingSetting()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWfcEnabled:[Z

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/wfo/impl/WifiOffloadService;ILandroid/telephony/ServiceState;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/telephony/ServiceState;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->updateServiceState(ILandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/mediatek/wfo/impl/WifiOffloadService;ILandroid/telephony/ServiceState;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/telephony/ServiceState;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->updateVoiceState(ILandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$3202(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I

    .line 156
    iput p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    return p1
.end method

.method static synthetic access$3300(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->initMalConnection()V

    return-void
.end method

.method static synthetic access$3400(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalWifiState()V

    return-void
.end method

.method static synthetic access$3500(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mFqdn:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/wfo/impl/WifiOffloadService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getProvisioningFqdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalUserProfile(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/mediatek/wfo/impl/WifiOffloadService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalVoiceState(II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalRadioState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalWfcSupported(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/mediatek/wfo/impl/WifiOffloadService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalWifiQuality(II)V

    return-void
.end method

.method static synthetic access$4100(Lcom/mediatek/wfo/impl/WifiOffloadService;III)V
    .registers 4
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyOnHandover(III)V

    return-void
.end method

.method static synthetic access$4200(Lcom/mediatek/wfo/impl/WifiOffloadService;IZI)V
    .registers 4
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyOnRoveOut(IZI)V

    return-void
.end method

.method static synthetic access$4300(Lcom/mediatek/wfo/impl/WifiOffloadService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyOnRequestImsSwitch(IZ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/mediatek/wfo/impl/WifiOffloadService;Landroid/location/Location;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # Landroid/location/Location;

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getCountryIdFromLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/mediatek/wfo/impl/WifiOffloadService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->requestLocationFromNetwork(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # Z

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkIfstartWifiScan(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/mediatek/wfo/impl/WifiOffloadService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/mediatek/wfo/impl/WifiOffloadService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mPendingMsgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->initWifiManager()V

    return-void
.end method

.method static synthetic access$5200(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalUserProfile()V

    return-void
.end method

.method static synthetic access$5300(Lcom/mediatek/wfo/impl/WifiOffloadService;)Landroid/net/wifi/WifiManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/mediatek/wfo/impl/WifiOffloadService;Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;I)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;
    .param p2, "x2"    # I

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiEnabled:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiEnabled:Z

    return p1
.end method

.method static synthetic access$5700()I
    .registers 1

    .line 156
    sget v0, Lcom/mediatek/wfo/impl/WifiOffloadService;->MAL_CONNECTION_SETUP_RETRY_TIMEOUT:I

    return v0
.end method

.method static synthetic access$5800(Lcom/mediatek/wfo/impl/WifiOffloadService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLastRssi:I

    return v0
.end method

.method static synthetic access$5802(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I

    .line 156
    iput p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLastRssi:I

    return p1
.end method

.method static synthetic access$5900(Lcom/mediatek/wfo/impl/WifiOffloadService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/wfo/impl/WifiOffloadService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # Z

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkIfShowNoInternetError(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/wfo/impl/WifiOffloadService;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocatedPlmn:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getModemIdFromPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/wfo/impl/WifiOffloadService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalServiceState(II)V

    return-void
.end method

.method private allowWfcInAirplaneMode()Z
    .registers 8

    .line 1665
    const/4 v0, 0x1

    .line 1666
    .local v0, "wfcInApMode":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mActiveSubId:[I

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMainCapabilityPhoneId()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 1667
    .local v1, "mccMnc":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mActiveSubId:[I

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMainCapabilityPhoneId()I

    move-result v3

    aget v2, v2, v3

    .line 1669
    .local v2, "subId":I
    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAirplaneModeOn:Z

    const-string v4, "WifiOffloadService"

    if-eqz v3, :cond_42

    .line 1671
    :try_start_1d
    const-string v3, "wos_flight_mode_support_bool"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_25

    move v0, v3

    .line 1676
    goto :goto_42

    .line 1673
    :catch_25
    move-exception v3

    .line 1674
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get MTK_KEY_WOS_SUPPORT_WFC_IN_FLIGHTMODE for subid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " failed-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_42
    :goto_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowWfcInAirplaneMode mIsAirplaneModeOn = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAirplaneModeOn:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", subId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", wfcInApMode = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    return v0
.end method

.method private broadcastWfcStatusIntent(I)V
    .registers 4
    .param p1, "wfcStatus"    # I

    .line 2729
    packed-switch p1, :pswitch_data_28

    .line 2740
    return-void

    .line 2737
    :pswitch_4
    const-string v0, "Notify Wi-Fi fwk OK to off (WFC_NOTIFY_GO)"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2738
    goto :goto_16

    .line 2731
    :pswitch_a
    const-string v0, "Notify Wi-Fi fwk to enable defer Wi-Fi off process (NEED_DEFER)"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2732
    goto :goto_16

    .line 2734
    :pswitch_10
    const-string v0, "Notify Wi-Fi fwk to disable defer Wi-Fi off process (NO_NEED_DEFER)"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2735
    nop

    .line 2743
    :goto_16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.intent.action.WFC_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2744
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v1, "wfc_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2745
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2747
    return-void

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_10
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

.method private cancelNetworkLocationRequest(I)V
    .registers 4
    .param p1, "simIdx"    # I

    .line 2468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelNetworkLocationRequest simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2469
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_20

    .line 2470
    const-string v0, "WifiOffloadService"

    const-string v1, "cancelNetworkLocationRequest: empty locationManager, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    return-void

    .line 2473
    :cond_20
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocationListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;

    .line 2474
    .local v0, "locationListener":Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;
    if-nez v0, :cond_2f

    .line 2475
    return-void

    .line 2477
    :cond_2f
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2478
    return-void
.end method

.method private checkAsciiValid(Ljava/lang/String;)Z
    .registers 6
    .param p1, "impi"    # Ljava/lang/String;

    .line 1839
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1841
    .local v0, "impiBytes":[B
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 1844
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_e
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2
    :try_end_16
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_e .. :try_end_16} :catch_18

    .line 1845
    .local v2, "buffer":Ljava/nio/CharBuffer;
    const/4 v3, 0x1

    return v3

    .line 1846
    .end local v2    # "buffer":Ljava/nio/CharBuffer;
    :catch_18
    move-exception v2

    .line 1847
    .local v2, "e":Ljava/nio/charset/CharacterCodingException;
    const-string v3, "The information contains a non ASCII character(s)."

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1851
    .end local v2    # "e":Ljava/nio/charset/CharacterCodingException;
    const/4 v2, 0x0

    return v2
.end method

.method private checkHidlService()Z
    .registers 3

    .line 2554
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    if-eqz v0, :cond_6

    .line 2555
    const/4 v0, 0x1

    return v0

    .line 2557
    :cond_6
    const-string v0, "WifiOffloadService"

    const-string v1, "checkHidlService(), mWifiOffload is null !!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    const/4 v0, 0x0

    return v0
.end method

.method private checkIfShowNoInternetError(Z)V
    .registers 8
    .param p1, "showImmediately"    # Z

    .line 1372
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1373
    .local v0, "mainCapabilityPhoneId":I
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getRatTypeFromMal(I)I

    move-result v1

    .line 1375
    .local v1, "ratType":I
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWfcEnabled:[Z

    aget-boolean v2, v2, v0

    const/16 v3, 0xe

    if-eqz v2, :cond_3e

    if-nez v1, :cond_3e

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiL2Connected:Z

    if-eqz v2, :cond_3e

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z

    if-nez v2, :cond_3e

    .line 1379
    if-eqz p1, :cond_24

    .line 1380
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    sget v3, Lcom/mediatek/wfo/impl/WifiOffloadService;->WIFI_NO_INTERNET_ERROR_CODE:I

    invoke-interface {v2, v3}, Lcom/mediatek/wfo/op/IWosExt;->showPDNErrorMessages(I)V

    .line 1381
    return-void

    .line 1384
    :cond_24
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_50

    .line 1385
    const-string v2, "checkIfShowNoInternetError(): start 8s timeout"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1386
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    .line 1387
    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    sget v4, Lcom/mediatek/wfo/impl/WifiOffloadService;->WIFI_NO_INTERNET_TIMEOUT:I

    int-to-long v4, v4

    .line 1386
    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_50

    .line 1392
    :cond_3e
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1393
    const-string v2, "checkIfShowNoInternetError(): cancel 8s timeout"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1394
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->removeMessages(I)V

    .line 1397
    :cond_50
    :goto_50
    return-void
.end method

.method private checkIfstartWifiScan(Z)V
    .registers 7
    .param p1, "scanImmediately"    # Z

    .line 1341
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isWifiPdnExisted()Z

    move-result v0

    .line 1343
    .local v0, "wifiPdnExisted":Z
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z

    const/16 v2, 0xd

    if-nez v1, :cond_55

    if-eqz v0, :cond_55

    .line 1345
    if-eqz p1, :cond_3b

    .line 1346
    const-string v1, "call WifiManager.startScan()"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1347
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1b

    .line 1348
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_3b

    .line 1350
    :cond_1b
    const-string v1, "WifiOffloadService"

    const-string v2, "checkIfstartWifiScan(): WifiManager null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v2, 0x11

    .line 1352
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1351
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1353
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1354
    :try_start_31
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    monitor-exit v3

    .line 1356
    return-void

    .line 1355
    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_38

    throw v2

    .line 1360
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 1361
    const-string v1, "start 3s delay to trigger wifi scan"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1362
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    .line 1363
    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget v3, Lcom/mediatek/wfo/impl/WifiOffloadService;->WIFI_SCAN_DELAY:I

    int-to-long v3, v3

    .line 1362
    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5a

    .line 1366
    :cond_55
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->removeMessages(I)V

    .line 1368
    :cond_5a
    :goto_5a
    return-void
.end method

.method private checkInvalidSimIdx(ILjava/lang/String;)Z
    .registers 4
    .param p1, "simIdx"    # I
    .param p2, "dbgMsg"    # Ljava/lang/String;

    .line 2250
    if-ltz p1, :cond_9

    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I

    if-lt p1, v0, :cond_7

    goto :goto_9

    .line 2254
    :cond_7
    const/4 v0, 0x0

    return v0

    .line 2251
    :cond_9
    :goto_9
    const-string v0, "WifiOffloadService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    const/4 v0, 0x1

    return v0
.end method

.method private checkNullObject(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "dbgMsg"    # Ljava/lang/String;

    .line 2258
    if-nez p1, :cond_9

    .line 2259
    const-string v0, "WifiOffloadService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    const/4 v0, 0x1

    return v0

    .line 2262
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private encryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .line 2765
    const-string v0, ""

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_29

    .line 2769
    :cond_b
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    .line 2770
    .local v1, "encoder":Ljava/util/Base64$Encoder;
    const/4 v2, 0x0

    .line 2772
    .local v2, "textByte":[B
    :try_start_10
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_18

    move-object v2, v3

    .line 2776
    goto :goto_1d

    .line 2773
    :catch_18
    move-exception v3

    .line 2774
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2775
    const/4 v2, 0x0

    .line 2778
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1d
    if-nez v2, :cond_20

    return-object v0

    .line 2780
    :cond_20
    invoke-virtual {v1, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    .line 2781
    .local v3, "encryptedString":Ljava/lang/String;
    if-nez v3, :cond_27

    goto :goto_28

    :cond_27
    move-object v0, v3

    :goto_28
    return-object v0

    .line 2766
    .end local v1    # "encoder":Ljava/util/Base64$Encoder;
    .end local v2    # "textByte":[B
    .end local v3    # "encryptedString":Ljava/lang/String;
    :cond_29
    :goto_29
    return-object v0
.end method

.method private forceSyncPdnStateForAllSim(Z)V
    .registers 4
    .param p1, "wifiPdnState"    # Z

    .line 1990
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I

    if-ge v0, v1, :cond_c

    .line 1991
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiPdnExisted:[Z

    aput-boolean p1, v1, v0

    .line 1990
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1993
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2266
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_54

    .line 2270
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-nez v1, :cond_12

    .line 2271
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 2274
    :cond_12
    const/4 v0, 0x0

    .line 2275
    .local v0, "b":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_1b

    .line 2276
    invoke-virtual {v1, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2280
    :cond_1b
    if-eqz v0, :cond_22

    .line 2281
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .local v1, "ret":Z
    goto :goto_2f

    .line 2284
    .end local v1    # "ret":Z
    :cond_22
    const-string v1, "getBooleanCarrierConfig: get from default config"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2285
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 2288
    .restart local v1    # "ret":Z
    :goto_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBooleanCarrierConfig sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2289
    return v1

    .line 2267
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v1    # "ret":Z
    :cond_54
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "getBooleanCarrierConfig: no mContext = null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCountryIdFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .registers 10
    .param p1, "location"    # Landroid/location/Location;

    .line 2481
    const-string v0, "getCountryIdFromLocation"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2482
    const-string v0, "WifiOffloadService"

    if-nez p1, :cond_10

    .line 2483
    const-string v1, "getCountryIdFromLocation location is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    const/4 v0, 0x0

    return-object v0

    .line 2486
    :cond_10
    const/4 v1, 0x0

    .line 2487
    .local v1, "countryId":Ljava/lang/String;
    new-instance v2, Landroid/location/Geocoder;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 2489
    .local v2, "geocoder":Landroid/location/Geocoder;
    nop

    .line 2490
    :try_start_19
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const/4 v7, 0x1

    .line 2489
    invoke-virtual/range {v2 .. v7}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v3

    .line 2491
    .local v3, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v3, :cond_3a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3a

    .line 2492
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    invoke-virtual {v4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_39} :catch_3b

    move-object v1, v0

    .line 2496
    .end local v3    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_3a
    goto :goto_41

    .line 2494
    :catch_3b
    move-exception v3

    .line 2495
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Exception occurred when getting geocoded country from location"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    .end local v3    # "e":Ljava/io/IOException;
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCountryIdFromLocation countryId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2498
    return-object v1
.end method

.method private getDataRoamingSetting()I
    .registers 6

    .line 1488
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1489
    const-string v0, "Unexpected error, mSubscriptionManager=null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1490
    return v1

    .line 1493
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1494
    .local v0, "mainCapabilityPhoneId":I
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1496
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataRoamingSetting: mainCapabilityPhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , subInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1499
    if-eqz v2, :cond_38

    .line 1500
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDataRoaming()I

    move-result v1

    return v1

    .line 1502
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get subscription information for slot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1503
    return v1
.end method

.method private getIccId()Ljava/lang/String;
    .registers 7

    .line 2502
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    const-string v2, "WifiOffloadService"

    if-nez v0, :cond_d

    .line 2503
    const-string v0, "Unexpected error, mSubscriptionManager=null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    return-object v1

    .line 2507
    :cond_d
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMainCapabilityPhoneId()I

    move-result v0

    .line 2508
    .local v0, "mainCapabilityPhoneId":I
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 2511
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_1e

    .line 2512
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2514
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get subscription information for slot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    return-object v1
.end method

.method private getMainCapabilityPhoneId()I
    .registers 4

    .line 2158
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 2159
    .local v0, "phoneId":I
    if-ltz v0, :cond_14

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_15

    .line 2160
    :cond_14
    const/4 v0, -0x1

    .line 2162
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCapabilityPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2163
    return v0
.end method

.method private getMccMncFromResource()[Ljava/lang/String;
    .registers 2

    .line 1286
    sget-object v0, Lcom/mediatek/wfo/impl/WifiOffloadServiceResource;->wfcSupportedMccMncList:[Ljava/lang/String;

    return-object v0
.end method

.method private getMccMncFromSystemProperty()[Ljava/lang/String;
    .registers 3

    .line 1290
    const-string v0, "persist.vendor.mtk.wfc.mccmnc_list"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, "mccMncAllowList":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->validateMccMnc([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getModemIdFromPhoneId(I)I
    .registers 4
    .param p1, "phoneId"    # I

    .line 2230
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMainCapabilityPhoneId()I

    move-result v0

    .line 2231
    .local v0, "mainCapabilityPhoneId":I
    if-ne v0, p1, :cond_8

    const/4 v1, 0x0

    goto :goto_9

    :cond_8
    const/4 v1, 0x1

    :goto_9
    return v1
.end method

.method private getNetworkTypeByFeature(I)I
    .registers 3
    .param p1, "imsFeatureType"    # I

    .line 2235
    const/16 v0, 0xd

    packed-switch p1, :pswitch_data_c

    .line 2245
    const/4 v0, 0x0

    return v0

    .line 2243
    :pswitch_7
    const/16 v0, 0x12

    return v0

    .line 2240
    :pswitch_a
    return v0

    .line 2237
    :pswitch_b
    return v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private getProvisioningFqdn()Ljava/lang/String;
    .registers 9

    .line 2347
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "WifiOffloadService"

    if-nez v0, :cond_e

    .line 2348
    const-string v0, "getProvisioningFqdn: no context!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    return-object v1

    .line 2352
    :cond_e
    const/4 v0, 0x0

    .line 2353
    .local v0, "wfcFqdn":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2355
    .local v3, "imsConfig":Lcom/android/ims/ImsConfig;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMainCapabilityPhoneId()I

    move-result v4

    .line 2356
    .local v4, "phoneId":I
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v5

    .line 2358
    .local v5, "imsManager":Lcom/android/ims/ImsManager;
    if-nez v5, :cond_22

    .line 2359
    const-string v6, "getProvisioningFqdn: no ims manager!"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    return-object v1

    .line 2364
    :cond_22
    :try_start_22
    invoke-virtual {v5}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v6

    move-object v3, v6

    .line 2365
    if-nez v3, :cond_2f

    .line 2366
    const-string v6, "getProvisioningFqdn: no ImsConfig!"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Lcom/android/ims/ImsException; {:try_start_22 .. :try_end_2e} :catch_30

    .line 2367
    return-object v1

    .line 2373
    :cond_2f
    goto :goto_45

    .line 2371
    :catch_30
    move-exception v1

    .line 2372
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getProvisioningFqdn: ImsConfig error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_45
    if-nez v0, :cond_49

    .line 2376
    const-string v0, ""

    .line 2379
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvisioningFqdn: FQDN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2380
    return-object v0
.end method

.method private getRatTypeFromMal(I)I
    .registers 6
    .param p1, "simIdx"    # I

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRatType: invalid SIM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1150
    const/4 v0, 0x0

    return v0

    .line 1153
    :cond_19
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    const/4 v1, 0x2

    const-string v2, "WifiOffloadService"

    if-ne v0, v1, :cond_41

    .line 1154
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1156
    :try_start_26
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRatType:[I

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1158
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    .line 1157
    invoke-interface {v1, v3}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeGetRatType(B)I

    move-result v1

    aput v1, v0, p1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_39} :catch_3a

    goto :goto_40

    .line 1159
    :catch_3a
    move-exception v0

    .line 1160
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Wos HIDL Exception:"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_40
    goto :goto_46

    .line 1164
    :cond_41
    const-string v0, "getRatType return directly due to MAL isn\'t ready yet."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_46
    :goto_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rat type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRatType:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRatType:[I

    aget v0, v0, p1

    return v0
.end method

.method private handleAirPlaneModeChange()V
    .registers 10

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAirPlaneModeChange: mIsAirplaneModeOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAirplaneModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiOffloadService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAirplaneModeOn:Z

    const-string v2, "Wos handleAirPlaneModeChange Exception:"

    if-eqz v0, :cond_38

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->allowWfcInAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_38

    .line 548
    :try_start_24
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIfName:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv4Address:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv6Address:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiApMac:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeSetWifiStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_32} :catch_33

    goto :goto_37

    .line 550
    :catch_33
    move-exception v0

    .line 551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_37
    goto :goto_57

    .line 553
    :cond_38
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAirplaneModeOn:Z

    if-nez v0, :cond_57

    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHasWiFiEnabledPending:Z

    if-eqz v0, :cond_57

    .line 555
    :try_start_40
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    iget-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z

    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIfName:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv4Address:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv6Address:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiApMac:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeSetWifiStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4f} :catch_50

    .line 559
    goto :goto_54

    .line 557
    :catch_50
    move-exception v0

    .line 558
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHasWiFiEnabledPending:Z

    .line 562
    :cond_57
    :goto_57
    return-void
.end method

.method private handleModemPower()V
    .registers 4

    .line 2186
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isWfcEnabledByAnyPhone()Z

    move-result v0

    .line 2187
    .local v0, "isWfcEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleModemPower(): mIsWifiEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isWifiPdnExist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isWifiPdnExisted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isWfcEnabledByAnyPhone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2187
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2196
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiEnabled:Z

    if-eqz v1, :cond_39

    if-eqz v0, :cond_39

    .line 2197
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyPowerOnModem(Z)V

    .line 2198
    return-void

    .line 2201
    :cond_39
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isWifiPdnExisted()Z

    move-result v1

    if-nez v1, :cond_43

    .line 2202
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyPowerOnModem(Z)V

    .line 2204
    :cond_43
    return-void
.end method

.method private handleWfcModeChange()V
    .registers 4

    .line 534
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "WifiOffloadService"

    if-eqz v0, :cond_13

    .line 535
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWfcMode:I

    goto :goto_20

    .line 537
    :cond_13
    const-string v0, "handleWfcModeChange: telephony manager null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWfcMode:I

    .line 540
    :goto_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWfcModeChange: mWfcMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWfcMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 542
    return-void
.end method

.method private handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;I)V
    .registers 8
    .param p1, "source"    # Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;
    .param p2, "state"    # I

    .line 2636
    sget-object v0, Lcom/mediatek/wfo/impl/WifiOffloadService$8;->$SwitchMap$com$mediatek$wfo$impl$WifiOffloadService$WifiLockSource:[I

    invoke-virtual {p1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Warning: mWifiLockCount: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_118

    goto/16 :goto_da

    .line 2675
    :pswitch_12
    const/16 v0, 0x26ac

    if-ne p2, v0, :cond_29

    .line 2676
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHasWiFiDisabledPending:Z

    if-nez v0, :cond_da

    .line 2677
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2678
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHasWiFiDisabledPending:Z

    goto/16 :goto_da

    .line 2680
    :cond_24
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->broadcastWfcStatusIntent(I)V

    goto/16 :goto_da

    .line 2683
    :cond_29
    if-ne p2, v4, :cond_60

    .line 2685
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHasWiFiDisabledPending:Z

    if-eqz v0, :cond_31

    .line 2686
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHasWiFiDisabledPending:Z

    .line 2687
    :cond_31
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDeferredNotificationToWifi:Z

    if-eqz v0, :cond_da

    .line 2688
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDeferredNotificationToWifi:Z

    .line 2689
    const-string v0, "Wi-Fi fwk automaticlly disable defer Wi-Fi off process due to timeout"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2690
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_da

    .line 2691
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 2693
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLockCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLockCount:I

    .line 2694
    if-lez v0, :cond_da

    .line 2695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    goto/16 :goto_da

    .line 2699
    :cond_60
    const/4 v0, 0x3

    if-ne p2, v0, :cond_da

    .line 2701
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDeferredNotificationToWifi:Z

    if-nez v0, :cond_da

    .line 2702
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 2703
    invoke-direct {p0, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->broadcastWfcStatusIntent(I)V

    .line 2704
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_7c

    .line 2705
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 2706
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLockCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLockCount:I

    .line 2709
    :cond_7c
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDeferredNotificationToWifi:Z

    goto :goto_da

    .line 2638
    :pswitch_7f
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDeferredNotificationToWifi:Z

    if-nez v0, :cond_9a

    .line 2639
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 2640
    invoke-direct {p0, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->broadcastWfcStatusIntent(I)V

    .line 2641
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_98

    .line 2642
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 2643
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLockCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLockCount:I

    .line 2646
    :cond_98
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDeferredNotificationToWifi:Z

    .line 2650
    :cond_9a
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHasWiFiDisabledPending:Z

    if-eqz v0, :cond_a9

    .line 2651
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isWifiDeferOffNeeded()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 2652
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHasWiFiDisabledPending:Z

    .line 2653
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->broadcastWfcStatusIntent(I)V

    .line 2657
    :cond_a9
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDeferredNotificationToWifi:Z

    if-eqz v0, :cond_da

    .line 2658
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isWifiDeferOffNeeded()Z

    move-result v0

    if-nez v0, :cond_da

    .line 2659
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDeferredNotificationToWifi:Z

    .line 2660
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->broadcastWfcStatusIntent(I)V

    .line 2661
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_da

    .line 2662
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 2664
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLockCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLockCount:I

    .line 2665
    if-lez v0, :cond_da

    .line 2666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2718
    :cond_da
    :goto_da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new handleWifiDefferOff(): WifiLockSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mHasWiFiDisabledPending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHasWiFiDisabledPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isWifiDeferOffNeeded(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2721
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isWifiDeferOffNeeded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDeferredNotificationToWifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDeferredNotificationToWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2718
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2725
    return-void

    nop

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_12
    .end packed-switch
.end method

.method private initHidlService()V
    .registers 7

    .line 2530
    const-string v0, "WifiOffloadService"

    const-string v1, "initHidlService()"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2532
    const/4 v1, 0x0

    :try_start_8
    const-string v2, "wfo_hidl_service"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->getService(Ljava/lang/String;Z)Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    .line 2533
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 2534
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffloadDeathRecipient:Lcom/mediatek/wfo/impl/WifiOffloadService$WifiOffloadDeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 2535
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffloadHIDLCallback:Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback;

    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->setWifiOffloadCallback(Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback;)V

    .line 2536
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    invoke-interface {v2}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeInit()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2c} :catch_45
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_2c} :catch_2d

    goto :goto_5c

    .line 2541
    :catch_2d
    move-exception v2

    .line 2542
    .local v2, "e":Ljava/util/NoSuchElementException;
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    .line 2543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initHidlService() NoSuchElementException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 2538
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :catch_45
    move-exception v2

    .line 2539
    .local v2, "e":Landroid/os/RemoteException;
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    .line 2540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initHidlService() RemoteException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5c
    :goto_5c
    nop

    .line 2546
    :goto_5d
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 2547
    const-string v0, "initHidlService() succeed"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    goto :goto_6e

    .line 2549
    :cond_69
    const-string v1, "initHidlService() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    :goto_6e
    return-void
.end method

.method private initMalConnection()V
    .registers 5

    .line 1046
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    const-string v1, "WifiOffloadService"

    if-eqz v0, :cond_22

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMalConnection: current MAL state is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "return directly"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return-void

    .line 1051
    :cond_22
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    .line 1053
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1054
    const-string v0, "initMalConnection: HIDL service is null! "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->initHidlService()V

    .line 1056
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget v2, Lcom/mediatek/wfo/impl/WifiOffloadService;->MAL_CONNECTION_SETUP_RETRY_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1058
    return-void

    .line 1061
    :cond_41
    new-instance v0, Lcom/mediatek/wfo/impl/WifiOffloadService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WifiOffloadService$4;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mInitThred:Ljava/lang/Thread;

    .line 1081
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1082
    return-void
.end method

.method private initWifiManager()V
    .registers 5

    .line 2589
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_5

    .line 2590
    return-void

    .line 2593
    :cond_5
    const-string v0, "initWifiManager."

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2595
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2596
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2598
    :cond_1c
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    .line 2599
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 2600
    .local v0, "isWifiEnabled":Z
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiEnabled:Z

    if-eq v0, v2, :cond_36

    .line 2601
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiEnabled:Z

    .line 2602
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2605
    :cond_36
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2607
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v3, "WifiOffloadService-Wifi Lock"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 2608
    if-eqz v2, :cond_50

    .line 2609
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 2611
    .end local v0    # "isWifiEnabled":Z
    :cond_50
    goto :goto_6c

    .line 2612
    :cond_51
    const-string v0, "WifiManager null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2613
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiEnabled:Z

    .line 2614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 2615
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2616
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2617
    :try_start_66
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2618
    monitor-exit v1

    .line 2620
    .end local v0    # "msg":Landroid/os/Message;
    :goto_6c
    return-void

    .line 2618
    .restart local v0    # "msg":Landroid/os/Message;
    :catchall_6d
    move-exception v2

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_6d

    throw v2
.end method

.method private isIccIdSupportWfc(Ljava/lang/String;)Z
    .registers 5
    .param p1, "mIccId"    # Ljava/lang/String;

    .line 2520
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2521
    return v0

    .line 2524
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/wfo/impl/WifiOffloadServiceResource;->wfcSupportedIccIdList:[Ljava/lang/String;

    .line 2525
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2526
    .local v1, "wfcSupportedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x7

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSimSupportWfc(Ljava/lang/String;)Z
    .registers 6
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 2293
    const-string v0, "persist.enable_wfc_supported"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2295
    .local v0, "easyConfig":Z
    if-eqz v0, :cond_10

    .line 2296
    const-string v1, "isSimSupportWfc: easyConfig to enable WFC!"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2297
    const/4 v1, 0x1

    return v1

    .line 2300
    :cond_10
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMccMncAllowList(I)[Ljava/lang/String;

    move-result-object v1

    .line 2302
    .local v1, "wfcSupportedMccMncList":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    .line 2303
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2304
    .local v2, "wfcSupportedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private isTestNetwork()Z
    .registers 3

    .line 2434
    const-string v0, "vendor.gsm.sim.ril.testsim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 2435
    const-string v0, "vendor.gsm.sim.ril.testsim.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 2436
    const-string v0, "vendor.gsm.sim.ril.testsim.3"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 2437
    const-string v0, "vendor.gsm.sim.ril.testsim.4"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x1

    .line 2441
    .local v0, "isTestSim":Z
    :goto_36
    return v0
.end method

.method private isWfcEnabledByAnyPhone()Z
    .registers 4

    .line 2177
    const/4 v0, 0x0

    .line 2178
    .local v0, "isOn":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I

    if-ge v1, v2, :cond_e

    .line 2179
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWfcEnabled:[Z

    aget-boolean v2, v2, v1

    or-int/2addr v0, v2

    .line 2178
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2181
    .end local v1    # "i":I
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfcEnabledByAnyPhone(), isOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiOffloadService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    return v0
.end method

.method private isWifiDeferOffNeeded()Z
    .registers 2

    .line 2623
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isWifiPdnExisted()Z

    move-result v0

    return v0
.end method

.method private isWifiPdnExisted()Z
    .registers 4

    .line 2337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I

    if-ge v0, v1, :cond_24

    .line 2338
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiPdnExisted:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_21

    .line 2339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiPdnExisted: found WiFi PDN on SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2340
    const/4 v1, 0x1

    return v1

    .line 2337
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2343
    .end local v0    # "i":I
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private maskString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .line 2749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2750
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2751
    return-object p1

    .line 2753
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 2754
    .local v1, "maskLength":I
    const-string v2, "*"

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1f

    .line 2755
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2758
    :cond_1f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v1, :cond_28

    .line 2759
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2758
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 2761
    .end local v3    # "i":I
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private notifyMalCallState(IIII)V
    .registers 8
    .param p1, "simIdx"    # I
    .param p2, "callId"    # I
    .param p3, "callType"    # I
    .param p4, "callState"    # I

    .line 1684
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    const-string v1, "WifiOffloadService"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    .line 1685
    const-string v0, "notifyMalCallState return directly due to MAL isn\'t ready yet."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    return-void

    .line 1689
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMalCallState for sim: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " call state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1691
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1693
    :try_start_3f
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    invoke-interface {v0, v2, p2, p3, p4}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeSetCallState(BIII)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4d} :catch_4e

    .line 1697
    goto :goto_54

    .line 1695
    :catch_4e
    move-exception v0

    .line 1696
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Wos HIDL Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1699
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_54
    :goto_54
    return-void
.end method

.method private notifyMalRadioState(I)V
    .registers 10
    .param p1, "simIdx"    # I

    .line 1855
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    const-string v1, "WifiOffloadService"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    .line 1856
    const-string v0, "notifyMalRadioInfo return directly due to MAL isn\'t ready yet."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    return-void

    .line 1860
    :cond_d
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1861
    .local v0, "mainCapabilityPhoneId":I
    if-ne v0, p1, :cond_15

    const/4 v2, 0x0

    goto :goto_16

    :cond_15
    const/4 v2, 0x1

    .line 1863
    .local v2, "mdIdx":I
    :goto_16
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRadioState:[I

    aget v3, v3, p1

    if-ltz v3, :cond_75

    .line 1864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMalRadioInfo simIdx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mdIdx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " radio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRadioState:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1866
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1868
    :try_start_4a
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1869
    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    new-instance v6, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRadioState:[I

    aget v7, v7, p1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 1870
    invoke-virtual {v6}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    .line 1868
    invoke-interface {v3, v4, v5, v6}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeSetRadioState(BBB)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_6e} :catch_6f

    .line 1873
    goto :goto_75

    .line 1871
    :catch_6f
    move-exception v3

    .line 1872
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Wos HIDL Exception:"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1876
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_75
    :goto_75
    return-void
.end method

.method private notifyMalServiceState(II)V
    .registers 12
    .param p1, "simIdx"    # I
    .param p2, "mdIdx"    # I

    .line 1702
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    const-string v1, "WifiOffloadService"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    .line 1703
    const-string v0, "notifyMalServiceState return directly due to MAL isn\'t ready yet."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    return-void

    .line 1707
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeSetServiceState simIdx: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mdIdx: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsCurDataRoaming: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsCurDataRoaming:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRadioTechnology: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRadioTechnology:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDataRegState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDataRegState:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLocatedPlmn: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocatedPlmn:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1713
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1715
    :try_start_5f
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1716
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsCurDataRoaming:[Z

    aget-boolean v5, v0, p1

    new-instance v0, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRadioTechnology:[I

    aget v6, v6, p1

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 1717
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    new-instance v0, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDataRegState:[I

    aget v7, v7, p1

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 1718
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v7

    .line 1719
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocatedPlmn:[Ljava/lang/String;

    aget-object v8, v0, p1

    if-nez v8, :cond_9a

    const-string v0, ""

    goto :goto_9c

    :cond_9a
    aget-object v0, v0, p1

    :goto_9c
    move-object v8, v0

    .line 1715
    invoke-interface/range {v2 .. v8}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeSetServiceState(BBZBBLjava/lang/String;)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_a0} :catch_a1

    .line 1722
    goto :goto_a7

    .line 1720
    :catch_a1
    move-exception v0

    .line 1721
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Wos HIDL Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1724
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a7
    :goto_a7
    return-void
.end method

.method private notifyMalSimInfo(I)V
    .registers 28
    .param p1, "slotId"    # I

    .line 1751
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget v0, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    const-string v3, "WifiOffloadService"

    const/4 v4, 0x2

    if-eq v0, v4, :cond_11

    .line 1752
    const-string v0, "notifyMalServiceState return directly due to MAL isn\'t ready yet."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    return-void

    .line 1756
    :cond_11
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1b

    .line 1757
    const-string v0, "Unexpected error, mTelephonyManager=null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    return-void

    .line 1761
    :cond_1b
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mActiveSubId:[I

    aget v4, v0, v2

    .line 1762
    .local v4, "subId":I
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimState:[Ljava/lang/String;

    aget-object v5, v0, v2

    .line 1764
    .local v5, "simState":Ljava/lang/String;
    if-nez v5, :cond_2b

    .line 1765
    const-string v0, "notifyMalSimInfo: ignore sim state because it is null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    return-void

    .line 1769
    :cond_2b
    const-string v0, ""

    .line 1770
    .local v0, "imei":Ljava/lang/String;
    const-string v6, ""

    .line 1771
    .local v6, "imsi":Ljava/lang/String;
    const-string v7, ""

    .line 1772
    .local v7, "mccMnc":Ljava/lang/String;
    const-string v8, ""

    .line 1773
    .local v8, "impi":Ljava/lang/String;
    const-string v9, ""

    .line 1774
    .local v9, "simTypeStr":Ljava/lang/String;
    const/4 v10, 0x2

    .line 1777
    .local v10, "simType":I
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMainCapabilityPhoneId()I

    move-result v11

    const/4 v13, 0x0

    if-ne v2, v11, :cond_3f

    const/4 v11, 0x1

    goto :goto_40

    :cond_3f
    move v11, v13

    .line 1779
    .local v11, "isMainSim":Z
    :goto_40
    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsSimWfcSupported:[Z

    aput-boolean v13, v14, v2

    .line 1781
    const-string v14, "ABSENT"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_56

    .line 1782
    const/4 v12, 0x0

    move v13, v12

    move v12, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    .local v12, "simReady":Z
    goto/16 :goto_e5

    .line 1783
    .end local v12    # "simReady":Z
    :cond_56
    const-string v14, "LOADED"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1cb

    .line 1784
    const/4 v14, 0x1

    .line 1786
    .local v14, "simReady":Z
    iget-object v15, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 1787
    const-string v15, ""

    if-nez v0, :cond_6c

    move-object/from16 v16, v15

    goto :goto_6e

    :cond_6c
    move-object/from16 v16, v0

    :goto_6e
    move-object/from16 v0, v16

    .line 1788
    iget-object v12, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12, v4}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 1789
    if-nez v6, :cond_7a

    move-object v12, v15

    goto :goto_7b

    :cond_7a
    move-object v12, v6

    :goto_7b
    move-object v6, v12

    .line 1790
    iget-object v12, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v7

    .line 1791
    if-nez v7, :cond_86

    move-object v12, v15

    goto :goto_87

    :cond_86
    move-object v12, v7

    :goto_87
    move-object v7, v12

    .line 1792
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v8

    .line 1793
    if-nez v8, :cond_93

    goto :goto_94

    :cond_93
    move-object v15, v8

    :goto_94
    move-object v8, v15

    .line 1794
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v9

    .line 1795
    iget-object v12, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsSimWfcSupported:[Z

    invoke-direct {v1, v7}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isSimSupportWfc(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b3

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getIccId()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isIccIdSupportWfc(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b0

    goto :goto_b3

    :cond_b0
    move/from16 v16, v13

    goto :goto_b5

    :cond_b3
    :goto_b3
    const/16 v16, 0x1

    :goto_b5
    aput-boolean v16, v12, v2

    .line 1797
    if-nez v9, :cond_bf

    .line 1798
    const-string v12, "notifyMalSimInfo: unexpected result, simType=null, return directly"

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    return-void

    .line 1800
    :cond_bf
    const-string v12, "SIM"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c9

    .line 1801
    const/4 v10, 0x0

    goto :goto_d2

    .line 1802
    :cond_c9
    const-string v12, "USIM"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d2

    .line 1803
    const/4 v10, 0x1

    .line 1806
    :cond_d2
    :goto_d2
    invoke-direct {v1, v8}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkAsciiValid(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_de

    .line 1807
    const-string v3, "impi invalid"

    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1808
    return-void

    .line 1806
    :cond_de
    move v12, v10

    move v13, v14

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    .line 1815
    .end local v0    # "imei":Ljava/lang/String;
    .end local v14    # "simReady":Z
    .local v6, "imei":Ljava/lang/String;
    .local v7, "imsi":Ljava/lang/String;
    .local v8, "mccMnc":Ljava/lang/String;
    .local v9, "impi":Ljava/lang/String;
    .local v10, "simTypeStr":Ljava/lang/String;
    .local v12, "simType":I
    .local v13, "simReady":Z
    :goto_e5
    sget-boolean v0, Lcom/mediatek/wfo/impl/WifiOffloadService;->USR_BUILD:Z

    const-string v14, " wfcSupported: "

    const-string v15, " isMainSim: "

    move-object/from16 v23, v5

    .end local v5    # "simState":Ljava/lang/String;
    .local v23, "simState":Ljava/lang/String;
    const-string v5, " simReady: "

    move-object/from16 v24, v3

    const-string v3, " subId: "

    move/from16 v25, v12

    .end local v12    # "simType":I
    .local v25, "simType":I
    const-string v12, "notifyMalSimInfo simIdx: "

    if-eqz v0, :cond_13d

    sget-boolean v0, Lcom/mediatek/wfo/impl/WifiOffloadService;->TELDBG:Z

    if-eqz v0, :cond_fe

    goto :goto_13d

    .line 1822
    :cond_fe
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " imei: [hidden] imsi: [hidden] mccMnc: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " impi: [hidden] simType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsSimWfcSupported:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    goto :goto_19f

    .line 1816
    :cond_13d
    :goto_13d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ei: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    invoke-direct {v1, v6}, Lcom/mediatek/wfo/impl/WifiOffloadService;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " si: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Lcom/mediatek/wfo/impl/WifiOffloadService;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mccMnc: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pi: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    invoke-direct {v1, v9}, Lcom/mediatek/wfo/impl/WifiOffloadService;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " simType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsSimWfcSupported:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1816
    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1828
    :goto_19f
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v0

    if-eqz v0, :cond_1ca

    .line 1830
    :try_start_1a5
    iget-object v14, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v15

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move/from16 v20, v25

    move/from16 v21, v13

    move/from16 v22, v11

    invoke-interface/range {v14 .. v22}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeSetSimInfo(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_1c1
    .catch Landroid/os/RemoteException; {:try_start_1a5 .. :try_end_1c1} :catch_1c2

    .line 1834
    goto :goto_1ca

    .line 1832
    :catch_1c2
    move-exception v0

    .line 1833
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Wos HIDL Exception:"

    move-object/from16 v5, v24

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1836
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1ca
    :goto_1ca
    return-void

    .line 1811
    .end local v13    # "simReady":Z
    .end local v23    # "simState":Ljava/lang/String;
    .end local v25    # "simType":I
    .local v0, "imei":Ljava/lang/String;
    .restart local v5    # "simState":Ljava/lang/String;
    .local v6, "imsi":Ljava/lang/String;
    .local v7, "mccMnc":Ljava/lang/String;
    .local v8, "impi":Ljava/lang/String;
    .local v9, "simTypeStr":Ljava/lang/String;
    .local v10, "simType":I
    :cond_1cb
    move-object/from16 v23, v5

    .end local v5    # "simState":Ljava/lang/String;
    .restart local v23    # "simState":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMalSimInfo: ignore sim state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v23

    .end local v23    # "simState":Ljava/lang/String;
    .restart local v5    # "simState":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1812
    return-void
.end method

.method private notifyMalUserProfile()V
    .registers 3

    .line 1594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I

    if-ge v0, v1, :cond_b

    .line 1595
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalUserProfile(I)V

    .line 1594
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1597
    .end local v0    # "i":I
    :cond_b
    return-void
.end method

.method private notifyMalUserProfile(I)V
    .registers 15
    .param p1, "simIdx"    # I

    .line 1600
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    const-string v1, "WifiOffloadService"

    const-string v2, "notifyMalUserProfile("

    const/4 v3, 0x2

    if-eq v0, v3, :cond_21

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") return directly due to MAL isn\'t ready yet."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    return-void

    .line 1606
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")return invalid sim id."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1607
    return-void

    .line 1609
    :cond_3c
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getWfcMode()I

    move-result v0

    .line 1611
    .local v0, "wfcMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): mIsVolteEnabled: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVolteEnabled:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsVilteEnabled: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVilteEnabled:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsWfcEnabled: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWfcEnabled:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mFqdn: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mFqdn:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mIsWifiEnabled: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiEnabled:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mHasWiFiDisabledPending: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHasWiFiDisabledPending:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mWfcMode: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWfcMode:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDataRoamingEnabled: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDataRoamingEnabled:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsAllowTurnOffIms: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAllowTurnOffIms:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1620
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v2

    if-eqz v2, :cond_103

    .line 1622
    :try_start_c2
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVolteEnabled:[Z

    aget-boolean v5, v2, p1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWfcEnabled:[Z

    aget-boolean v6, v2, p1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVilteEnabled:[Z

    aget-boolean v7, v2, p1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mFqdn:[Ljava/lang/String;

    aget-object v8, v2, p1

    iget-boolean v9, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiEnabled:Z

    new-instance v2, Ljava/lang/Integer;

    iget v10, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWfcMode:I

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 1624
    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v10

    new-instance v2, Ljava/lang/Integer;

    iget v11, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDataRoamingEnabled:I

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 1625
    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v11

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAllowTurnOffIms:[Z

    aget-boolean v12, v2, p1

    .line 1622
    invoke-interface/range {v3 .. v12}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeSetWosProfile(BZZZLjava/lang/String;ZBBZ)V
    :try_end_fc
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_fc} :catch_fd

    .line 1628
    goto :goto_103

    .line 1626
    :catch_fd
    move-exception v2

    .line 1627
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Wos HIDL Exception:"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1630
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_103
    :goto_103
    return-void
.end method

.method private notifyMalVoiceState(II)V
    .registers 11
    .param p1, "simIdx"    # I
    .param p2, "mdIdx"    # I

    .line 1727
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    const-string v1, "WifiOffloadService"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    .line 1728
    const-string v0, "notifyMalVoiceState return directly due to MAL isn\'t ready yet."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    return-void

    .line 1732
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeSetVoiceState simIdx: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mdIdx: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsCurVoiceRoaming: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsCurVoiceRoaming:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mVoiceRadioTechnology: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mVoiceRadioTechnology:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mVoiceRegState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mVoiceRegState:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1738
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1740
    :try_start_53
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1741
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsCurVoiceRoaming:[Z

    aget-boolean v5, v0, p1

    new-instance v0, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mVoiceRadioTechnology:[I

    aget v6, v6, p1

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 1742
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    new-instance v0, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mVoiceRegState:[I

    aget v7, v7, p1

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 1743
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v7

    .line 1740
    invoke-interface/range {v2 .. v7}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeSetVoiceState(BBZBB)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_88} :catch_89

    .line 1746
    goto :goto_8f

    .line 1744
    :catch_89
    move-exception v0

    .line 1745
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Wos HIDL Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1748
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8f
    :goto_8f
    return-void
.end method

.method private notifyMalWfcSupported(I)V
    .registers 6
    .param p1, "simId"    # I

    .line 1895
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    const-string v1, "WifiOffloadService"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    .line 1896
    const-string v0, "notifyMalWfcSupported return directly due to MAL isn\'t ready yet."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    return-void

    .line 1900
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMalWfcSupported: simId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", supported= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsSimWfcSupported:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isEnabled= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWfcEnabled:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1902
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsSimWfcSupported:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWfcEnabled:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    .line 1903
    .local v0, "res":I
    :goto_48
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1905
    :try_start_4e
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1906
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    .line 1905
    invoke-interface {v2, v3, v0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeSetWfcSupported(BI)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_5c} :catch_5d

    .line 1909
    goto :goto_63

    .line 1907
    :catch_5d
    move-exception v2

    .line 1908
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Wos HIDL Exception:"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1911
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_63
    :goto_63
    return-void
.end method

.method private notifyMalWifiQuality(II)V
    .registers 6
    .param p1, "rssi"    # I
    .param p2, "snr"    # I

    .line 1879
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    const-string v1, "WifiOffloadService"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    .line 1880
    const-string v0, "notifyMalWifiQuality return directly due to MAL isn\'t ready yet."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    return-void

    .line 1884
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMalWifiQuality rssi: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " snr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1885
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1887
    :try_start_2f
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeSetWifiQuality(II)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_35

    .line 1890
    goto :goto_3b

    .line 1888
    :catch_35
    move-exception v0

    .line 1889
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Wos HIDL Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1892
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3b
    :goto_3b
    return-void
.end method

.method private notifyMalWifiState()V
    .registers 10

    .line 1633
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->allowWfcInAirplaneMode()Z

    move-result v0

    .line 1634
    .local v0, "wfcInApMode":Z
    const-string v1, "WifiOffloadService"

    if-nez v0, :cond_1e

    .line 1635
    const-string v2, "Do not allowWfcInAirplaneMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHasWiFiEnabledPending:Z

    if-nez v2, :cond_1d

    .line 1637
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHasWiFiEnabledPending:Z

    .line 1638
    const-string v2, "notifyMalWifiState wifi enabled pending by allowWfcInAirplaneMode."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_1d
    return-void

    .line 1643
    :cond_1e
    iget v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mNativeMalState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_29

    .line 1644
    const-string v2, "notifyMalWifiState return directly due to MAL isn\'t ready yet."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    return-void

    .line 1648
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMalWifiState mIsWifiConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIfaceName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIfName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mWifiIpv4Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv4Address:Ljava/lang/String;

    .line 1650
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mWifiIpv6Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv6Address:Ljava/lang/String;

    .line 1651
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mWifiApMac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiApMac:Ljava/lang/String;

    .line 1652
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1648
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1654
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 1656
    :try_start_79
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    iget-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z

    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIfName:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv4Address:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv6Address:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiApMac:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeSetWifiStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_88} :catch_89

    .line 1660
    goto :goto_8f

    .line 1658
    :catch_89
    move-exception v2

    .line 1659
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Wos HIDL Exception:"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1662
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_8f
    :goto_8f
    return-void
.end method

.method private notifyOnHandover(III)V
    .registers 8
    .param p1, "simIdx"    # I
    .param p2, "stage"    # I
    .param p3, "ratType"    # I

    .line 2384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandover simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2385
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2b

    .line 2386
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRatType:[I

    aput p3, v0, p1

    .line 2388
    :cond_2b
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2389
    .local v0, "i":I
    :goto_31
    if-lez v0, :cond_4a

    .line 2390
    add-int/lit8 v0, v0, -0x1

    .line 2392
    :try_start_35
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/wfo/IWifiOffloadListener;->onHandover(III)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_40} :catch_41

    goto :goto_49

    .line 2393
    :catch_41
    move-exception v1

    .line 2396
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiOffloadService"

    const-string v3, "onHandover: RemoteException occurs!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_49
    goto :goto_31

    .line 2399
    :cond_4a
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2400
    return-void
.end method

.method private notifyOnRequestImsSwitch(IZ)V
    .registers 7
    .param p1, "simIdx"    # I
    .param p2, "isImsOn"    # Z

    .line 2417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestImsSwitch simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isImsOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2419
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2420
    .local v0, "i":I
    :goto_22
    if-lez v0, :cond_3b

    .line 2421
    add-int/lit8 v0, v0, -0x1

    .line 2423
    :try_start_26
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/wfo/IWifiOffloadListener;->onRequestImsSwitch(IZ)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_31} :catch_32

    goto :goto_3a

    .line 2424
    :catch_32
    move-exception v1

    .line 2427
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiOffloadService"

    const-string v3, "onRequestImsSwitch: RemoteException occurs!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3a
    goto :goto_22

    .line 2430
    :cond_3b
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2431
    return-void
.end method

.method private notifyOnRoveOut(IZI)V
    .registers 8
    .param p1, "simIdx"    # I
    .param p2, "roveOut"    # Z
    .param p3, "rssi"    # I

    .line 2403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRoveOut simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " roveOut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " rssi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2404
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2405
    .local v0, "i":I
    :goto_2a
    if-lez v0, :cond_43

    .line 2406
    add-int/lit8 v0, v0, -0x1

    .line 2408
    :try_start_2e
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/wfo/IWifiOffloadListener;->onRoveOut(IZI)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_42

    .line 2409
    :catch_3a
    move-exception v1

    .line 2410
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiOffloadService"

    const-string v3, "onRoveOut: RemoteException occurs!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_42
    goto :goto_2a

    .line 2413
    :cond_43
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2414
    return-void
.end method

.method private notifyPowerOnModem(Z)V
    .registers 5
    .param p1, "isModemOn"    # Z

    .line 2207
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2208
    const-string v0, "modem always on, no need to control it!"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2209
    return-void

    .line 2212
    :cond_c
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_18

    .line 2213
    const-string v0, "WifiOffloadService"

    const-string v1, "context is null, can\'t control modem!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    return-void

    .line 2217
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mediatek.intent.action.WFC_POWER_ON_MODEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2218
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mediatek:POWER_ON_MODEM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2219
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPowerOnModem power:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2221
    return-void
.end method

.method private onLost()V
    .registers 1

    .line 1940
    return-void
.end method

.method private onUnavailable()V
    .registers 1

    .line 1947
    return-void
.end method

.method private registerForBroadcast()V
    .registers 4

    .line 1327
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1328
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1329
    const-string v1, "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1330
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1331
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1332
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1333
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1334
    const-string v1, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1335
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1336
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1337
    return-void
.end method

.method private requestLocationFromNetwork(I)Z
    .registers 11
    .param p1, "simIdx"    # I

    .line 2445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestLocationFromNetwork simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2446
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    const-string v2, "WifiOffloadService"

    if-nez v0, :cond_21

    .line 2447
    const-string v0, "requestLocationFromNetwork: empty locationManager, return"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    return v1

    .line 2451
    :cond_21
    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 2452
    const-string v0, "requestLocationFromNetwork:this system has no networkProvider implementation!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    return v1

    .line 2456
    :cond_2f
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocationListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;

    .line 2457
    .local v0, "locationListener":Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;
    if-nez v0, :cond_4c

    .line 2458
    new-instance v1, Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V

    move-object v0, v1

    .line 2459
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocationListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    :cond_4c
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v4, "network"

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 2463
    const-string v1, "requestLocationFromNetwork: request networkLocation update"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2464
    const/4 v1, 0x1

    return v1
.end method

.method private setupCallbacksForWifiStatus()V
    .registers 4

    .line 2055
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_c

    .line 2056
    const-string v0, "WifiOffloadService"

    const-string v1, "Unexpected error, mConnectivityManager=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    return-void

    .line 2060
    :cond_c
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 2061
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 2062
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 2063
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 2064
    .local v0, "request":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v2, Lcom/mediatek/wfo/impl/WifiOffloadService$6;

    invoke-direct {v2, p0}, Lcom/mediatek/wfo/impl/WifiOffloadService$6;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2127
    return-void
.end method

.method private setupImsConfigFeatureValueMonitoring()V
    .registers 4

    .line 2130
    const-string v0, "setupImsConfigFeatureValueMonitoring()"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2132
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2133
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mFeatureValueReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2134
    return-void
.end method

.method private updateDataRoamingSetting()V
    .registers 4

    .line 1508
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getDataRoamingSetting()I

    move-result v0

    .line 1509
    .local v0, "isDataRoamingEnabled":I
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDataRoamingEnabled:I

    if-eq v0, v1, :cond_15

    .line 1510
    iput v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDataRoamingEnabled:I

    .line 1511
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1513
    :cond_15
    return-void
.end method

.method private updateFeatureValue()V
    .registers 9

    .line 2308
    const-string v0, "persist.vendor.mims_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2309
    .local v0, "multiIMSSupportNum":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multiIMSSupportNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2311
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    iget v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSimCount:I

    if-ge v2, v3, :cond_92

    .line 2312
    const/4 v3, 0x0

    .line 2313
    .local v3, "propValueBit":I
    const/4 v4, 0x1

    if-le v0, v4, :cond_25

    .line 2314
    move v3, v2

    .line 2316
    :cond_25
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVolteEnabled:[Z

    .line 2317
    const-string v6, "persist.vendor.mtk.volte.enable"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    shl-int v7, v4, v3

    and-int/2addr v6, v7

    if-lez v6, :cond_34

    move v6, v4

    goto :goto_35

    :cond_34
    move v6, v1

    :goto_35
    aput-boolean v6, v5, v2

    .line 2318
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWfcEnabled:[Z

    .line 2319
    const-string v6, "persist.vendor.mtk.wfc.enable"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    shl-int v7, v4, v3

    and-int/2addr v6, v7

    if-lez v6, :cond_46

    move v6, v4

    goto :goto_47

    :cond_46
    move v6, v1

    :goto_47
    aput-boolean v6, v5, v2

    .line 2320
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsVilteEnabled:[Z

    .line 2321
    const-string v6, "persist.vendor.mtk.ims.video.enable"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    shl-int v7, v4, v3

    and-int/2addr v6, v7

    if-lez v6, :cond_57

    goto :goto_58

    :cond_57
    move v4, v1

    :goto_58
    aput-boolean v4, v5, v2

    .line 2323
    :try_start_5a
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 2324
    .local v4, "subIds":[I
    const/4 v5, -0x1

    .line 2325
    .local v5, "subId":I
    array-length v6, v4

    if-eqz v6, :cond_65

    .line 2326
    aget v6, v4, v1

    move v5, v6

    .line 2328
    :cond_65
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAllowTurnOffIms:[Z

    const-string v7, "carrier_allow_turnoff_ims_bool"

    invoke-direct {p0, v7, v5}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v7

    aput-boolean v7, v6, v2
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6f} :catch_70

    .line 2332
    .end local v4    # "subIds":[I
    .end local v5    # "subId":I
    goto :goto_8f

    .line 2330
    :catch_70
    move-exception v4

    .line 2331
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get CARRIER_ALLOW_TURNOFF_IMS_BOOL for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " failed-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WifiOffloadService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    .end local v3    # "propValueBit":I
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2334
    .end local v2    # "i":I
    :cond_92
    return-void
.end method

.method private updateIsAllowTurnOffIms(II)V
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .line 1578
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAllowTurnOffIms:[Z

    const-string v1, "carrier_allow_turnoff_ims_bool"

    invoke-direct {p0, v1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v1

    aput-boolean v1, v0, p1

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIsAllowTurnOffIms(), phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAllowTurnOffIms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsAllowTurnOffIms:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1584
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v1, 0x14

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    .line 1589
    goto :goto_62

    .line 1586
    :catch_43
    move-exception v0

    .line 1587
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get CARRIER_ALLOW_TURNOFF_IMS_BOOL for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " failed-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiOffloadService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_62
    return-void
.end method

.method private updateLastRssi()V
    .registers 3

    .line 2577
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_c

    .line 2578
    const-string v0, "WifiOffloadService"

    const-string v1, "updateLastRssi(): WifiManager null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    return-void

    .line 2582
    :cond_c
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 2583
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_18

    .line 2584
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLastRssi:I

    .line 2586
    :cond_18
    return-void
.end method

.method private updateServiceState(ILandroid/telephony/ServiceState;)V
    .registers 11
    .param p1, "subId"    # I
    .param p2, "state"    # Landroid/telephony/ServiceState;

    .line 1517
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    .line 1518
    .local v0, "isDataRoaming":Z
    const/4 v1, 0x0

    .line 1519
    .local v1, "radioTechnology":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 1521
    .local v2, "regPsState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v2, :cond_2b

    .line 1522
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v3

    .line 1524
    .local v3, "accessNetworkTechnology":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccessNetworkTechnology "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WifiOffloadService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    invoke-static {v3}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v1

    .line 1528
    .end local v3    # "accessNetworkTechnology":I
    :cond_2b
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    .line 1530
    .local v3, "dataRegState":I
    const/16 v4, 0x12

    if-ne v1, v4, :cond_34

    .line 1531
    const/4 v3, 0x1

    .line 1534
    :cond_34
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 1535
    .local v4, "simId":I
    invoke-direct {p0, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getModemIdFromPhoneId(I)I

    move-result v5

    .line 1537
    .local v5, "mdIdx":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignore for sim: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " sub: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    return-void

    .line 1540
    :cond_5c
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsCurDataRoaming:[Z

    aget-boolean v7, v6, v4

    if-ne v7, v0, :cond_6e

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRadioTechnology:[I

    aget v7, v7, v4

    if-ne v7, v1, :cond_6e

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDataRegState:[I

    aget v7, v7, v4

    if-eq v7, v3, :cond_7b

    .line 1543
    :cond_6e
    aput-boolean v0, v6, v4

    .line 1544
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRadioTechnology:[I

    aput v1, v6, v4

    .line 1545
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDataRegState:[I

    aput v3, v6, v4

    .line 1546
    invoke-direct {p0, v4, v5}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalServiceState(II)V

    .line 1549
    :cond_7b
    return-void
.end method

.method private updateServiceStateListeners()V
    .registers 9

    .line 1085
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string v1, "WifiOffloadService"

    if-nez v0, :cond_c

    .line 1086
    const-string v0, "Unexpected error, mSubscriptionManager=null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    return-void

    .line 1089
    :cond_c
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_16

    .line 1090
    const-string v0, "Unexpected error, mTelephonyManager=null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return-void

    .line 1094
    :cond_16
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mPhoneServicesStateListeners:Ljava/util/Map;

    .line 1095
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1096
    .local v0, "unUsedSubscriptions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 1098
    .local v1, "slist":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_97

    .line 1099
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 1100
    .local v3, "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 1101
    .local v4, "subId":I
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_76

    .line 1103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create ServicesStateListener for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1104
    new-instance v5, Lcom/mediatek/wfo/impl/WifiOffloadService$5;

    invoke-direct {v5, p0}, Lcom/mediatek/wfo/impl/WifiOffloadService$5;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;)V

    .line 1118
    .local v5, "listener":Landroid/telephony/PhoneStateListener;
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1120
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    .end local v5    # "listener":Landroid/telephony/PhoneStateListener;
    goto :goto_96

    .line 1123
    :cond_76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ServicesStateListener-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is used."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1126
    .end local v3    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "subId":I
    :goto_96
    goto :goto_2d

    .line 1129
    :cond_97
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cf

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1130
    .local v3, "key":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove unused ServicesStateListener for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1131
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PhoneStateListener;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1132
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    .end local v3    # "key":Ljava/lang/Integer;
    goto :goto_9b

    .line 1134
    :cond_cf
    return-void
.end method

.method private updateVoiceState(ILandroid/telephony/ServiceState;)V
    .registers 10
    .param p1, "subId"    # I
    .param p2, "state"    # Landroid/telephony/ServiceState;

    .line 1554
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    .line 1555
    .local v0, "isVoiceRoaming":Z
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    .line 1556
    .local v1, "voiceRadioTechnology":I
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    .line 1558
    .local v2, "voiceRegState":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 1559
    .local v3, "simId":I
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getModemIdFromPhoneId(I)I

    move-result v4

    .line 1561
    .local v4, "mdIdx":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore for sim: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " sub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    return-void

    .line 1564
    :cond_34
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsCurVoiceRoaming:[Z

    aget-boolean v6, v5, v3

    if-ne v6, v0, :cond_46

    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mVoiceRadioTechnology:[I

    aget v6, v6, v3

    if-ne v6, v1, :cond_46

    iget-object v6, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mVoiceRegState:[I

    aget v6, v6, v3

    if-eq v6, v2, :cond_53

    .line 1568
    :cond_46
    aput-boolean v0, v5, v3

    .line 1569
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mVoiceRadioTechnology:[I

    aput v1, v5, v3

    .line 1570
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mVoiceRegState:[I

    aput v2, v5, v3

    .line 1572
    invoke-direct {p0, v3, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalVoiceState(II)V

    .line 1574
    :cond_53
    return-void
.end method

.method private updateWifiConnectedInfo(I)V
    .registers 18
    .param p1, "isConnected"    # I

    .line 1400
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    .line 1402
    .local v3, "changed":Z
    const/4 v0, 0x0

    if-nez v2, :cond_21

    .line 1403
    iget-boolean v4, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z

    if-eqz v4, :cond_fd

    .line 1404
    iput-boolean v0, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z

    .line 1405
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiApMac:Ljava/lang/String;

    .line 1406
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv4Address:Ljava/lang/String;

    .line 1407
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv6Address:Ljava/lang/String;

    .line 1408
    const-string v4, ""

    iput-object v4, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIfName:Ljava/lang/String;

    .line 1409
    const/4 v3, 0x1

    goto/16 :goto_fd

    .line 1412
    :cond_21
    const-string v4, ""

    .local v4, "wifiApMac":Ljava/lang/String;
    const-string v5, ""

    .local v5, "ipv4Address":Ljava/lang/String;
    const-string v6, ""

    .local v6, "ipv6Address":Ljava/lang/String;
    const-string v7, ""

    .line 1413
    .local v7, "ifName":Ljava/lang/String;
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z

    .line 1416
    const/4 v8, 0x0

    .line 1417
    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v9, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_36

    .line 1418
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    goto :goto_47

    .line 1420
    :cond_36
    iget-object v9, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v10, 0x12

    invoke-virtual {v9, v10, v2, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 1422
    .local v9, "msg":Landroid/os/Message;
    iget-object v10, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1423
    :try_start_41
    iget-object v11, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    monitor-exit v10
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_10a

    .line 1428
    .end local v9    # "msg":Landroid/os/Message;
    :goto_47
    if-eqz v8, :cond_5e

    .line 1429
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    .line 1430
    iget-object v9, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiApMac:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5e

    .line 1431
    if-nez v4, :cond_5a

    const-string v9, ""

    goto :goto_5b

    :cond_5a
    move-object v9, v4

    :goto_5b
    iput-object v9, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiApMac:Ljava/lang/String;

    .line 1432
    const/4 v3, 0x1

    .line 1438
    :cond_5e
    iget-object v9, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v9

    array-length v10, v9

    move v11, v0

    :goto_66
    if-ge v11, v10, :cond_c9

    aget-object v12, v9, v11

    .line 1439
    .local v12, "nw":Landroid/net/Network;
    iget-object v13, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v13, v12}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v13

    .line 1441
    .local v13, "prop":Landroid/net/LinkProperties;
    if-eqz v13, :cond_c5

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_c5

    .line 1442
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "wlan"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_85

    .line 1443
    goto :goto_c5

    .line 1445
    :cond_85
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/net/InetAddress;

    .line 1446
    .local v15, "address":Ljava/net/InetAddress;
    instance-of v0, v15, Ljava/net/Inet4Address;

    if-eqz v0, :cond_a9

    invoke-virtual {v15}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 1447
    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .end local v5    # "ipv4Address":Ljava/lang/String;
    .local v0, "ipv4Address":Ljava/lang/String;
    goto :goto_be

    .line 1448
    .end local v0    # "ipv4Address":Ljava/lang/String;
    .restart local v5    # "ipv4Address":Ljava/lang/String;
    :cond_a9
    instance-of v0, v15, Ljava/net/Inet6Address;

    if-eqz v0, :cond_be

    invoke-virtual {v15}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_be

    .line 1449
    invoke-virtual {v15}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_be

    .line 1452
    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1459
    .end local v15    # "address":Ljava/net/InetAddress;
    :cond_be
    :goto_be
    const/4 v0, 0x0

    goto :goto_8d

    .line 1461
    :cond_c0
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 1438
    .end local v12    # "nw":Landroid/net/Network;
    .end local v13    # "prop":Landroid/net/LinkProperties;
    :cond_c5
    :goto_c5
    add-int/lit8 v11, v11, 0x1

    const/4 v0, 0x0

    goto :goto_66

    .line 1463
    :cond_c9
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv4Address:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 1464
    if-nez v5, :cond_d6

    const-string v0, ""

    goto :goto_d7

    :cond_d6
    move-object v0, v5

    :goto_d7
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv4Address:Ljava/lang/String;

    .line 1465
    const/4 v3, 0x1

    .line 1467
    :cond_da
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv6Address:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    .line 1468
    if-nez v6, :cond_e7

    const-string v0, ""

    goto :goto_e8

    :cond_e7
    move-object v0, v6

    :goto_e8
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiIpv6Address:Ljava/lang/String;

    .line 1469
    const/4 v0, 0x1

    move v3, v0

    .line 1471
    :cond_ec
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIfName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 1472
    if-nez v7, :cond_f9

    const-string v0, ""

    goto :goto_fa

    :cond_f9
    move-object v0, v7

    :goto_fa
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIfName:Ljava/lang/String;

    .line 1473
    const/4 v3, 0x1

    .line 1476
    .end local v4    # "wifiApMac":Ljava/lang/String;
    .end local v5    # "ipv4Address":Ljava/lang/String;
    .end local v6    # "ipv6Address":Ljava/lang/String;
    .end local v7    # "ifName":Ljava/lang/String;
    .end local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_fd
    :goto_fd
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkIfShowNoInternetError(Z)V

    .line 1479
    invoke-direct {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkIfstartWifiScan(Z)V

    .line 1481
    if-eqz v3, :cond_109

    .line 1482
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalWifiState()V

    .line 1484
    :cond_109
    return-void

    .line 1424
    .restart local v4    # "wifiApMac":Ljava/lang/String;
    .restart local v5    # "ipv4Address":Ljava/lang/String;
    .restart local v6    # "ipv6Address":Ljava/lang/String;
    .restart local v7    # "ifName":Ljava/lang/String;
    .restart local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v9    # "msg":Landroid/os/Message;
    :catchall_10a
    move-exception v0

    :try_start_10b
    monitor-exit v10
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    throw v0
.end method

.method private validateMccMnc([Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .param p1, "allowList"    # [Ljava/lang/String;

    .line 1296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1298
    .local v0, "validList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_3a

    aget-object v4, p1, v3

    .line 1301
    .local v4, "mccmnc":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_1b

    .line 1302
    goto :goto_37

    .line 1306
    :cond_1b
    const/4 v5, 0x1

    .line 1307
    .local v5, "valid":Z
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_22
    if-ge v8, v7, :cond_31

    aget-char v9, v6, v8

    .line 1308
    .local v9, "c":C
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_2e

    .line 1309
    const/4 v5, 0x0

    .line 1310
    goto :goto_31

    .line 1307
    .end local v9    # "c":C
    :cond_2e
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 1313
    :cond_31
    :goto_31
    if-nez v5, :cond_34

    .line 1314
    goto :goto_37

    .line 1318
    :cond_34
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    .end local v4    # "mccmnc":Ljava/lang/String;
    .end local v5    # "valid":Z
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1321
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validateMccMnc(), output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_56

    const/4 v1, 0x0

    goto :goto_62

    :cond_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_62
    return-object v1
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 1029
    const-string v0, "close()"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    .line 1031
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1033
    :cond_e
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkHidlService()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1035
    :try_start_14
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    invoke-interface {v0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeClose()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 1038
    goto :goto_22

    .line 1036
    :catch_1a
    move-exception v0

    .line 1037
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiOffloadService"

    const-string v2, "Wos HIDL Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    return-void
.end method

.method public factoryReset()V
    .registers 3

    .line 1275
    const-string v0, "WifiOffloadService"

    const-string v1, "factoryReset() isn\'t supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    return-void
.end method

.method public getDisconnectCause(I)Lcom/mediatek/wfo/DisconnectCause;
    .registers 4
    .param p1, "simIdx"    # I

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisconnectCause: invalid SIM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    return-object v0

    .line 1185
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect cause is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMccMncAllowList(I)[Ljava/lang/String;
    .registers 9
    .param p1, "mode"    # I

    .line 1240
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 1241
    .local v1, "result":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMccMncAllowList: mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1242
    packed-switch p1, :pswitch_data_44

    goto :goto_42

    .line 1252
    :pswitch_1b
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMccMncFromResource()[Ljava/lang/String;

    move-result-object v2

    .line 1253
    .local v2, "fromRes":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMccMncFromSystemProperty()[Ljava/lang/String;

    move-result-object v3

    .line 1255
    .local v3, "fromProperties":[Ljava/lang/String;
    if-eqz v3, :cond_27

    array-length v4, v3

    goto :goto_28

    :cond_27
    move v4, v0

    .line 1257
    .local v4, "propLength":I
    :goto_28
    array-length v5, v2

    add-int/2addr v5, v4

    new-array v5, v5, [Ljava/lang/String;

    .line 1258
    .local v5, "total":[Ljava/lang/String;
    array-length v6, v2

    invoke-static {v2, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1260
    if-eqz v4, :cond_36

    .line 1261
    array-length v6, v2

    invoke-static {v3, v0, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1264
    :cond_36
    move-object v1, v5

    .line 1265
    goto :goto_42

    .line 1248
    .end local v2    # "fromRes":[Ljava/lang/String;
    .end local v3    # "fromProperties":[Ljava/lang/String;
    .end local v4    # "propLength":I
    .end local v5    # "total":[Ljava/lang/String;
    :pswitch_38
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMccMncFromSystemProperty()[Ljava/lang/String;

    move-result-object v1

    .line 1250
    goto :goto_42

    .line 1244
    :pswitch_3d
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->getMccMncFromResource()[Ljava/lang/String;

    move-result-object v1

    .line 1245
    nop

    .line 1270
    :goto_42
    return-object v1

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_38
        :pswitch_1b
    .end packed-switch
.end method

.method public getRatType(I)I
    .registers 4
    .param p1, "simIdx"    # I

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRatType: invalid SIM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1174
    const/4 v0, 0x0

    return v0

    .line 1177
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rat type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRatType:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRatType:[I

    aget v0, v0, p1

    return v0
.end method

.method public isWifiConnected()Z
    .registers 3

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWifiConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1192
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWifiConnected:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2571
    sget-boolean v0, Lcom/mediatek/wfo/impl/WifiOffloadService;->USR_BUILD:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/mediatek/wfo/impl/WifiOffloadService;->TELDBG:Z

    if-eqz v0, :cond_d

    .line 2572
    :cond_8
    const-string v0, "WifiOffloadService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    :cond_d
    return-void
.end method

.method protected onDisconnectCauseNotify(III)V
    .registers 6
    .param p1, "simIdx"    # I
    .param p2, "lastErr"    # I
    .param p3, "lastSubErr"    # I

    .line 2024
    const-string v0, "onDisconnectCauseNotify: invalid SIM id"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2026
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnectCauseNotify: simIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastErr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastSubErr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2029
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mDisconnectCause:[Lcom/mediatek/wfo/DisconnectCause;

    new-instance v1, Lcom/mediatek/wfo/DisconnectCause;

    invoke-direct {v1, p2, p3}, Lcom/mediatek/wfo/DisconnectCause;-><init>(II)V

    aput-object v1, v0, p1

    .line 2030
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v0, p2}, Lcom/mediatek/wfo/op/IWosExt;->showPDNErrorMessages(I)V

    .line 2031
    return-void
.end method

.method protected onHandover(III)V
    .registers 7
    .param p1, "simIdx"    # I
    .param p2, "stage"    # I
    .param p3, "ratType"    # I

    .line 1919
    new-instance v0, Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;III)V

    .line 1920
    .local v0, "hoMsg":Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1921
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1922
    return-void
.end method

.method protected onMalReset()V
    .registers 3

    .line 2016
    const-string v0, "onMalReset"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2017
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2018
    return-void
.end method

.method protected onPdnRanTypeChanged(III)V
    .registers 6
    .param p1, "simIdx"    # I
    .param p2, "interfaceId"    # I
    .param p3, "ranType"    # I

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPdnRanTypeChanged simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " interfaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ranType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2004
    if-eqz p3, :cond_2f

    .line 2007
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRatType:[I

    aput p3, v0, p1

    .line 2008
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v0}, Lcom/mediatek/wfo/op/IWosExt;->clearPDNErrorMessages()V

    .line 2010
    :cond_2f
    return-void
.end method

.method protected onPdnStateChanged(IZ)V
    .registers 7
    .param p1, "simIdx"    # I
    .param p2, "active"    # Z

    .line 1954
    const/4 v0, 0x0

    .line 1955
    .local v0, "preWifiPdnExited":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPdnStateChanged simIdx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1958
    const-string v1, "onPdnStateChanged: invalid SIM id"

    invoke-direct {p0, p1, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    return-void

    .line 1960
    :cond_26
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_31

    .line 1961
    const-string v1, "WifiOffloadService"

    const-string v2, "Unexpected error, mWifiLock is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_31
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isWifiPdnExisted()Z

    move-result v0

    .line 1966
    const/4 v1, 0x0

    if-eqz p2, :cond_3e

    .line 1967
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiPdnExisted:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    goto :goto_42

    .line 1969
    :cond_3e
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiPdnExisted:[Z

    aput-boolean v1, v2, p1

    .line 1973
    :goto_42
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkIfstartWifiScan(Z)V

    .line 1975
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->isWifiPdnExisted()Z

    move-result v2

    if-eq v0, v2, :cond_50

    .line 1977
    sget-object v2, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;->MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    invoke-direct {p0, v2, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;I)V

    .line 1980
    :cond_50
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1981
    return-void
.end method

.method protected onRequestImsSwitch(IZ)V
    .registers 5
    .param p1, "simIdx"    # I
    .param p2, "isImsOn"    # Z

    .line 2041
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2042
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2043
    return-void
.end method

.method protected onRequestLocationInfo(I)V
    .registers 5
    .param p1, "simIdx"    # I

    .line 2046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestLocationInfo simIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2047
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2048
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2049
    return-void
.end method

.method protected onRequestSetWifiDisabled(I)V
    .registers 4
    .param p1, "pdnCount"    # I

    .line 2037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestSetWifiDisabled pdnCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2038
    return-void
.end method

.method protected onRoveOut(IZI)V
    .registers 7
    .param p1, "simIdx"    # I
    .param p2, "roveOut"    # Z
    .param p3, "rssi"    # I

    .line 1930
    new-instance v0, Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;-><init>(Lcom/mediatek/wfo/impl/WifiOffloadService;IZI)V

    .line 1931
    .local v0, "roMsg":Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1932
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1933
    return-void
.end method

.method protected onRssiMonitorRequest(II[I)V
    .registers 9
    .param p1, "simId"    # I
    .param p2, "size"    # I
    .param p3, "rssiThresholds"    # [I

    .line 2140
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->registerRssiMonitoring(II[I)V

    .line 2143
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->updateLastRssi()V

    .line 2144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRssiMonitorRequest() rssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLastRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 2146
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mLastRssi:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2149
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2150
    return-void
.end method

.method public registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/mediatek/wfo/IWifiOffloadListener;

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerForHandoverEvent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/mediatek/wfo/IWifiOffloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1140
    return-void
.end method

.method public setEpdgFqdn(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "simIdx"    # I
    .param p2, "fqdn"    # Ljava/lang/String;
    .param p3, "wfcEnabled"    # Z

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEpdgFqdn: invalid SIM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 1199
    :cond_18
    if-nez p2, :cond_20

    .line 1200
    const-string v0, "fqdn is null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1201
    return-void

    .line 1204
    :cond_20
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mFqdn:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 1205
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mIsWfcEnabled:[Z

    aput-boolean p3, v0, p1

    .line 1206
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v1, 0x14

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1208
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1209
    return-void
.end method

.method public setMccMncAllowList([Ljava/lang/String;)Z
    .registers 4
    .param p1, "allowList"    # [Ljava/lang/String;

    .line 1229
    const-string v0, "WifiOffloadService"

    const-string v1, "Not support setMccMncAllowList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiOff()Z
    .registers 2

    .line 1281
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/mediatek/wfo/IWifiOffloadListener;

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterForHandoverEvent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/mediatek/wfo/IWifiOffloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1146
    return-void
.end method

.method public updateCallState(IIII)V
    .registers 5
    .param p1, "simIdx"    # I
    .param p2, "callId"    # I
    .param p3, "callType"    # I
    .param p4, "callState"    # I

    .line 1213
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalCallState(IIII)V

    .line 1214
    return-void
.end method

.method public updateRadioState(II)V
    .registers 4
    .param p1, "simIdx"    # I
    .param p2, "radioState"    # I

    .line 1218
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService;->mRadioState:[I

    aput p2, v0, p1

    .line 1219
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->notifyMalRadioState(I)V

    .line 1220
    return-void
.end method

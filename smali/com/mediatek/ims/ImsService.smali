.class public Lcom/mediatek/ims/ImsService;
.super Ljava/lang/Object;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;,
        Lcom/mediatek/ims/ImsService$MyHandler;,
        Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;,
        Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;,
        Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    }
.end annotation


# static fields
.field private static final CONFIG_EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final DBG:Z = true

.field private static final ENGLOAD:Z

.field protected static final EVENT_CALL_ADDITIONAL_INFO_INDICATION:I = 0x24

.field protected static final EVENT_CALL_INFO_INDICATION:I = 0x8

.field protected static final EVENT_DETAIL_IMS_REGISTRATION_IND:I = 0x26

.field protected static final EVENT_IMS_DEREG_DONE:I = 0x10

.field protected static final EVENT_IMS_DEREG_URC:I = 0x11

.field protected static final EVENT_IMS_DISABLED_URC:I = 0x5

.field protected static final EVENT_IMS_DISABLING_URC:I = 0xc

.field protected static final EVENT_IMS_ENABLED_URC:I = 0xb

.field protected static final EVENT_IMS_ENABLING_URC:I = 0xa

.field protected static final EVENT_IMS_NOTIFICATION_INIT:I = 0x27

.field private static final EVENT_IMS_REGISTRATION_INFO:I = 0x1

.field protected static final EVENT_IMS_REGISTRATION_STATUS_REPORT_IND:I = 0x25

.field protected static final EVENT_IMS_RTP_INFO_URC:I = 0x14

.field protected static final EVENT_IMS_SMS_NEW_CDMA_SMS:I = 0x20

.field protected static final EVENT_IMS_SMS_NEW_SMS:I = 0x1f

.field protected static final EVENT_IMS_SMS_STATUS_REPORT:I = 0x1e

.field protected static final EVENT_IMS_SUPPORT_ECC_URC:I = 0x19

.field protected static final EVENT_IMS_VOLTE_SETTING_URC:I = 0x16

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x7

.field protected static final EVENT_INIT_CALL_SESSION_PROXY:I = 0x1b

.field protected static final EVENT_ON_USSI:I = 0xf

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0x2

.field protected static final EVENT_RADIO_OFF:I = 0x12

.field protected static final EVENT_RADIO_ON:I = 0x13

.field protected static final EVENT_READY_TO_RECEIVE_PENDING_IND:I = 0x21

.field protected static final EVENT_RUN_GBA:I = 0x17

.field protected static final EVENT_SELF_IDENTIFY_UPDATE:I = 0x18

.field protected static final EVENT_SEND_SMS_DONE:I = 0x1c

.field protected static final EVENT_SET_IMS_DISABLE_DONE:I = 0x4

.field protected static final EVENT_SET_IMS_ENABLED_DONE:I = 0x3

.field protected static final EVENT_SET_IMS_REGISTRATION_REPORT_DONE:I = 0x15

.field protected static final EVENT_SIP_CODE_INDICATION:I = 0xd

.field protected static final EVENT_SIP_CODE_INDICATION_DEREG:I = 0xe

.field protected static final EVENT_START_GBA_SERVICE:I = 0x1a

.field protected static final EVENT_TEST_QUERY_VOPS_STATUS:I = 0x23

.field protected static final EVENT_UT_CAPABILITY_CHANGE:I = 0x1d

.field private static final EVENT_VIRTUAL_SIM_ON:I = 0x6

.field protected static final EVENT_VOPS_STATUS_IND:I = 0x22

.field private static final IMSSERVICE_NOTIFICATION_NAME:Ljava/lang/CharSequence;

.field private static final IMS_ALLOW_INCOMING_CALL_INDICATION:I = 0x0

.field private static final IMS_DISALLOW_INCOMING_CALL_INDICATION:I = 0x1

.field private static final IMS_MAX_FEATURE_SUPPORT_SIZE:I = 0x6

.field private static final IMS_RCS_OVER_LTE:I = 0x2

.field private static final IMS_REG_SIP_URI_TYPE_IMSI:I = 0x1

.field private static final IMS_REG_SIP_URI_TYPE_MSISDN:I = 0x0

.field private static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field private static final IMS_SMS_OVER_LTE:I = 0x4

.field private static final IMS_SS_CMD_ERROR:I = 0x3

.field private static final IMS_SS_CMD_SUCCESS:I = 0x4

.field private static final IMS_SS_INTERRUPT_ERROR:I = 0x2

.field private static final IMS_SS_TIMEOUT_ERROR:I = 0x1

.field private static final IMS_VIDEO_OVER_LTE:I = 0x8

.field private static final IMS_VOICE_OVER_LTE:I = 0x1

.field private static final IMS_VOICE_OVER_WIFI:I = 0x10

.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static final MT_CALL_DIAL_IMS_STK:I = 0x64

.field private static final NOTIFICATION_CHANNEL:Ljava/lang/String; = "ImsService"

.field private static final PROPERTY_IMSCONFIG_FORCE_NOTIFY:Ljava/lang/String; = "vendor.ril.imsconfig.force.notify"

.field private static final PROPERTY_IMS_REG_EXTINFO:Ljava/lang/String; = "ril.ims.extinfo"

.field private static final SENLOG:Z

.field private static final VDBG:Z = false

.field protected static final mLock:Ljava/lang/Object;

.field private static mMmTelFeatureCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/mediatek/ims/ImsService;

.field private static sMtkImsRegImpl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/MtkImsRegistrationImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sMtkSSExt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/MtkSuppServExt;",
            ">;"
        }
    .end annotation
.end field

.field private static sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCapLockObj:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

.field private mExpectedImsState:[I

.field private mFeatureValueReceiver:Landroid/content/BroadcastReceiver;

.field private mGbaConnection:Landroid/content/ServiceConnection;

.field private final mHandler:[Landroid/os/Handler;

.field private mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

.field private mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

.field private mImsConfigIccid:[Ljava/lang/String;

.field private mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

.field private mImsConfigMccmnc:[Ljava/lang/String;

.field private mImsDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

.field private mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

.field private mImsEvtPkgAdapter:[Lcom/mediatek/ims/ImsEventPackageAdapter;

.field private mImsExtInfo:[I

.field private mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

.field private mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsRegInd:[Lcom/mediatek/ims/ImsRegInfo;

.field private mImsRegInfo:[I

.field private mImsRegOemPlugin:Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;

.field private mImsRegistry:Z

.field private mImsSmsListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/aidl/IImsSmsListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImsState:[I

.field private mIsImsEccSupported:[I

.field private mIsMTredirect:[Z

.field private mIsPendingMTTerminated:[Z

.field private mListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashSet<",
            "Lcom/android/ims/internal/IImsRegistrationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLockObj:Ljava/lang/Object;

.field private mLockUri:Ljava/lang/Object;

.field private mMtkListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashSet<",
            "Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

.field private mMultiEndpoints:[Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

.field private mNumOfPhones:I

.field private mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

.field private mPendingMTCallId:[Ljava/lang/String;

.field private mPendingMTSeqNum:[Ljava/lang/String;

.field private mPendingMtkImsCallSessionProxy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

.field private mRAN:[I

.field private mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

.field private mRedirectIncomingSocketId:I

.field private mRegErrorCode:[I

.field private mRegisterSubInfoChange:Z

.field private mServiceId:[I

.field private final mSubInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mTempDisableWFC:[Z

.field private mVolteEnable:[Z

.field private mVopsReport:[I

.field private mWaitFeatureChange:I

.field private mWaitSubInfoChange:[Z

.field private mWfcPdnState:[I

.field private mWfcRegErrorCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 179
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsService;->ENGLOAD:Z

    .line 180
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsService;->SENLOG:Z

    .line 186
    const-string v0, "ImsService notification"

    sput-object v0, Lcom/mediatek/ims/ImsService;->IMSSERVICE_NOTIFICATION_NAME:Ljava/lang/CharSequence;

    .line 199
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 204
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    .line 207
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    .line 380
    sput-object v0, Lcom/mediatek/ims/ImsService;->sInstance:Lcom/mediatek/ims/ImsService;

    .line 381
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsService;->mLock:Ljava/lang/Object;

    .line 3287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    .line 189
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 190
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 191
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 194
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    .line 195
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mLockUri:Ljava/lang/Object;

    .line 196
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mCapLockObj:Ljava/lang/Object;

    .line 200
    new-instance v1, Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$1;)V

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    .line 202
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    .line 210
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    .line 238
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    .line 239
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 240
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    .line 243
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:[Ljava/lang/String;

    .line 244
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMTSeqNum:[Ljava/lang/String;

    .line 376
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsSmsListener:Ljava/util/ArrayList;

    .line 385
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsService;->mRegisterSubInfoChange:Z

    .line 388
    iput v1, p0, Lcom/mediatek/ims/ImsService;->mWaitFeatureChange:I

    .line 392
    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

    .line 393
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingSocketId:I

    .line 398
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    .line 412
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsService;->mImsRegistry:Z

    .line 413
    new-instance v2, Lcom/mediatek/ims/ImsService$1;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/ImsService$1;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 718
    new-instance v2, Lcom/mediatek/ims/ImsService$2;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/ImsService$2;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mGbaConnection:Landroid/content/ServiceConnection;

    .line 3457
    new-instance v2, Lcom/mediatek/ims/ImsService$3;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/ImsService$3;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mSubInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 3482
    new-instance v2, Lcom/mediatek/ims/ImsService$4;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/ImsService$4;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mFeatureValueReceiver:Landroid/content/BroadcastReceiver;

    .line 484
    const-string v2, "init"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 485
    iput-object p1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 487
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    .line 489
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v2

    if-nez v2, :cond_0

    .line 490
    new-instance v2, Lcom/mediatek/ims/ImsAdapter;

    invoke-direct {v2, p1}, Lcom/mediatek/ims/ImsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    .line 493
    :cond_0
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v3, v2, [Lcom/mediatek/ims/ImsService$MyHandler;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    .line 494
    new-array v2, v2, [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 495
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 496
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    new-instance v5, Lcom/mediatek/ims/ImsService$MyHandler;

    invoke-direct {v5, p0, v2}, Lcom/mediatek/ims/ImsService$MyHandler;-><init>(Lcom/mediatek/ims/ImsService;I)V

    aput-object v5, v3, v2

    .line 497
    new-instance v3, Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-direct {v3, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;-><init>(Landroid/content/Context;I)V

    .line 500
    .local v3, "ril":Lcom/mediatek/ims/ril/ImsRILAdapter;
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v2

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 501
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v2

    const/16 v6, 0x12

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 502
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v2

    const/16 v6, 0x13

    invoke-virtual {v3, v5, v6, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 504
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5, v4, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 505
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsEnableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 506
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsEnableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 507
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0xc

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsDisableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 508
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsDisableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 509
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 510
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0xd

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 511
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsDeregisterComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 513
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x19

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsEccSupport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 517
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnUSSI(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 521
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsRTPInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 524
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x16

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForVolteSettingChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 526
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x25

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForImsRegStatusInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 528
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x26

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForDetailImsRegistrationInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 531
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 532
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x18

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForXuiInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 535
    :cond_1
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x1e

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 536
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x1f

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 537
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 538
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x22

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForVopsStatusInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 540
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, v2

    const/16 v5, 0x24

    invoke-virtual {v3, v4, v5, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->registerForCallAdditionalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 543
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aput-object v3, v4, v2

    .line 495
    .end local v3    # "ril":Lcom/mediatek/ims/ril/ImsRILAdapter;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 547
    .end local v2    # "i":I
    :cond_2
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    const-string v0, "Initializing"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 549
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataTracker;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {v0, p1, v2}, Lcom/mediatek/ims/internal/ImsDataTracker;-><init>(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 553
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 554
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.ims.ACTION_IMS_SIMULATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    const-string v2, "ro.vendor.mtk_ims_notification"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 560
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 565
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    .line 566
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    .line 567
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mServiceId:[I

    .line 568
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    .line 569
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mExpectedImsState:[I

    .line 570
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    .line 571
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    .line 572
    new-array v3, v2, [Lcom/mediatek/ims/ImsEcbmProxy;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    .line 573
    new-array v2, v2, [Lcom/mediatek/ims/ImsEventPackageAdapter;

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsEvtPkgAdapter:[Lcom/mediatek/ims/ImsEventPackageAdapter;

    .line 574
    new-instance v2, Lcom/mediatek/ims/ImsConfigManager;

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {v2, p1, v3}, Lcom/mediatek/ims/ImsConfigManager;-><init>(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    .line 575
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    .line 576
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    .line 577
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    .line 579
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    .line 580
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mVolteEnable:[Z

    .line 582
    new-array v3, v2, [Lcom/mediatek/ims/ImsRegInfo;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsRegInd:[Lcom/mediatek/ims/ImsRegInfo;

    .line 585
    new-array v3, v2, [Lcom/mediatek/ims/ImsCallSessionProxy;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 586
    new-array v3, v2, [Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 587
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:[Ljava/lang/String;

    .line 588
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mPendingMTSeqNum:[Ljava/lang/String;

    .line 589
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:[Z

    .line 590
    new-array v3, v2, [Landroid/telephony/ims/ImsCallProfile;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

    .line 591
    new-array v3, v2, [Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpoints:[Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    .line 592
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mIsMTredirect:[Z

    .line 593
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/mediatek/ims/ImsService;->mWfcPdnState:[I

    .line 594
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mWfcRegErrorCode:[I

    .line 596
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MtkSSExt"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 597
    .local v2, "ssHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 598
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 600
    .local v3, "sslooper":Landroid/os/Looper;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v6, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    const/4 v7, 0x3

    if-ge v5, v6, :cond_6

    .line 601
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aput v7, v6, v5

    .line 604
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aput v1, v6, v5

    .line 605
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mServiceId:[I

    add-int/lit8 v7, v5, 0x1

    aput v7, v6, v5

    .line 606
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    aput v1, v6, v5

    .line 607
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mExpectedImsState:[I

    aput v1, v6, v5

    .line 608
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    aput v1, v6, v5

    .line 609
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aput v4, v6, v5

    .line 610
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mWfcPdnState:[I

    aput v1, v6, v5

    .line 611
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mWfcRegErrorCode:[I

    aput v1, v6, v5

    .line 612
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    new-instance v7, Lcom/mediatek/ims/ImsEcbmProxy;

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v9, v9, v5

    invoke-direct {v7, v8, v9, v5}, Lcom/mediatek/ims/ImsEcbmProxy;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    aput-object v7, v6, v5

    .line 613
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    invoke-virtual {v6, v5}, Lcom/mediatek/ims/ImsConfigManager;->init(I)V

    .line 614
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    aput v1, v6, v5

    .line 615
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 616
    sget-object v6, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/mediatek/ims/MtkSuppServExt;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v5, p0, v3}, Lcom/mediatek/ims/MtkSuppServExt;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ImsService;Landroid/os/Looper;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_5
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsEvtPkgAdapter:[Lcom/mediatek/ims/ImsEventPackageAdapter;

    new-instance v7, Lcom/mediatek/ims/ImsEventPackageAdapter;

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v9, v9, v5

    iget-object v10, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v10, v10, v5

    invoke-direct {v7, v8, v9, v10, v5}, Lcom/mediatek/ims/ImsEventPackageAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    aput-object v7, v6, v5

    .line 622
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    aput-boolean v1, v6, v5

    .line 623
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mVolteEnable:[Z

    aput-boolean v1, v6, v5

    .line 625
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:[Z

    aput-boolean v1, v6, v5

    .line 626
    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mIsMTredirect:[Z

    aput-boolean v1, v6, v5

    .line 600
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 631
    .end local v5    # "i":I
    :cond_6
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v4

    const/4 v5, 0x4

    const/16 v6, 0x15

    if-nez v4, :cond_8

    .line 632
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v4

    .line 633
    .local v4, "mainPhoneId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMainCapabilityPhoneId: mainPhoneId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 636
    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v9, v9, v4

    .line 637
    invoke-virtual {v9, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 636
    invoke-interface {v8, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 638
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v6

    if-nez v6, :cond_7

    .line 639
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 640
    invoke-direct {p0, v4, v1, v7, v5}, Lcom/mediatek/ims/ImsService;->initImsAvailability(IIII)V

    .line 644
    .end local v4    # "mainPhoneId":I
    :cond_7
    goto :goto_3

    .line 645
    :cond_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 648
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v4, v4, v1

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v8, v8, v1

    .line 649
    invoke-virtual {v8, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 648
    invoke-interface {v4, v8}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 650
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v4

    if-nez v4, :cond_9

    .line 651
    invoke-direct {p0, v1, v1, v7, v5}, Lcom/mediatek/ims/ImsService;->initImsAvailability(IIII)V

    .line 645
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 659
    .end local v1    # "i":I
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    .line 660
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeExtensionPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    .line 662
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->startWfoService()V

    .line 664
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 665
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v4, v1

    aget-object v4, v4, v1

    const/16 v6, 0x21

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 668
    .end local v1    # "i":I
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getOpImsService()Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v1

    .line 669
    .local v1, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    if-eqz v1, :cond_c

    .line 670
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 671
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v6, v4

    const/16 v7, 0x27

    .line 672
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 671
    invoke-interface {v1, v4, v5, v6}, Lcom/mediatek/ims/ext/IImsServiceExt;->notifyImsServiceEvent(ILandroid/content/Context;Landroid/os/Message;)V

    .line 670
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 675
    .end local v4    # "i":I
    :cond_c
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/ImsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->setNotificationVirtual(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/ImsService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(IIZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/ImsService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(IIZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWfcPdnState:[I

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegistry:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mExpectedImsState:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/ims/ImsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Z

    .line 175
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsService;->mImsRegistry:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/ims/ImsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationOOSStateChanged(II)V

    return-void
.end method

.method static synthetic access$2302(Lcom/mediatek/wfo/IWifiOffloadService;)Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/IWifiOffloadService;

    .line 175
    sput-object p0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/mediatek/ims/ImsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 175
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->enableImsAdapter(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/ims/ImsService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->disableIms(IZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/ims/ImsService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsMTredirect:[Z

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->sendIncomingCallIndication(ILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->notifyRedirectIncomingCall(ILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2902(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 175
    iput-object p1, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3002(Lcom/mediatek/ims/ImsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 175
    iput p1, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingSocketId:I

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/ims/ImsService;I[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Ljava/lang/String;

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->handleImsStkCall(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ext/IImsServiceExt;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getOpImsService()Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    return-object v0
.end method

.method static synthetic access$3400(Lcom/mediatek/ims/ImsService;IILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->mapToWfcRegErrorCause(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/mediatek/ims/ImsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationErrorCode(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/mediatek/ims/ImsService;ILandroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->notifyIncomingCall(ILandroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/mediatek/ims/ImsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsService;->mRegisterSubInfoChange:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/mediatek/ims/ImsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Z

    .line 175
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsService;->mRegisterSubInfoChange:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mSubInfoReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/mediatek/ims/ImsService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/mediatek/ims/ImsService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mVolteEnable:[Z

    return-object v0
.end method

.method static synthetic access$4100(Lcom/mediatek/ims/ImsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mWaitFeatureChange:I

    return v0
.end method

.method static synthetic access$4102(Lcom/mediatek/ims/ImsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 175
    iput p1, p0, Lcom/mediatek/ims/ImsService;->mWaitFeatureChange:I

    return p1
.end method

.method static synthetic access$4200(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mFeatureValueReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/mediatek/ims/ImsService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->setEnhanced4gLteModeSetting(IZ)V

    return-void
.end method

.method static synthetic access$4400()Z
    .locals 1

    .line 175
    sget-boolean v0, Lcom/mediatek/ims/ImsService;->SENLOG:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/internal/ImsXuiManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Lcom/mediatek/ims/internal/ImsXuiManager;
    .param p2, "x2"    # I

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->notifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    return-object v0
.end method

.method static synthetic access$4700(Lcom/mediatek/ims/ImsService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ImsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterMWIService()V

    return-void
.end method

.method static synthetic access$5000(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/mediatek/ims/ImsService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:[Z

    return-object v0
.end method

.method static synthetic access$5200(Lcom/mediatek/ims/ImsService;)[Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$5300()Ljava/util/HashMap;
    .locals 1

    .line 175
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->handleNewCdmaSms(Landroid/os/AsyncResult;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ImsRegInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInd:[Lcom/mediatek/ims/ImsRegInfo;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsRegInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # Lcom/mediatek/ims/ImsRegInfo;
    .param p2, "x2"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .param p3, "x3"    # I

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->notifyImsRegInd(Lcom/mediatek/ims/ImsRegInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/mediatek/ims/ImsService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->updateImsRegistrationRat(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ImsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/ImsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;

    .line 175
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/ImsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p1, "x1"    # I

    .line 175
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->resetXuiAndNotify(I)V

    return-void
.end method

.method private bindAndRegisterMWIService()V
    .locals 0

    .line 1659
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    .line 1660
    return-void
.end method

.method private checkAndBindWifiOffloadService()V
    .locals 4

    .line 1594
    const-string v0, "wfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1596
    .local v0, "b":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1598
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    goto :goto_0

    .line 1599
    :catch_0
    move-exception v1

    .line 1601
    :goto_0
    invoke-static {v0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v1

    sput-object v1, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    goto :goto_2

    .line 1603
    :cond_0
    const-string v2, "can\'t get WifiOffloadService"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1604
    const-string v2, "mwis"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1606
    if-eqz v0, :cond_1

    .line 1607
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1608
    invoke-static {v0}, Lcom/mediatek/wfo/IMwiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IMwiService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/wfo/IMwiService;->getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v1

    sput-object v1, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    goto :goto_1

    .line 1610
    :cond_1
    const-string v1, "No MwiService exist"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1614
    :goto_1
    goto :goto_2

    .line 1612
    :catch_1
    move-exception v1

    .line 1613
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ImsService"

    const-string v3, "can\'t get MwiService"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1617
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndBindWifiOffloadService: sWifiOffloadService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1619
    return-void
.end method

.method private convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 6
    .param p1, "enabledFeatures"    # [I

    .line 3320
    array-length v0, p1

    new-array v0, v0, [Z

    .line 3321
    .local v0, "featuresEnabled":[Z
    const/4 v1, 0x0

    .line 3323
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-gt v1, v3, :cond_2

    array-length v5, p1

    if-ge v1, v5, :cond_2

    .line 3324
    aget v3, p1, v1

    if-ne v3, v1, :cond_0

    .line 3325
    aput-boolean v4, v0, v1

    goto :goto_1

    .line 3326
    :cond_0
    aget v3, p1, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 3328
    aput-boolean v2, v0, v1

    .line 3323
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3331
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    .line 3332
    .local v1, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    aget-boolean v2, v0, v2

    const/4 v5, 0x2

    if-nez v2, :cond_3

    aget-boolean v2, v0, v5

    if-eqz v2, :cond_4

    .line 3335
    :cond_3
    invoke-virtual {v1, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 3337
    :cond_4
    aget-boolean v2, v0, v4

    if-nez v2, :cond_5

    const/4 v2, 0x3

    aget-boolean v2, v0, v2

    if-eqz v2, :cond_6

    .line 3340
    :cond_5
    invoke-virtual {v1, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 3342
    :cond_6
    const/4 v2, 0x4

    aget-boolean v4, v0, v2

    if-nez v4, :cond_7

    aget-boolean v3, v0, v3

    if-eqz v3, :cond_8

    .line 3345
    :cond_7
    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 3347
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertCapabilities - capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3348
    return-object v1
.end method

.method private convertImsRegistrationTech(I)I
    .locals 1
    .param p1, "tech"    # I

    .line 3430
    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    .line 3436
    const/4 v0, -0x1

    return v0

    .line 3434
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3432
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private createImsReasonInfo(I)Landroid/telephony/ims/ImsReasonInfo;
    .locals 5
    .param p1, "phoneId"    # I

    .line 1694
    const/4 v0, 0x0

    .line 1695
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    aget v3, v2, p1

    aget v2, v2, p1

    .line 1696
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3e8

    invoke-direct {v1, v4, v3, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 1697
    return-object v0
.end method

.method private createWifiOffloadListenerProxy()Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;
    .locals 2

    .line 1397
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    if-nez v0, :cond_0

    .line 1398
    const-string v0, "create WifiOffloadListenerProxy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1399
    new-instance v0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mProxy:Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    return-object v0
.end method

.method private disableIms(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isNormalDisable"    # Z

    .line 2789
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2790
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->disableImsAdapter(IZ)V

    .line 2792
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 2794
    return-void
.end method

.method private disableImsAdapter(IZ)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "isNormalDisable"    # Z

    .line 687
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsAdapter;->disableImsAdapter(IZ)V

    .line 688
    return-void
.end method

.method private enableImsAdapter(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 683
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter;->enableImsAdapter(I)V

    .line 684
    return-void
.end method

.method private enforceModifyPermission()V
    .locals 3

    .line 2918
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    return-void
.end method

.method private englog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2832
    sget-boolean v0, Lcom/mediatek/ims/ImsService;->ENGLOAD:Z

    if-eqz v0, :cond_0

    .line 2833
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2835
    :cond_0
    return-void
.end method

.method private eventToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "eventId"    # I

    .line 1991
    packed-switch p1, :pswitch_data_0

    .line 2059
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN EVENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2057
    :pswitch_1
    const-string v0, "EVENT_CALL_ADDITIONAL_INFO_INDICATION"

    return-object v0

    .line 2053
    :pswitch_2
    const-string v0, "EVENT_VOPS_STATUS_IND"

    return-object v0

    .line 2055
    :pswitch_3
    const-string v0, "EVENT_READY_TO_RECEIVE_PENDING_IND"

    return-object v0

    .line 2051
    :pswitch_4
    const-string v0, "EVENT_IMS_SMS_NEW_CDMA_SMS"

    return-object v0

    .line 2049
    :pswitch_5
    const-string v0, "EVENT_IMS_SMS_NEW_SMS"

    return-object v0

    .line 2047
    :pswitch_6
    const-string v0, "EVENT_IMS_SMS_STATUS_REPORT"

    return-object v0

    .line 2045
    :pswitch_7
    const-string v0, "EVENT_SEND_SMS_DONE"

    return-object v0

    .line 2043
    :pswitch_8
    const-string v0, "EVENT_INIT_CALL_SESSION_PROXY"

    return-object v0

    .line 2041
    :pswitch_9
    const-string v0, "EVENT_START_GBA_SERVICE"

    return-object v0

    .line 2039
    :pswitch_a
    const-string v0, "EVENT_IMS_SUPPORT_ECC_URC"

    return-object v0

    .line 2037
    :pswitch_b
    const-string v0, "EVENT_SELF_IDENTIFY_UPDATE"

    return-object v0

    .line 2035
    :pswitch_c
    const-string v0, "EVENT_RUN_GBA"

    return-object v0

    .line 2033
    :pswitch_d
    const-string v0, "EVENT_IMS_VOLTE_SETTING_URC"

    return-object v0

    .line 2031
    :pswitch_e
    const-string v0, "EVENT_SET_IMS_REGISTRATION_REPORT_DONE"

    return-object v0

    .line 2029
    :pswitch_f
    const-string v0, "EVENT_IMS_RTP_INFO_URC"

    return-object v0

    .line 2027
    :pswitch_10
    const-string v0, "EVENT_RADIO_ON"

    return-object v0

    .line 2025
    :pswitch_11
    const-string v0, "EVENT_RADIO_OFF"

    return-object v0

    .line 2023
    :pswitch_12
    const-string v0, "EVENT_IMS_DEREG_URC"

    return-object v0

    .line 2021
    :pswitch_13
    const-string v0, "EVENT_IMS_DEREG_DONE"

    return-object v0

    .line 2019
    :pswitch_14
    const-string v0, "EVENT_ON_USSI"

    return-object v0

    .line 2017
    :pswitch_15
    const-string v0, "EVENT_SIP_CODE_INDICATION_DEREG"

    return-object v0

    .line 2015
    :pswitch_16
    const-string v0, "EVENT_SIP_CODE_INDICATION"

    return-object v0

    .line 2013
    :pswitch_17
    const-string v0, "EVENT_IMS_DISABLING_URC"

    return-object v0

    .line 2011
    :pswitch_18
    const-string v0, "EVENT_IMS_ENABLED_URC"

    return-object v0

    .line 2009
    :pswitch_19
    const-string v0, "EVENT_IMS_ENABLING_URC"

    return-object v0

    .line 2007
    :pswitch_1a
    const-string v0, "EVENT_CALL_INFO_INDICATION"

    return-object v0

    .line 2005
    :pswitch_1b
    const-string v0, "EVENT_INCOMING_CALL_INDICATION"

    return-object v0

    .line 2003
    :pswitch_1c
    const-string v0, "EVENT_VIRTUAL_SIM_ON"

    return-object v0

    .line 2001
    :pswitch_1d
    const-string v0, "EVENT_IMS_DISABLED_URC"

    return-object v0

    .line 1999
    :pswitch_1e
    const-string v0, "EVENT_SET_IMS_DISABLE_DONE"

    return-object v0

    .line 1997
    :pswitch_1f
    const-string v0, "EVENT_SET_IMS_ENABLED_DONE"

    return-object v0

    .line 1995
    :pswitch_20
    const-string v0, "EVENT_RADIO_NOT_AVAILABLE"

    return-object v0

    .line 1993
    :pswitch_21
    const-string v0, "EVENT_IMS_REGISTRATION_INFO"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBooleanFromCarrierConfig(ILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 3892
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3894
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 3895
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v1, :cond_0

    .line 3896
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 3898
    :cond_0
    invoke-virtual {v1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3899
    .local v2, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBooleanFromCarrierConfig() : key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3900
    return v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 402
    sget-object v0, Lcom/mediatek/ims/ImsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsService;->sInstance:Lcom/mediatek/ims/ImsService;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 404
    new-instance v1, Lcom/mediatek/ims/ImsService;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/ImsService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/ims/ImsService;->sInstance:Lcom/mediatek/ims/ImsService;

    .line 405
    const-string v2, "ImsService is created!"

    invoke-direct {v1, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 407
    :cond_0
    sget-object v1, Lcom/mediatek/ims/ImsService;->sInstance:Lcom/mediatek/ims/ImsService;

    monitor-exit v0

    return-object v1

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOpImsService()Lcom/mediatek/ims/ext/IImsServiceExt;
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;->makeImsServiceExt(Landroid/content/Context;)Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v0

    return-object v0
.end method

.method private getRadioTech(I)I
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    const/4 v0, 0x0

    .line 1665
    .local v0, "radioTech":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioTech mRAN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1667
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1668
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    .line 1670
    sget-object v1, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v1, :cond_1

    .line 1671
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    invoke-interface {v1, p1}, Lcom/mediatek/wfo/IWifiOffloadService;->getRatType(I)I

    move-result v1

    aput v1, v2, p1

    goto :goto_0

    .line 1676
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterMWIService()V

    .line 1679
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v1, v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 1686
    const/16 v0, 0xe

    goto :goto_1

    .line 1681
    :cond_2
    const/16 v0, 0x12

    .line 1682
    nop

    .line 1689
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioTech mRAN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", radioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1690
    return v0
.end method

.method private handleImsStkCall(I[Ljava/lang/String;)V
    .locals 18
    .param p1, "phoneId"    # I
    .param p2, "incomingCallInfo"    # [Ljava/lang/String;

    .line 2744
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, 0x1

    aget-object v13, v11, v12

    .line 2745
    .local v13, "callId":Ljava/lang/String;
    const/4 v0, 0x7

    aget-object v14, v11, v0

    .line 2747
    .local v14, "callNum":Ljava/lang/String;
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    move-object v15, v0

    .line 2748
    .local v15, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v14, :cond_0

    const-string v0, ""

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallIndication new call profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Lcom/mediatek/ims/ImsService;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2750
    const-string v0, "oi"

    invoke-virtual {v15, v0, v14}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    const/4 v0, 0x2

    const-string v1, "oir"

    invoke-virtual {v15, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2754
    :cond_0
    iget-object v8, v9, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    new-instance v16, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v1, v9, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v0, v9, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v0, v10

    iget-object v0, v9, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v6, v0, v10

    move-object/from16 v0, v16

    move-object v2, v15

    move-object/from16 v4, p0

    move-object v7, v13

    move-object/from16 v17, v8

    move/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    aput-object v16, v17, v10

    .line 2758
    new-instance v16, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, v9, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v0, v9, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v5, v0, v10

    iget-object v0, v9, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v6, v0, v10

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 2762
    .local v0, "imsCallSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    iget-object v1, v9, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aget-object v1, v1, v10

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2763
    iget-object v1, v9, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    .line 2765
    iget-object v1, v9, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    .line 2766
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    iget-object v3, v9, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aget-object v3, v3, v10

    .line 2765
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2770
    array-length v1, v11

    invoke-static {v11, v12, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 2771
    .local v1, "callInfo":[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    .line 2772
    .local v2, "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    nop

    .line 2773
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 2772
    invoke-virtual {v2, v1, v0, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2775
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2776
    .local v3, "extras":Landroid/os/Bundle;
    const-string v4, "android:imsCallID"

    invoke-virtual {v3, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    const/4 v4, 0x6

    aget-object v4, v11, v4

    const-string v5, "android:imsDialString"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    const-string v4, "android:imsServiceId"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2779
    const-string v4, "android:isUnknown"

    invoke-virtual {v3, v4, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2780
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    invoke-virtual {v9, v10, v4, v3}, Lcom/mediatek/ims/ImsService;->notifyIncomingCallSession(ILcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 2781
    return-void
.end method

.method private handleNewCdmaSms(Landroid/os/AsyncResult;I)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "socketId"    # I

    .line 3145
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception processing incoming SMS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3147
    return v1

    .line 3149
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SmsMessage;

    .line 3150
    .local v0, "sms":Landroid/telephony/SmsMessage;
    if-nez v0, :cond_1

    .line 3151
    const-string v2, "SmsMessage is null"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3152
    return v1

    .line 3154
    :cond_1
    iget-object v2, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 3155
    .local v2, "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    if-nez v2, :cond_2

    .line 3156
    const-string v3, "SmsMessageBase is null"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3157
    return v1

    .line 3159
    :cond_2
    sget-object v3, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    if-nez v3, :cond_3

    .line 3160
    const-string v3, "mMmTelFeatureCallback is null"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3161
    return v1

    .line 3163
    :cond_3
    const/4 v3, 0x0

    .line 3164
    .local v3, "statusReport":Z
    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 3166
    .local v4, "cdmaSms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v5

    if-nez v5, :cond_5

    .line 3169
    :try_start_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 3170
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    .line 3171
    const/4 v1, 0x1

    move v3, v1

    .line 3176
    :cond_4
    goto :goto_0

    .line 3173
    :catch_0
    move-exception v5

    .line 3174
    .local v5, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception dispatching message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3175
    return v1

    .line 3178
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    :goto_0
    const-string v1, "3gpp2"

    if-eqz v3, :cond_6

    .line 3179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_IMS_SMS_STATUS_REPORT, socketId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3180
    sget-object v5, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    .line 3181
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v6

    .line 3180
    invoke-interface {v5, v6, v1}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newStatusReportInd([BLjava/lang/String;)V

    goto :goto_1

    .line 3184
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_IMS_SMS_NEW_SMS, socketId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3185
    sget-object v5, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    .line 3186
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v6

    .line 3185
    invoke-interface {v5, v6, v1}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newImsSmsInd([BLjava/lang/String;)V

    .line 3189
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method private handleWifiPdnOOS(II)V
    .locals 3
    .param p1, "simIdx"    # I
    .param p2, "oosState"    # I

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiPdnOOS oosState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1476
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1487
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mTempDisableWFC:[Z

    aput-boolean v1, v0, p1

    .line 1488
    goto :goto_0

    .line 1484
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mTempDisableWFC:[Z

    aput-boolean v0, v2, p1

    .line 1485
    goto :goto_0

    .line 1478
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mTempDisableWFC:[Z

    aput-boolean v1, v2, p1

    .line 1480
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aput v0, v2, p1

    .line 1481
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v2, v0, p1

    and-int/lit8 v2, v2, -0x11

    aput v2, v0, p1

    .line 1482
    nop

    .line 1492
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(IIZ)V

    .line 1493
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v0, v0, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(IIZ)V

    .line 1494
    return-void
.end method

.method private initImsAvailability(IIII)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "capabilityOffset"    # I
    .param p3, "enableMessageId"    # I
    .param p4, "disableMessageId"    # I

    .line 2803
    const-string v0, "persist.vendor.mtk.volte.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2804
    .local v0, "volteCapability":I
    const-string v2, "persist.vendor.mtk.wfc.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2805
    .local v1, "wfcCapability":I
    const/4 v2, 0x1

    shl-int v3, v2, p2

    and-int/2addr v3, v0

    const/4 v4, 0x2

    if-gtz v3, :cond_1

    shl-int/2addr v2, p2

    and-int/2addr v2, v1

    if-lez v2, :cond_0

    goto :goto_0

    .line 2811
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initImsAvailability turnOffIms : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2812
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, p1

    invoke-virtual {v3, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffIms(Landroid/os/Message;)V

    .line 2813
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    const/4 v3, 0x3

    aput v3, v2, p1

    goto :goto_1

    .line 2807
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initImsAvailability turnOnIms : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2808
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v3, v3, p1

    invoke-virtual {v3, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnIms(Landroid/os/Message;)V

    .line 2809
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    aput v4, v2, p1

    .line 2818
    :goto_1
    invoke-virtual {p0, v4, p1}, Lcom/mediatek/ims/ImsService;->updateRadioState(II)V

    .line 2819
    return-void
.end method

.method private isOp09SimCard(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iccId"    # Ljava/lang/String;

    .line 3538
    const/4 v0, 0x0

    .line 3539
    .local v0, "isOp09Card":Z
    const-string v1, "898603"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "898611"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3540
    const-string v1, "8985302"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "8985307"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3541
    const-string v1, "8985231"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3542
    :cond_0
    const/4 v0, 0x1

    .line 3544
    :cond_1
    return v0
.end method

.method static synthetic lambda$notifyCapabilityChangedEx$3([I[ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .param p0, "enabledFeatures"    # [I
    .param p1, "disabledFeatures"    # [I
    .param p2, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1927
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p2, v0, p0, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1931
    goto :goto_0

    .line 1929
    :catch_0
    move-exception v0

    .line 1932
    :goto_0
    return-void
.end method

.method static synthetic lambda$updateImsRegstrationEx$2(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .param p0, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p1, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1781
    :try_start_0
    invoke-interface {p1, p0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    goto :goto_0

    .line 1782
    :catch_0
    move-exception v0

    .line 1785
    :goto_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2827
    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2842
    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2846
    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2838
    const-string v0, "ImsService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    return-void
.end method

.method private mapSipErrorCode(I)I
    .locals 6
    .param p1, "code"    # I

    .line 3560
    const/16 v0, 0x3e8

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_0

    .line 3561
    return v0

    .line 3562
    :cond_0
    const/16 v1, 0x190

    if-ge p1, v1, :cond_1

    .line 3564
    const/16 v0, 0x141

    return v0

    .line 3565
    :cond_1
    const/16 v2, 0x1f4

    const/16 v3, 0x152

    const/16 v4, 0x155

    const/16 v5, 0x154

    if-ge p1, v2, :cond_b

    .line 3567
    if-eq p1, v1, :cond_a

    const/16 v0, 0x196

    if-eq p1, v0, :cond_9

    const/16 v0, 0x198

    if-eq p1, v0, :cond_8

    const/16 v0, 0x19a

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1a4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1e4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x193

    if-eq p1, v0, :cond_3

    const/16 v0, 0x194

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19f

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1a0

    if-eq p1, v0, :cond_6

    packed-switch p1, :pswitch_data_0

    .line 3594
    const/16 v0, 0x156

    return v0

    .line 3592
    :pswitch_0
    const/16 v0, 0x153

    return v0

    .line 3590
    :pswitch_1
    return v3

    .line 3573
    :cond_2
    const/16 v0, 0x14d

    return v0

    .line 3571
    :cond_3
    const/16 v0, 0x14c

    return v0

    .line 3588
    :cond_4
    const/16 v0, 0x151

    return v0

    .line 3586
    :cond_5
    const/16 v0, 0x150

    return v0

    .line 3584
    :cond_6
    const/16 v0, 0x14e

    return v0

    .line 3580
    :cond_7
    return v4

    .line 3578
    :cond_8
    const/16 v0, 0x14f

    return v0

    .line 3576
    :cond_9
    :pswitch_2
    return v5

    .line 3569
    :cond_a
    const/16 v0, 0x14b

    return v0

    .line 3596
    :cond_b
    const/16 v1, 0x258

    if-ge p1, v1, :cond_f

    .line 3598
    const/16 v0, 0x1f5

    if-eq p1, v0, :cond_e

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_d

    const/16 v0, 0x1f8

    if-eq p1, v0, :cond_c

    .line 3606
    const/16 v0, 0x162

    return v0

    .line 3604
    :cond_c
    const/16 v0, 0x161

    return v0

    .line 3602
    :cond_d
    const/16 v0, 0x160

    return v0

    .line 3600
    :cond_e
    const/16 v0, 0x15f

    return v0

    .line 3608
    :cond_f
    const/16 v2, 0x2bc

    if-ge p1, v2, :cond_14

    .line 3610
    if-eq p1, v1, :cond_13

    const/16 v0, 0x25e

    if-eq p1, v0, :cond_12

    const/16 v0, 0x25b

    if-eq p1, v0, :cond_11

    const/16 v0, 0x25c

    if-eq p1, v0, :cond_10

    .line 3620
    const/16 v0, 0x16a

    return v0

    .line 3618
    :cond_10
    return v4

    .line 3614
    :cond_11
    const/16 v0, 0x169

    return v0

    .line 3616
    :cond_12
    return v5

    .line 3612
    :cond_13
    return v3

    .line 3623
    :cond_14
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1e6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private mapToWfcRegErrorCause(IILjava/lang/String;)I
    .locals 3
    .param p1, "sipErrorCode"    # I
    .param p2, "sipMethod"    # I
    .param p3, "sipReasonText"    # Ljava/lang/String;

    .line 1414
    const/16 v0, 0x3e7

    .line 1416
    .local v0, "wfcRegErrorCode":I
    const/16 v1, 0x193

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1f7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x25e

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1448
    :pswitch_0
    const/16 v0, 0x645

    .line 1449
    goto :goto_0

    .line 1445
    :pswitch_1
    const/16 v0, 0x644

    .line 1446
    goto :goto_0

    .line 1442
    :pswitch_2
    const/16 v0, 0x643

    .line 1443
    goto :goto_0

    .line 1438
    :pswitch_3
    const/16 v0, 0x642

    .line 1439
    goto :goto_0

    .line 1435
    :pswitch_4
    const/16 v0, 0x641

    .line 1436
    goto :goto_0

    .line 1462
    :cond_0
    if-nez p2, :cond_7

    const-string v1, "Not Acceptable"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1463
    const/16 v0, 0x6a7

    goto :goto_0

    .line 1454
    :cond_1
    if-nez p2, :cond_7

    const-string v1, "Emergency Calls over Wi-Fi is not allowed in this location"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1458
    const/16 v0, 0x6a6

    goto :goto_0

    .line 1451
    :cond_2
    const/16 v0, 0x57e

    .line 1452
    goto :goto_0

    .line 1418
    :cond_3
    const/16 v1, 0x9

    if-ne p2, v1, :cond_4

    const-string v1, "SHOW_WIFI_REG09"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1420
    const/16 v0, 0x6a5

    goto :goto_0

    .line 1421
    :cond_4
    if-nez p2, :cond_5

    const-string v1, "WiFi Calling Not Allowed from this Region"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1424
    const/16 v0, 0x646

    goto :goto_0

    .line 1426
    :cond_5
    if-nez p2, :cond_6

    .line 1428
    const/16 v0, 0x640

    goto :goto_0

    .line 1431
    :cond_6
    const/16 v0, 0x643

    .line 1433
    nop

    .line 1469
    :cond_7
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapToWfcRegErrorCause(), sipErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sipMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sipReasonText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wfcRegErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1471
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9d6d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyCapabilityChanged(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 3352
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mCapLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3353
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3354
    sget-object v1, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v1, p2}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->notifyCapabilitiesChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    goto :goto_0

    .line 3356
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is not IMtkMmTelFeatureCallback for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3358
    :goto_0
    monitor-exit v0

    .line 3359
    return-void

    .line 3358
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyCapabilityChangedEx(I[I[I)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    .line 1921
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1923
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-eqz v0, :cond_0

    .line 1924
    monitor-enter v0

    .line 1925
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/-$$Lambda$ImsService$Cms3drtFerZJcFg-sT1ybVcEEaM;

    invoke-direct {v1, p2, p3}, Lcom/mediatek/ims/-$$Lambda$ImsService$Cms3drtFerZJcFg-sT1ybVcEEaM;-><init>([I[I)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 1933
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1935
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyImsRegInd(Lcom/mediatek/ims/ImsRegInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;I)V
    .locals 5
    .param p1, "info"    # Lcom/mediatek/ims/ImsRegInfo;
    .param p2, "listener"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .param p3, "phoneId"    # I

    .line 3642
    if-eqz p1, :cond_2

    iget v0, p1, Lcom/mediatek/ims/ImsRegInfo;->mReportType:I

    if-ltz v0, :cond_2

    .line 3643
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget v1, p1, Lcom/mediatek/ims/ImsRegInfo;->mErrorCode:I

    .line 3644
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->mapSipErrorCode(I)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/mediatek/ims/ImsRegInfo;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 3647
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p1, Lcom/mediatek/ims/ImsRegInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/ImsService;->convertUri(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v1

    .line 3649
    .local v1, "uris":[Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/mediatek/ims/ImsRegInfo;->mReportType:I

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/mediatek/ims/ImsRegInfo;->mUri:Ljava/lang/String;

    .line 3650
    const-string v4, "ImsService"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " expireTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/mediatek/ims/ImsRegInfo;->mExpireTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " imsReasonInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3649
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 3653
    if-nez p2, :cond_1

    .line 3655
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    .line 3656
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 3657
    .local v2, "mtklisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;>;"
    if-eqz v2, :cond_0

    .line 3658
    monitor-enter v2

    .line 3659
    :try_start_0
    new-instance v3, Lcom/mediatek/ims/-$$Lambda$ImsService$PlZfdKcYl6cJt2nSuS4vxH8ahKc;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/mediatek/ims/-$$Lambda$ImsService$PlZfdKcYl6cJt2nSuS4vxH8ahKc;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsRegInfo;[Landroid/net/Uri;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 3667
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3669
    .end local v2    # "mtklisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;>;"
    :cond_0
    :goto_0
    goto :goto_1

    .line 3671
    :cond_1
    :try_start_1
    iget v2, p1, Lcom/mediatek/ims/ImsRegInfo;->mReportType:I

    iget v3, p1, Lcom/mediatek/ims/ImsRegInfo;->mExpireTime:I

    invoke-interface {p2, v2, v1, v3, v0}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;->onRegistrationImsStateChanged(I[Landroid/net/Uri;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3675
    goto :goto_1

    .line 3673
    :catch_0
    move-exception v2

    .line 3674
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "onRegistrationImsStateChanged failed!!"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3677
    .end local v0    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v1    # "uris":[Landroid/net/Uri;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 3678
    :cond_2
    const-string v0, "Do not get +IMSREGURI yet."

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3680
    :goto_2
    return-void
.end method

.method private notifyIncomingCall(ILandroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 3362
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3363
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v0, p2, p3}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 3365
    :cond_0
    return-void
.end method

.method private notifyRedirectIncomingCall(ILandroid/os/AsyncResult;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 3684
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    .line 3685
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 3686
    .local v0, "mtklisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;>;"
    if-eqz v0, :cond_0

    .line 3687
    monitor-enter v0

    .line 3688
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/-$$Lambda$ImsService$HveuyYE2TVAkBGkfNQosrPAjPII;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/ims/-$$Lambda$ImsService$HveuyYE2TVAkBGkfNQosrPAjPII;-><init>(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 3695
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3697
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/internal/ImsXuiManager;I)V
    .locals 3
    .param p1, "xuiManager"    # Lcom/mediatek/ims/internal/ImsXuiManager;
    .param p2, "phoneId"    # I

    .line 1727
    invoke-virtual {p1, p2}, Lcom/mediatek/ims/internal/ImsXuiManager;->getSelfIdentifyUri(I)[Landroid/net/Uri;

    move-result-object v0

    .line 1728
    .local v0, "uris":[Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRegistrationAssociatedUriChange phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uris="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ImsService"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 1730
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 1731
    .local v1, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1732
    monitor-enter v1

    .line 1733
    :try_start_0
    new-instance v2, Lcom/mediatek/ims/-$$Lambda$ImsService$GZ0ahyx7HZsBpKxFCTrTHOwrNgo;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/ims/-$$Lambda$ImsService$GZ0ahyx7HZsBpKxFCTrTHOwrNgo;-><init>(Lcom/mediatek/ims/ImsService;[Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 1740
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1742
    :cond_0
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/mediatek/ims/ImsService;->updateAssociatedUriChanged(I[Landroid/net/Uri;)V

    .line 1743
    return-void
.end method

.method private notifyRegistrationCapabilityChange(IIZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "imsExtInfo"    # I
    .param p3, "staticReg"    # Z

    .line 1946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRegistrationCapabilityChange imsExtInfo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", staticReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1949
    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 1950
    .local v1, "enabledFeatures":[I
    new-array v0, v0, [I

    .line 1951
    .local v0, "disabledFeatures":[I
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/mediatek/ims/ImsService;->updateCapabilityChange(II[I[I)V

    .line 1954
    invoke-direct {p0, p1, v1, v0}, Lcom/mediatek/ims/ImsService;->updateUtCapabilityChange(I[I[I)V

    .line 1957
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v2

    .line 1958
    .local v2, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    and-int/lit8 v3, p2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1959
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 1961
    :cond_0
    if-nez p3, :cond_1

    .line 1962
    invoke-direct {p0, p1, v2}, Lcom/mediatek/ims/ImsService;->notifyCapabilityChanged(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 1965
    :cond_1
    invoke-direct {p0, p1, v1, v0}, Lcom/mediatek/ims/ImsService;->notifyCapabilityChangedEx(I[I[I)V

    .line 1966
    return-void
.end method

.method private notifyRegistrationErrorCode(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "errorCode"    # I

    .line 3253
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    .line 3254
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 3255
    .local v0, "mtklisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;>;"
    if-nez v0, :cond_0

    .line 3256
    const-string v1, "notifyRegistrationErrorCode: listeners is null"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3257
    return-void

    .line 3259
    :cond_0
    monitor-enter v0

    .line 3260
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/-$$Lambda$ImsService$4rBdIYUnJ2bZd8uXNbA0XiYdZYU;

    invoke-direct {v1, p0, p2}, Lcom/mediatek/ims/-$$Lambda$ImsService$4rBdIYUnJ2bZd8uXNbA0XiYdZYU;-><init>(Lcom/mediatek/ims/ImsService;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 3268
    monitor-exit v0

    .line 3269
    return-void

    .line 3268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyRegistrationOOSStateChanged(II)V
    .locals 7
    .param p1, "simId"    # I
    .param p2, "oosState"    # I

    .line 3215
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->handleWifiPdnOOS(II)V

    .line 3217
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 3218
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-nez v0, :cond_0

    .line 3219
    const-string v1, "notifyRegistrationOOSStateChanged: listeners is null"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3220
    return-void

    .line 3222
    :cond_0
    monitor-enter v0

    .line 3223
    const/4 v1, 0x5

    .line 3224
    .local v1, "resultEvent":I
    const/4 v2, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    goto :goto_0

    .line 3234
    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    .line 3230
    :cond_2
    const/4 v1, 0x5

    .line 3232
    goto :goto_0

    .line 3226
    :cond_3
    const/4 v1, 0x6

    .line 3228
    nop

    .line 3239
    :goto_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRegistrationOOSStateChanged listener size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3240
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 3241
    .local v4, "l":Lcom/android/ims/internal/IImsRegistrationListener;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call registrationServiceCapabilityChanged with event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3242
    invoke-interface {v4, v2, v1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationServiceCapabilityChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3244
    .end local v4    # "l":Lcom/android/ims/internal/IImsRegistrationListener;
    goto :goto_1

    .line 3247
    :cond_4
    goto :goto_2

    .line 3248
    .end local v1    # "resultEvent":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 3245
    .restart local v1    # "resultEvent":I
    :catch_0
    move-exception v2

    .line 3246
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3248
    .end local v1    # "resultEvent":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 3249
    return-void

    .line 3248
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyRegistrationStateChange(IIZ)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "imsRegInfo"    # I
    .param p3, "staticReg"    # Z

    .line 1800
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1801
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRegistrationStateChange imsRegInfo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", staticReg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRAN[phoneId]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1805
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1806
    .local v1, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-nez p2, :cond_2

    .line 1808
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->getRadioTech(I)I

    move-result v2

    .line 1809
    .local v2, "radioTech":I
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/mediatek/ims/ImsService;->setWfcRegErrorCodeWithPdn(II)V

    .line 1810
    const/4 v4, 0x0

    if-nez p3, :cond_0

    .line 1811
    const/4 v5, 0x2

    .line 1813
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->convertImsRegistrationTech(I)I

    move-result v6

    .line 1811
    invoke-direct {p0, p1, v5, v6, v4}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1816
    :cond_0
    nop

    .line 1817
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->convertImsRegistrationTech(I)I

    move-result v5

    .line 1816
    invoke-direct {p0, p1, p2, v5, v4}, Lcom/mediatek/ims/ImsService;->updateImsRegstrationEx(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1819
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getOpImsService()Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v4

    .line 1820
    .local v4, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    if-eqz v4, :cond_1

    .line 1821
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v5, v5, p1

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v6, p1

    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v7, p1

    invoke-interface {v4, v5, v6, v7}, Lcom/mediatek/ims/ext/IImsServiceExt;->notifyRegistrationStateChange(ILandroid/os/Handler;Ljava/lang/Object;)V

    .line 1824
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    aput v3, v5, p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "radioTech":I
    .end local v4    # "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    goto :goto_0

    .line 1825
    :catch_0
    move-exception v2

    .line 1826
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "IMS: notifyStateChange fail on access WifiOffloadService"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1827
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1829
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:[I

    aget v2, v2, p1

    invoke-virtual {p0, p1, v2}, Lcom/mediatek/ims/ImsService;->setWfcRegErrorCodeWithPdn(II)V

    .line 1831
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->createImsReasonInfo(I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1833
    .local v2, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-direct {p0, p1, v3, v4, v2}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1837
    invoke-direct {p0, p1, p2, v4, v2}, Lcom/mediatek/ims/ImsService;->updateImsRegstrationEx(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1840
    .end local v1    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    .end local v2    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_1
    monitor-exit v0

    .line 1841
    return-void

    .line 1840
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private registrationStateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .line 3628
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 3636
    const-string v0, ""

    return-object v0

    .line 3634
    :cond_0
    const-string v0, "IMS_REGISTER_FAIL"

    return-object v0

    .line 3632
    :cond_1
    const-string v0, "IMS_REGISTERED"

    return-object v0

    .line 3630
    :cond_2
    const-string v0, "IMS_REGISTERING"

    return-object v0
.end method

.method private resetXuiAndNotify(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 3077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetXuiAndNotify() phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3078
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/internal/ImsXuiManager;->setXui(ILjava/lang/String;)V

    .line 3079
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3080
    .local v0, "uris":[Landroid/net/Uri;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 3081
    .local v1, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-eqz v1, :cond_0

    .line 3082
    monitor-enter v1

    .line 3083
    :try_start_0
    new-instance v2, Lcom/mediatek/ims/-$$Lambda$ImsService$FjfXO7_7sxN84aO5RoWE5NZ54GI;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/ims/-$$Lambda$ImsService$FjfXO7_7sxN84aO5RoWE5NZ54GI;-><init>(Lcom/mediatek/ims/ImsService;[Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 3090
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3092
    :cond_0
    :goto_0
    return-void
.end method

.method private sendIncomingCallIndication(ILandroid/os/AsyncResult;)V
    .locals 22
    .param p1, "phoneId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 2960
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v0, v8, Lcom/mediatek/ims/ImsService;->mIsPendingMTTerminated:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v9

    .line 2962
    iget-object v0, v8, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, v9

    iget-object v2, v8, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v2, v2, v9

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2965
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v11, v0, v1

    .line 2966
    .local v11, "callId":Ljava/lang/String;
    iget-object v0, v8, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:[Ljava/lang/String;

    aput-object v11, v0, v9

    .line 2968
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v12, v0, v1

    .line 2969
    .local v12, "dialString":Ljava/lang/String;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v13, v0, v2

    .line 2970
    .local v13, "callMode":Ljava/lang/String;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v14, v0, v2

    .line 2971
    .local v14, "seqNum":Ljava/lang/String;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v15, v0, v2

    .line 2973
    .local v15, "toLineNum":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIncomingCallIndication() : call_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dialString = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2974
    invoke-direct {v8, v12}, Lcom/mediatek/ims/ImsService;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " seqNum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " phoneId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2973
    invoke-direct {v8, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2977
    invoke-static/range {p1 .. p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v7

    .line 2979
    .local v7, "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    const/4 v0, 0x1

    .line 2982
    .local v0, "isAllow":Z
    sget-object v2, Lcom/mediatek/ims/ImsConstants;->PROPERTY_TBCW_MODE:Ljava/lang/String;

    sget-object v3, Lcom/mediatek/ims/ImsConstants;->TBCW_DISABLED:Ljava/lang/String;

    invoke-static {v9, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2986
    .local v6, "callWaitingSetting":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/ims/ImsConstants;->TBCW_OFF:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2988
    const-string v1, "sendIncomingCallIndication() : PROPERTY_TBCW_MODE = TBCW_OFF. Reject the call as UDUB "

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2990
    const/4 v0, 0x0

    .line 2994
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsServiceCallTracker;->isEccExistOnAnySlot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2995
    const-string v1, "sendIncomingCallIndication() : there is an ECC call, dis-allow this incoming call!"

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2996
    const/4 v0, 0x0

    .line 3000
    :cond_1
    const-string v1, "allow_hold_video_call_bool"

    invoke-direct {v8, v9, v1}, Lcom/mediatek/ims/ImsService;->getBooleanFromCarrierConfig(ILjava/lang/String;)Z

    move-result v16

    .line 3002
    .local v16, "isAllowHoldingVideoCall":Z
    if-nez v16, :cond_3

    .line 3004
    const-string v1, "sendIncomingCallIndication() : OP01 or OP09 case"

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3007
    invoke-virtual {v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->isVideoCallExist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3008
    const-string v1, "sendIncomingCallIndication() : there is video calls, dis-allow this incoming call!"

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3009
    const/4 v0, 0x0

    goto :goto_0

    .line 3012
    :cond_2
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isVideoCall(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3013
    const-string v1, "sendIncomingCallIndication() : MT is video calls during call, dis-allow this incoming call!"

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3014
    const/4 v0, 0x0

    .line 3019
    :cond_3
    :goto_0
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP129:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-static {v1, v9}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3021
    const-string v1, "sendIncomingCallIndication() : OP129 case"

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3024
    invoke-virtual {v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->isConferenceHostCallExist()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3025
    const-string v1, "sendIncomingCallIndication() : there is conference call, dis-allow this incoming call!"

    invoke-direct {v8, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3026
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    .line 3032
    :cond_4
    move v5, v0

    .end local v0    # "isAllow":Z
    .local v5, "isAllow":Z
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendIncomingCallIndication() : isAllow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3033
    if-nez v5, :cond_5

    .line 3034
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v11

    move-object v3, v12

    move/from16 v18, v5

    .end local v5    # "isAllow":Z
    .local v18, "isAllow":Z
    move-object v5, v15

    move-object/from16 v19, v6

    .end local v6    # "callWaitingSetting":Ljava/lang/String;
    .local v19, "callWaitingSetting":Ljava/lang/String;
    move/from16 v6, v18

    move-object/from16 v20, v7

    .end local v7    # "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    .local v20, "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/ims/ImsService;->setCallIndicationInternal(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    goto/16 :goto_2

    .line 3037
    .end local v18    # "isAllow":Z
    .end local v19    # "callWaitingSetting":Ljava/lang/String;
    .end local v20    # "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    .restart local v5    # "isAllow":Z
    .restart local v6    # "callWaitingSetting":Ljava/lang/String;
    .restart local v7    # "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    :cond_5
    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v5    # "isAllow":Z
    .end local v6    # "callWaitingSetting":Ljava/lang/String;
    .end local v7    # "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    .restart local v18    # "isAllow":Z
    .restart local v19    # "callWaitingSetting":Ljava/lang/String;
    .restart local v20    # "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    const-string v0, "mtk_support_enhanced_call_blocking_bool"

    invoke-direct {v8, v9, v0}, Lcom/mediatek/ims/ImsService;->getBooleanFromCarrierConfig(ILjava/lang/String;)Z

    move-result v7

    .line 3040
    .local v7, "needCheckEnhanceCallBlacking":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendIncomingCallIndication() : needCheckEnhanceCallBlacking = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3042
    if-eqz v7, :cond_6

    .line 3043
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_INCOMING_CALL_INDICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3044
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3045
    const-string v1, "android:imsCallID"

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3046
    const-string v1, "android:imsDialString"

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3047
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android:imsCallMode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3048
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android:imsSeqNum"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3049
    const-string v1, "android:phoneId"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3050
    const-string v1, "mediatek:mtToNumber"

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3051
    iget-object v1, v8, Lcom/mediatek/ims/ImsService;->mPendingMTSeqNum:[Ljava/lang/String;

    aput-object v14, v1, v9

    .line 3052
    iget-object v1, v8, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3053
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 3054
    :cond_6
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v11

    move-object v3, v12

    move-object v5, v15

    move/from16 v6, v18

    move/from16 v21, v7

    .end local v7    # "needCheckEnhanceCallBlacking":Z
    .local v21, "needCheckEnhanceCallBlacking":Z
    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/ims/ImsService;->setCallIndicationInternal(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 3057
    .end local v21    # "needCheckEnhanceCallBlacking":Z
    :goto_2
    return-void
.end method

.method private sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 3777
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setCallIndicationInternal(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callNum"    # Ljava/lang/String;
    .param p4, "seqNum"    # I
    .param p5, "toNumber"    # Ljava/lang/String;
    .param p6, "isAllow"    # Z
    .param p7, "cause"    # I

    .line 2881
    if-eqz p6, :cond_1

    .line 2882
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    aput-object v1, v0, p1

    .line 2883
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallIndication new call profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/mediatek/ims/ImsService;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2885
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

    aget-object v0, v0, p1

    const-string v1, "oi"

    invoke-virtual {v0, v1, p3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsCallProfile:[Landroid/telephony/ims/ImsCallProfile;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    const-string v2, "oir"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2894
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v0, v0, p1

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2895
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2896
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "callId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    const-string v2, "phoneId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2898
    const-string v2, "seqNum"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2899
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2900
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2903
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "b":Landroid/os/Bundle;
    goto :goto_0

    .line 2904
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    .line 2906
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2904
    invoke-interface {v0, v1, v2, p4, p7}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallIndication(IIII)V

    .line 2910
    :goto_0
    return-void
.end method

.method private setEnhanced4gLteModeSetting(IZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 3505
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 3507
    .local v0, "imsMgr":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_2

    .line 3511
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP18:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-static {v1, p1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entered the RJIO case,phoneId :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",enabled:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3513
    invoke-virtual {v0, v2}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    goto :goto_0

    .line 3515
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entered the other operators case,enabled :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3516
    invoke-virtual {v0, p2}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    .line 3519
    :goto_0
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isServiceReady()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3521
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsConfigManager;->get(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v1

    const/16 v3, 0xd

    .line 3524
    const/4 v4, 0x0

    if-eqz p2, :cond_1

    goto :goto_1

    .line 3525
    :cond_1
    move v2, v4

    :goto_1
    const/4 v5, 0x0

    .line 3521
    invoke-interface {v1, v4, v3, v2, v5}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 3527
    const-string v1, "volte_setting setEnhanced4gLteModeSetting with service not ready yet."

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3528
    :catch_0
    move-exception v1

    .line 3529
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "volte_setting setEnhanced4gLteModeSetting with exception."

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3530
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_3

    .line 3533
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Fail to setEnhanced4gLteModeSetting because imsMgr is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3535
    :cond_3
    :goto_3
    return-void
.end method

.method private setNotificationVirtual(II)V
    .locals 12
    .param p1, "slot"    # I
    .param p2, "status"    # I

    .line 2064
    const-string v0, "Volte status"

    .line 2065
    .local v0, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2066
    .local v1, "detail":Ljava/lang/String;
    const-string v2, "Volte Icon"

    .line 2067
    .local v2, "notificationTag":Ljava/lang/String;
    add-int/lit8 v3, p1, 0x1

    .line 2068
    .local v3, "simId":I
    move v4, v3

    .line 2070
    .local v4, "notificationId":I
    const-string v5, "ro.vendor.mtk_ims_notification"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_0

    .line 2071
    return-void

    .line 2073
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Show setNotificationVirtual(): slot = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2075
    new-instance v5, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/mediatek/ims/ImsService;->IMSSERVICE_NOTIFICATION_NAME:Ljava/lang/CharSequence;

    const/4 v9, 0x3

    const-string v10, "ImsService"

    invoke-direct {v5, v10, v8, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2077
    .local v5, "channel":Landroid/app/NotificationChannel;
    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 2078
    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 2081
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    const-string v9, "IMS "

    if-nez p2, :cond_1

    .line 2082
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " IN SERVICE"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2084
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " NOT IN SERVICE"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2087
    :goto_0
    invoke-virtual {v8, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 2088
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x108008a

    .line 2089
    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 2090
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 2091
    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 2092
    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2093
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, -0x1

    .line 2094
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2095
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2096
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 2098
    .local v6, "notification":Landroid/app/Notification;
    const-string v7, "Volte Icon"

    invoke-virtual {v8, v7, v4, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 2100
    return-void
.end method

.method private startWfoService()V
    .locals 1

    .line 701
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mTempDisableWFC:[Z

    .line 703
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfoService;->getInstance(Landroid/content/Context;)Lcom/mediatek/wfo/impl/WfoService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WfoService;->makeWfoService()V

    .line 704
    return-void
.end method

.method private toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "before"    # Ljava/lang/String;

    .line 3752
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3753
    const-string v0, ""

    return-object v0

    .line 3756
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3757
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3758
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3759
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, v0, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3758
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3762
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toHexString before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3763
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updateAssociatedUriChanged(I[Landroid/net/Uri;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "uris"    # [Landroid/net/Uri;

    .line 1746
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mLockUri:Ljava/lang/Object;

    monitor-enter v0

    .line 1747
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/MtkImsRegistrationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1748
    .local v1, "imsReg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    if-eqz v1, :cond_0

    .line 1750
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] updateAssociatedUriChanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uris="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ImsService"

    invoke-static {v3, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {v1, p2}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1753
    :catch_0
    move-exception v2

    .line 1754
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to updateAssociatedUriChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1755
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    goto :goto_1

    .line 1757
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is not ImsRegistrationImpl for slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1759
    .end local v1    # "imsReg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    :goto_1
    monitor-exit v0

    .line 1760
    return-void

    .line 1759
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private updateCapabilityChange(II[I[I)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "imsExtInfo"    # I
    .param p3, "enabledFeatures"    # [I
    .param p4, "disabledFeatures"    # [I

    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCapabilityChange phoneId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " + imsExtInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1847
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1848
    const/4 v1, -0x1

    aput v1, p3, v0

    .line 1849
    aput v1, p4, v0

    .line 1847
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1852
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v0, v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v3, :cond_1

    .line 1854
    aput v2, p3, v2

    .line 1856
    aput v1, p3, v1

    goto :goto_1

    .line 1859
    :cond_1
    aput v2, p4, v2

    .line 1861
    aput v1, p4, v1

    .line 1865
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v0, v0, p1

    const/16 v1, 0x8

    if-eq v0, v4, :cond_2

    and-int/lit8 v0, p2, 0x8

    if-ne v0, v1, :cond_2

    .line 1867
    aput v3, p3, v3

    goto :goto_2

    .line 1870
    :cond_2
    aput v3, p4, v3

    .line 1874
    :goto_2
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    const-string v2, "[WFC]IMS_VOICE_OVER_WIFI"

    const/4 v5, 0x5

    if-eqz v0, :cond_4

    .line 1875
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v0, v0, p1

    if-ne v0, v4, :cond_3

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mTempDisableWFC:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_3

    .line 1878
    aput v4, p3, v4

    .line 1880
    aput v5, p3, v5

    .line 1882
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1884
    :cond_3
    aput v4, p4, v4

    .line 1886
    aput v5, p4, v5

    goto :goto_3

    .line 1890
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v0, v0, p1

    if-ne v0, v4, :cond_5

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v3, :cond_5

    .line 1892
    aput v4, p3, v4

    .line 1894
    aput v5, p3, v5

    .line 1896
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1898
    :cond_5
    aput v4, p4, v4

    .line 1900
    aput v5, p4, v5

    .line 1907
    :goto_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v0, v0, p1

    const/4 v2, 0x3

    if-ne v0, v4, :cond_6

    and-int/lit8 v0, p2, 0x8

    if-ne v0, v1, :cond_6

    .line 1909
    aput v2, p3, v2

    .line 1911
    const-string v0, "[WFC]IMS_VIDEO_OVER_WIFI"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 1913
    :cond_6
    aput v2, p4, v2

    .line 1917
    :goto_4
    return-void
.end method

.method private updateImsRegistrationRat(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "rat"    # I

    .line 3906
    const-string v0, "vodata"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IVoDataService;

    move-result-object v0

    .line 3908
    .local v0, "iVoDataService":Lcom/mediatek/ims/internal/IVoDataService;
    if-eqz v0, :cond_0

    .line 3909
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsRegistrationRat : VoDataStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3910
    invoke-interface {v0, p1, p2}, Lcom/mediatek/ims/internal/IVoDataService;->setImsPdnStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3912
    :catch_0
    move-exception v1

    .line 3913
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "updateImsRegistrationRat error"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3914
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 3915
    :goto_1
    return-void
.end method

.method private updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "state"    # I
    .param p3, "imsRadioTech"    # I
    .param p4, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3405
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/MtkImsRegistrationImpl;

    .line 3406
    .local v0, "imsReg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    if-eqz v0, :cond_3

    .line 3408
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " updateImsRegstration, tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->logi(Ljava/lang/String;)V

    .line 3410
    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 3418
    :cond_0
    invoke-virtual {v0, p4}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 3415
    :cond_1
    invoke-virtual {v0, p3}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onRegistered(I)V

    .line 3416
    goto :goto_0

    .line 3412
    :cond_2
    invoke-virtual {v0, p3}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->onRegistering(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3413
    goto :goto_0

    .line 3420
    :catch_0
    move-exception v1

    .line 3421
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to updateImsRegstration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3422
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    goto :goto_1

    .line 3424
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is not ImsRegistrationImpl for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3426
    :goto_1
    return-void
.end method

.method private updateImsRegstrationEx(IIILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "state"    # I
    .param p3, "tech"    # I
    .param p4, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1765
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1767
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    if-eqz v0, :cond_1

    .line 1768
    monitor-enter v0

    .line 1769
    if-nez p2, :cond_0

    .line 1770
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/-$$Lambda$ImsService$9tmNOyFUa3Yi5q4Wz7Vu1HVnsjs;

    invoke-direct {v1, p0, p3}, Lcom/mediatek/ims/-$$Lambda$ImsService$9tmNOyFUa3Yi5q4Wz7Vu1HVnsjs;-><init>(Lcom/mediatek/ims/ImsService;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1779
    :cond_0
    new-instance v1, Lcom/mediatek/ims/-$$Lambda$ImsService$oXEquH1mAVMnGhV-gsn4CyK_UQQ;

    invoke-direct {v1, p4}, Lcom/mediatek/ims/-$$Lambda$ImsService$oXEquH1mAVMnGhV-gsn4CyK_UQQ;-><init>(Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 1787
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1789
    :cond_1
    :goto_1
    return-void
.end method

.method private updateUtCapabilityChange(I[I[I)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    .line 1976
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1977
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/MtkSuppServExt;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkSuppServExt;->getUtCapabilityFromSettings()I

    move-result v0

    .line 1978
    .local v0, "utCap":I
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP09:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-static {v1, p1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1979
    const-string v1, "persist.vendor.mtk_ct_volte_support"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move v1, v3

    .line 1980
    .local v1, "isUtDefaultEnabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUtCapabilityChange, add Ut capability, utCap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isUtDefaultEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1983
    if-eq v0, v2, :cond_1

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1984
    :cond_1
    const/4 v2, 0x4

    aput v2, p2, v2

    .line 1988
    .end local v0    # "utCap":I
    .end local v1    # "isUtDefaultEnabled":Z
    :cond_2
    return-void
.end method


# virtual methods
.method public acknowledgeLastIncomingCdmaSms(IZI)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I

    .line 3140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeLastIncomingCdmaSms, success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3141
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, p2, p3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->acknowledgeLastIncomingCdmaSmsEx(ZILandroid/os/Message;)V

    .line 3142
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(IZI)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I

    .line 3135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeLastIncomingGsmSms, success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3136
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, p2, p3, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 3137
    return-void
.end method

.method bindAndRegisterWifiOffloadService()V
    .locals 2

    .line 1635
    sget-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-nez v0, :cond_1

    .line 1637
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->checkAndBindWifiOffloadService()V

    .line 1638
    sget-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v0, :cond_0

    .line 1640
    nop

    .line 1641
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->createWifiOffloadListenerProxy()Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    move-result-object v1

    .line 1640
    invoke-interface {v0, v1}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1642
    :catch_0
    move-exception v0

    .line 1643
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "can\'t register handover event"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1644
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1646
    :cond_0
    const/4 v0, 0x0

    const-string v1, "persist.vendor.mtk_wfc_support"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1647
    const-string v0, "can\'t get WifiOffloadService"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1651
    :cond_1
    :goto_1
    return-void
.end method

.method public changeEnabledCapabilities(ILandroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 3769
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3770
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v0, p2}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->updateCapbilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    goto :goto_0

    .line 3772
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is not IMtkMmTelFeatureCallback for slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3774
    :goto_0
    return-void
.end method

.method public cleanMtkCallSessionProxyIfNeed(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;I)V
    .locals 5
    .param p1, "cs"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p2, "isMtCall"    # Z
    .param p3, "callId"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanMtkCallSessionProxyIfNeed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 907
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aget-object v2, v1, p4

    if-eqz v2, :cond_1

    .line 908
    aget-object v1, v1, p4

    invoke-virtual {v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    .line 910
    .local v1, "pendingMTsession":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanMtkCallSessionProxyIfNeed : mMtkPendingMT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aget-object v3, v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", pendingMTsession = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 913
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aput-object v0, v2, p4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :cond_0
    goto :goto_0

    .line 916
    :catch_0
    move-exception v2

    .line 921
    .end local v1    # "pendingMTsession":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 923
    .local v1, "aospCallSessionImpl":Lcom/android/ims/internal/IImsCallSession;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanMtkCallSessionProxyIfNeed : aospCallSessionImpl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 925
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 927
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 929
    .local v2, "mtk_cs":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanMtkCallSessionProxyIfNeed : mtk_cs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 931
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    invoke-virtual {v2, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 934
    .end local v2    # "mtk_cs":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    invoke-virtual {p1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    .line 938
    :cond_2
    return-void
.end method

.method protected clearImsRilRequest()V
    .locals 3

    .line 3918
    const-string v0, "clearImsRilRequest()"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3919
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    if-ge v0, v1, :cond_1

    .line 3920
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 3921
    aget-object v1, v1, v0

    check-cast v1, Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->clearRequestList(IZ)V

    .line 3919
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3924
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public convertUri(Ljava/lang/String;)[Landroid/net/Uri;
    .locals 10
    .param p1, "xui"    # Ljava/lang/String;

    .line 3781
    if-nez p1, :cond_0

    .line 3782
    const/4 v0, 0x0

    return-object v0

    .line 3784
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3785
    .local v0, "ids":[Ljava/lang/String;
    array-length v1, v0

    .line 3786
    .local v1, "len":I
    new-array v2, v1, [Landroid/net/Uri;

    .line 3788
    .local v2, "uris":[Landroid/net/Uri;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 3789
    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3790
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 3791
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3792
    const-string v6, "empty XUI"

    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3793
    goto :goto_1

    .line 3795
    :cond_1
    const-string v6, "[@;:]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3796
    .local v6, "numberParts":[Ljava/lang/String;
    array-length v7, v6

    if-nez v7, :cond_2

    .line 3797
    const-string v7, "no number in XUI handle"

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3798
    goto :goto_1

    .line 3800
    :cond_2
    const/4 v7, 0x0

    aget-object v5, v6, v7

    .line 3801
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v2, v3

    .line 3803
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMS: convertUri() uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v3

    const-string v9, "ImsService"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3788
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "numberParts":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3805
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method protected deregisterIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1188
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterIms() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1190
    return-void

    .line 1192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterIms, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1193
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1194
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterIms, MainCapabilityPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v1, p1

    const/16 v2, 0x10

    .line 1198
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1197
    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->deregisterIms(Landroid/os/Message;)V

    .line 1199
    return-void
.end method

.method public deregisterImsWithCause(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "cause"    # I

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterImsWithCause, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1207
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterImsWithCause, MainCapabilityPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v1, p1

    const/16 v2, 0x10

    .line 1212
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1211
    invoke-interface {v0, p2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->deregisterImsWithCause(ILandroid/os/Message;)V

    .line 1213
    return-void
.end method

.method public disableIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOffIms, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->onTurnOffIms(I)V

    .line 1072
    return-void
.end method

.method public enableIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnIms phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->onTurnOnIms(I)V

    .line 1059
    return-void
.end method

.method public explicitCallTransfer(ILandroid/os/Message;Landroid/os/Messenger;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "target"    # Landroid/os/Messenger;

    .line 3195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "explicitCallTransfer: phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3197
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    .line 3198
    .local v0, "imsCallTracker":Lcom/mediatek/ims/ImsServiceCallTracker;
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getFgCall()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v1

    .line 3200
    .local v1, "fgCallSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    if-eqz v1, :cond_0

    .line 3201
    invoke-virtual {v1, p2, p3}, Lcom/mediatek/ims/ImsCallSessionProxy;->explicitCallTransferWithCallback(Landroid/os/Message;Landroid/os/Messenger;)V

    goto :goto_0

    .line 3204
    :cond_0
    const/4 v2, 0x0

    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 3207
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3210
    goto :goto_0

    .line 3208
    :catch_0
    move-exception v2

    .line 3209
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3212
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public fallBackAospMTFlow(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 3705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fallBackAospMTFlow: phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3706
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingSocketId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 3707
    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/ImsService;->sendIncomingCallIndication(ILandroid/os/AsyncResult;)V

    .line 3709
    :cond_0
    iput v1, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingSocketId:I

    .line 3710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

    .line 3711
    return-void
.end method

.method getCurrentCallCount(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .line 3060
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 3065
    :cond_0
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCurrentCallCount()I

    move-result v0

    return v0

    .line 3061
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS: getCurrentCallCount() phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3062
    const/4 v0, 0x0

    return v0
.end method

.method public getImsConfigManager()Lcom/mediatek/ims/ImsConfigManager;
    .locals 1

    .line 1587
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    return-object v0
.end method

.method public getImsNetworkState(I)[I
    .locals 1
    .param p1, "capability"    # I

    .line 3094
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->getImsNetworkState(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getImsRILAdapter(I)Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .locals 2
    .param p1, "phoneId"    # I

    .line 1580
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsRILAdapter phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mImsRILAdapter is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getImsRegUriType(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 1157
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsRegUriType() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", use phone 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1159
    const/4 p1, 0x0

    .line 1161
    :cond_0
    const/4 v0, 0x1

    .line 1162
    .local v0, "uri_type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ril.ims.extinfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v2, v2, p1

    if-nez v2, :cond_1

    .line 1165
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1167
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsRegUriType, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "uri_type ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1169
    return v0
.end method

.method public getImsServiceState(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .line 1366
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1367
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result p1

    .line 1369
    :cond_0
    if-ltz p1, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1373
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    return v0

    .line 1370
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1371
    const/4 v0, 0x3

    return v0
.end method

.method protected getImsState(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .line 1144
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsState() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", use phone 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1146
    const/4 p1, 0x0

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsState:[I

    aget v0, v0, p1

    return v0
.end method

.method public getModemMultiImsCount()I
    .locals 4

    .line 1381
    const-string v0, "getModemMultiImsCount"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1382
    nop

    .line 1383
    const-string v0, "ro.vendor.md_mims_support"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1384
    .local v0, "mdMultiImsCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mdMultiImsCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1385
    if-ne v0, v1, :cond_0

    .line 1386
    const-string v1, "MD Multi IMS Count not initialized"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->logw(Ljava/lang/String;)V

    .line 1388
    :cond_0
    return v0
.end method

.method public getRatType(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 2822
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSubIdUsingPhoneId(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 3448
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 3449
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 3450
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 3451
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 3453
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSubIdUsingPhoneId] volte_setting subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3454
    return v1
.end method

.method public getWfcRegErrorCode(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 3820
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWfcRegErrorCode:[I

    aget v0, v0, p1

    return v0
.end method

.method public isImsEccSupported(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 3069
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImsEccSupportedWhenNormalService(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 3073
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsImsEccSupported:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportCFT(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 3549
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    monitor-enter v0

    .line 3550
    const/4 v1, 0x0

    .line 3551
    .local v1, "isSupport":Z
    :try_start_0
    sget-object v2, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3552
    sget-object v2, Lcom/mediatek/ims/ImsService;->sMtkSSExt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/MtkSuppServExt;

    invoke-virtual {v2}, Lcom/mediatek/ims/MtkSuppServExt;->isSupportCFT()Z

    move-result v2

    move v1, v2

    .line 3554
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportCFT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3555
    monitor-exit v0

    return v1

    .line 3556
    .end local v1    # "isSupport":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$notifyImsRegInd$6$ImsService(Lcom/mediatek/ims/ImsRegInfo;[Landroid/net/Uri;Landroid/telephony/ims/ImsReasonInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;)V
    .locals 2
    .param p1, "info"    # Lcom/mediatek/ims/ImsRegInfo;
    .param p2, "uris"    # [Landroid/net/Uri;
    .param p3, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p4, "l"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    .line 3661
    :try_start_0
    iget v0, p1, Lcom/mediatek/ims/ImsRegInfo;->mReportType:I

    iget v1, p1, Lcom/mediatek/ims/ImsRegInfo;->mExpireTime:I

    invoke-interface {p4, v0, p2, v1, p3}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;->onRegistrationImsStateChanged(I[Landroid/net/Uri;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3665
    goto :goto_0

    .line 3663
    :catch_0
    move-exception v0

    .line 3664
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "onRegistrationImsStateChanged failed!!"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3666
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyRedirectIncomingCall$7$ImsService(ILandroid/os/AsyncResult;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .param p3, "l"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    .line 3690
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;->onRedirectIncomingCallIndication(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3693
    goto :goto_0

    .line 3691
    :catch_0
    move-exception v0

    .line 3692
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "onRedirectIncomingCallIndication failed!!"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3694
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyRegistrationAssociatedUriChange$0$ImsService([Landroid/net/Uri;Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1735
    :try_start_0
    invoke-interface {p2, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1738
    goto :goto_0

    .line 1736
    :catch_0
    move-exception v0

    .line 1737
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "handle self identify update failed!!"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1739
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyRegistrationErrorCode$5$ImsService(ILcom/mediatek/ims/internal/IMtkImsRegistrationListener;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "l"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    .line 3262
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call notifyRegistrationErrorCode with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3263
    invoke-interface {p2, p1}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;->onRegistrationErrorCodeIndication(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3266
    goto :goto_0

    .line 3264
    :catch_0
    move-exception v0

    .line 3265
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "notifyRegistrationErrorCode failed!!"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3267
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$resetXuiAndNotify$4$ImsService([Landroid/net/Uri;Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 3085
    :try_start_0
    invoke-interface {p2, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3088
    goto :goto_0

    .line 3086
    :catch_0
    move-exception v0

    .line 3087
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "clear self identify failed!!"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3089
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$updateImsRegstrationEx$1$ImsService(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "tech"    # I
    .param p2, "l"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1772
    :try_start_0
    invoke-interface {p2, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnectedWithRadioTech(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    goto :goto_0

    .line 1773
    :catch_0
    move-exception v0

    .line 1775
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IMS: l.registrationConnectedWithRadioTech failed"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1777
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public mapPhoneIdToServiceId(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 1357
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public notifyIncomingCallSession(ILcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 3368
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3370
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v0, p2, p3}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3373
    goto :goto_0

    .line 3371
    :catch_0
    move-exception v0

    .line 3372
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to notifyIncomingCallSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3375
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyUtCapabilityChange(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUtCapabilityChange, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1970
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v0, p1

    aget-object v0, v0, p1

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1972
    return-void
.end method

.method protected onAddImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 3099
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddImsSmsListener() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3101
    return-void

    .line 3103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddImsSmsListener: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3104
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsSmsListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 3105
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/aidl/IImsSmsListener;>;"
    monitor-enter v0

    .line 3106
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3108
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3110
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS SMS listener set size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3112
    monitor-exit v0

    .line 3113
    return-void

    .line 3112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAddRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;Z)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "serviceType"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p4, "mtklistener"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .param p5, "notifyOnly"    # Z

    .line 791
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddRegistrationListener() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 793
    return-void

    .line 795
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAddRegistrationListener: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mtklistener= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " notifyOnly= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    if-eqz p5, :cond_1

    const-string v1, "true"

    goto :goto_0

    :cond_1
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 798
    if-nez p5, :cond_3

    .line 799
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 800
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    monitor-enter v0

    .line 801
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 802
    const-string v1, "listener already exist"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 804
    :cond_2
    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener set size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 807
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 810
    .end local v0    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v1, v0, p1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    .line 811
    aget v0, v0, p1

    invoke-direct {p0, p1, v0, v3}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(IIZ)V

    .line 814
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    if-nez v0, :cond_5

    .line 815
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v0, v0, p1

    invoke-direct {p0, p1, v0, v3}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(IIZ)V

    .line 817
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    .line 818
    .local v0, "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    .line 821
    .end local v0    # "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    :cond_5
    if-nez p5, :cond_7

    .line 822
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 823
    .local v0, "mtklisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;>;"
    monitor-enter v0

    .line 824
    :try_start_1
    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 825
    const-string v1, "mtklistener already exist"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 827
    :cond_6
    invoke-virtual {v0, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtklistener set size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMtkListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 830
    :goto_3
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 833
    .end local v0    # "mtklisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;>;"
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInd:[Lcom/mediatek/ims/ImsRegInfo;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p4, p1}, Lcom/mediatek/ims/ImsService;->notifyImsRegInd(Lcom/mediatek/ims/ImsRegInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;I)V

    .line 834
    return-void
.end method

.method protected onClose(I)V
    .locals 4
    .param p1, "serviceId"    # I

    .line 741
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    move v1, p1

    .line 745
    .local v1, "phoneId":I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 746
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mediatek/ims/ImsEcbmProxy;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/ims/internal/IImsEcbm;->setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    :cond_0
    goto :goto_0

    .line 752
    .end local v1    # "phoneId":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 748
    .restart local v1    # "phoneId":I
    :catch_0
    move-exception v2

    .line 752
    .end local v1    # "phoneId":I
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 753
    return-void

    .line 752
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCreateCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .line 837
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p2, p3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    return-object v0
.end method

.method public onCreateCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 843
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/ImsService;->onCreateCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public onCreateCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 12
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateCallSessionProxy: serviceId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " profile ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " listener ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 851
    const/4 v0, 0x0

    .line 852
    .local v0, "sessionListener":Landroid/telephony/ims/ImsCallSessionListener;
    if-eqz p3, :cond_0

    .line 853
    new-instance v1, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v1, p3}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    move-object v0, v1

    .line 856
    :cond_0
    move v9, p1

    .line 857
    .local v9, "phoneId":I
    new-instance v10, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v1, v9

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v1, v9

    move-object v1, v10

    move-object v3, p2

    move-object v4, v0

    move-object v5, p0

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    .line 860
    .local v10, "cs":Lcom/mediatek/ims/ImsCallSessionProxy;
    new-instance v11, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v6, v1, v9

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v1, v9

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    .line 863
    .local v1, "mtk_cs":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    invoke-virtual {v1, v10}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 864
    invoke-virtual {v10, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateCallSessionProxy: cs.getServiceImpl() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 868
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    return-object v10
.end method

.method public onCreateMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .param p4, "aospCallSessionImpl"    # Lcom/android/ims/internal/IImsCallSession;

    .line 878
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/ImsService;->onCreateMtkCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public onCreateMtkCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/MtkImsCallSessionProxy;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .param p4, "aospCallSessionImpl"    # Lcom/android/ims/internal/IImsCallSession;

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateMtkCallSessionProxy: aospCallSessionImpl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateMtkCallSessionProxy: containsKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 888
    const/4 v0, 0x0

    .line 890
    .local v0, "mtk_cs":Lcom/mediatek/ims/MtkImsCallSessionProxy;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 893
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    :cond_0
    return-object v0
.end method

.method public onGetConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 2
    .param p1, "phoneId"    # I

    .line 1038
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetConfigInterface() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", use phone 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1040
    const/4 p1, 0x0

    .line 1042
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1043
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    goto :goto_0

    .line 1045
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterMWIService()V

    .line 1048
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigManager:Lcom/mediatek/ims/ImsConfigManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsConfigManager;->get(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    return-object v0
.end method

.method protected onGetEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 2
    .param p1, "serviceId"    # I

    .line 1082
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->onGetEcbmProxy(I)Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v0

    .line 1084
    .local v0, "imsEcbmImplBase":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    if-nez v0, :cond_0

    .line 1085
    const/4 v1, 0x0

    return-object v1

    .line 1087
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    return-object v1
.end method

.method public onGetEcbmProxy(I)Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 5
    .param p1, "serviceId"    # I

    .line 1094
    move v0, p1

    .line 1096
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 1097
    new-instance v2, Lcom/mediatek/ims/ImsEcbmProxy;

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v4, v4, v0

    invoke-direct {v2, v3, v4, v0}, Lcom/mediatek/ims/ImsEcbmProxy;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    aput-object v2, v1, v0

    .line 1099
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsEcbm:[Lcom/mediatek/ims/ImsEcbmProxy;

    aget-object v1, v1, v0

    return-object v1
.end method

.method protected onGetMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;
    .locals 3
    .param p1, "phoneId"    # I

    .line 1016
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetMtkUtInterface() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", use phone 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1018
    const/4 p1, 0x0

    .line 1020
    :cond_0
    const/4 v0, 0x0

    .line 1021
    .local v0, "inst":Lcom/mediatek/ims/internal/IMtkImsUt;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1022
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p0}, Lcom/mediatek/ims/MtkImsUtImpl;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/MtkImsUtImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->getInterface()Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v0

    goto :goto_0

    .line 1024
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeLegacyComponentFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    move-result-object v1

    .line 1025
    .local v1, "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p0}, Lcom/mediatek/ims/plugin/LegacyComponentFactory;->makeMtkImsUt(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/feature/MtkImsUtImplBase;

    move-result-object v2

    .line 1026
    .local v2, "utImpl":Lcom/mediatek/ims/feature/MtkImsUtImplBase;
    if-eqz v2, :cond_2

    .line 1027
    invoke-virtual {v2}, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->getInterface()Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v0

    .line 1031
    .end local v1    # "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    .end local v2    # "utImpl":Lcom/mediatek/ims/feature/MtkImsUtImplBase;
    :cond_2
    :goto_0
    return-object v0
.end method

.method protected onGetMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2
    .param p1, "serviceId"    # I

    .line 1116
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->onGetMultiEndpointProxy(I)Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v0

    .line 1118
    .local v0, "imsMultiendPoinImplBase":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    if-nez v0, :cond_0

    .line 1119
    const/4 v1, 0x0

    return-object v1

    .line 1121
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    return-object v1
.end method

.method public onGetMultiEndpointProxy(I)Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 4
    .param p1, "serviceId"    # I

    .line 1125
    move v0, p1

    .line 1127
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetMultiEndpointProxy phoneId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1128
    iget v1, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    if-lt v0, v1, :cond_0

    .line 1129
    const/4 v1, 0x0

    return-object v1

    .line 1131
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpoints:[Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    .line 1132
    new-instance v2, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetMultiEndpointProxy instance is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpoints:[Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1135
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMultiEndpoints:[Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    aget-object v1, v1, v0

    return-object v1
.end method

.method protected onGetPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 971
    move v0, p1

    .line 974
    .local v0, "phoneId":I
    iget v1, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 979
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetPendingCallSession() : serviceId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mPendingMT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 982
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 985
    .local v1, "pendingMTsession":Lcom/android/ims/internal/IImsCallSession;
    :try_start_0
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 986
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:[Lcom/mediatek/ims/ImsCallSessionProxy;

    aput-object v2, v3, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    return-object v1

    .line 991
    :cond_1
    goto :goto_0

    .line 989
    :catch_0
    move-exception v3

    .line 993
    :goto_0
    return-object v2

    .line 975
    .end local v1    # "pendingMTsession":Lcom/android/ims/internal/IImsCallSession;
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetPendingCallSession() : no pendingMT or wrong phoneId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 976
    return-object v2
.end method

.method onGetPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 2924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetPendingMtkCallSession() : callId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2928
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mNumOfPhones:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aget-object v2, v0, p1

    if-nez v2, :cond_0

    goto :goto_1

    .line 2932
    :cond_0
    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 2935
    .local v0, "pendingMTsession":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2936
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v2

    .line 2938
    .local v2, "aospCallSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetPendingMtkCallSession() : aospCallSession = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 2940
    if-eqz v2, :cond_1

    .line 2941
    invoke-virtual {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 2943
    .local v3, "aospCallSessionImpl":Lcom/android/ims/internal/IImsCallSession;
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2944
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mPendingMtkImsCallSessionProxy:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2947
    .end local v3    # "aospCallSessionImpl":Lcom/android/ims/internal/IImsCallSession;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mMtkPendingMT:[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    aput-object v1, v3, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2949
    return-object v0

    .line 2953
    .end local v2    # "aospCallSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    :cond_2
    goto :goto_0

    .line 2951
    :catch_0
    move-exception v2

    .line 2955
    :goto_0
    return-object v1

    .line 2929
    .end local v0    # "pendingMTsession":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :cond_3
    :goto_1
    return-object v1
.end method

.method protected onGetUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 3
    .param p1, "phoneId"    # I

    .line 1000
    const/4 v0, 0x0

    .line 1001
    .local v0, "inst":Lcom/android/ims/internal/IImsUt;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p0}, Lcom/mediatek/ims/ImsUtImpl;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsUtImpl;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    goto :goto_0

    .line 1004
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeLegacyComponentFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    move-result-object v1

    .line 1005
    .local v1, "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p0}, Lcom/mediatek/ims/plugin/LegacyComponentFactory;->makeImsUt(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v2

    .line 1006
    .local v2, "utImpl":Landroid/telephony/ims/stub/ImsUtImplBase;
    if-eqz v2, :cond_1

    .line 1007
    invoke-virtual {v2}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    .line 1011
    .end local v1    # "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    .end local v2    # "utImpl":Landroid/telephony/ims/stub/ImsUtImplBase;
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected onHangupAllCall(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1177
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHangupAllCall() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1179
    return-void

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hangupAllCall(Landroid/os/Message;)V

    .line 1182
    return-void
.end method

.method protected onIsConnected(III)Z
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIsConnected: serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 764
    move v0, p1

    .line 765
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onIsOpened(I)Z
    .locals 3
    .param p1, "serviceId"    # I

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIsOpened: serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 775
    move v0, p1

    .line 776
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 778
    .local v1, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected onOpen(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpen: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->mapPhoneIdToServiceId(I)I

    move-result v0

    .line 735
    .local v0, "serviceId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpen: serviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 736
    return v0
.end method

.method protected onRunGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;
    .locals 9
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "phoneId"    # I

    .line 946
    invoke-static {p5}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRunGbaAuthentication() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", use phone 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 948
    const/4 p5, 0x0

    .line 950
    :cond_0
    new-instance v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$1;)V

    .line 951
    .local v0, "result":Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v1, p5

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 953
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 954
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v3, v3, p5

    .line 955
    invoke-static {p2}, Lcom/mediatek/ims/ImsCommonUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    .line 954
    move-object v4, p1

    move v6, p3

    move v7, p4

    move-object v8, v1

    invoke-interface/range {v3 .. v8}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->runGbaAuthentication(Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    :try_start_1
    iget-object v3, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 961
    goto :goto_0

    .line 958
    :catch_0
    move-exception v3

    .line 959
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "onRunGbaAuthentication() InterruptedException occured"

    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 960
    const/4 v4, 0x2

    iput v4, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    .line 962
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRunGbaAuthentication complete, nafSessionKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->nafSessionKey:Lcom/mediatek/gba/NafSessionKey;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cmdResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 966
    iget-object v2, v0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->nafSessionKey:Lcom/mediatek/gba/NafSessionKey;

    return-object v2

    .line 962
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method protected onSetCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callNum"    # Ljava/lang/String;
    .param p4, "seqNum"    # I
    .param p5, "toNumber"    # Ljava/lang/String;
    .param p6, "isAllow"    # Z
    .param p7, "cause"    # I

    .line 2855
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->enforceModifyPermission()V

    .line 2857
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetCallIndication() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2859
    return-void

    .line 2861
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

    const-string v1, ", seqNum:"

    const-string v2, "onSetCallIndication() error callId:"

    if-eqz v0, :cond_2

    .line 2862
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mRedirectIncomingAsyncResult:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    .line 2863
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq p4, v0, :cond_4

    .line 2864
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2865
    return-void

    .line 2868
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMTCallId:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMTSeqNum:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 2869
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq p4, v0, :cond_3

    goto :goto_0

    .line 2873
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMTSeqNum:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p1

    .line 2876
    :cond_4
    invoke-direct/range {p0 .. p7}, Lcom/mediatek/ims/ImsService;->setCallIndicationInternal(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 2877
    return-void

    .line 2870
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 2871
    return-void
.end method

.method protected onSetRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetRegistrationListener: serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method protected onSetUiTTYMode(IILandroid/os/Message;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetUiTTYMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1107
    move v0, p1

    .line 1109
    .local v0, "phoneId":I
    return-void
.end method

.method protected onTurnOffIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOffIms, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1076
    return-void
.end method

.method protected onTurnOnIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnIms phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method protected onUpdateImsSate(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 1704
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateImsSate() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1706
    return-void

    .line 1708
    :cond_0
    const-string v0, "request onUpdateImsSate for ImsManager add local registrant"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1709
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v1, v0, p1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 1710
    aget v0, v0, p1

    invoke-direct {p0, p1, v0, v3}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(IIZ)V

    .line 1713
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v0, v0, p1

    if-nez v0, :cond_2

    .line 1714
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    .line 1715
    .local v0, "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v1, v1, p1

    invoke-direct {p0, p1, v1, v3}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(IIZ)V

    .line 1716
    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationAssociatedUriChange(Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    .line 1718
    .end local v0    # "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    :cond_2
    return-void
.end method

.method public sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 13
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "smsc"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z
    .param p7, "pdu"    # [B

    .line 3121
    move-object v0, p0

    move v1, p1

    move v10, p2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSms() error phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3123
    return-void

    .line 3125
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSms, token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", messageRef "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3126
    iget-object v2, v0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v2, v2, v1

    const/16 v3, 0x1c

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    .line 3127
    .local v12, "response":Landroid/os/Message;
    iget-object v2, v0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, v1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object v9, v12

    invoke-interface/range {v2 .. v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V

    .line 3128
    return-void
.end method

.method public setImsPreCallInfo(IILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 18
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "fromUri"    # Ljava/lang/String;
    .param p6, "location"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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

    .line 3827
    .local p5, "extraHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    const-string v5, "1"

    const-string v6, ","

    const-string v7, ""

    if-nez p5, :cond_0

    if-eqz v2, :cond_6

    .line 3828
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3830
    .local v8, "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 3831
    .local v9, "headerCount":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3832
    .local v10, "headerValuePair":Ljava/lang/StringBuilder;
    if-eqz p5, :cond_2

    .line 3833
    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->size()I

    move-result v11

    .line 3834
    .local v11, "size":I
    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 3835
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3836
    .local v14, "key":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3837
    .local v15, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v12

    const-string v12, "setImsPreCallInfo key: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", value: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3838
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v14}, Lcom/mediatek/ims/ImsService;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Lcom/mediatek/ims/ImsService;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3839
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    move-object/from16 v12, v16

    goto :goto_0

    .line 3840
    :cond_1
    add-int/2addr v9, v11

    .line 3843
    .end local v11    # "size":I
    :cond_2
    if-eqz v2, :cond_3

    .line 3844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "f"

    invoke-direct {v0, v11}, Lcom/mediatek/ims/ImsService;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsService;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3845
    add-int/lit8 v9, v9, 0x1

    .line 3849
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3850
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3851
    .local v4, "header":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setImsPreCallInfo headerValuePair: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3853
    const/16 v11, 0x3e8

    .line 3854
    .local v11, "maxLength":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3855
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3856
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    div-int/2addr v12, v11

    add-int/lit8 v12, v12, 0x1

    .line 3857
    .local v12, "total":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3858
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3859
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3860
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3861
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_1
    if-gt v13, v12, :cond_5

    .line 3862
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3863
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v13, -0x1

    mul-int/lit16 v14, v14, 0x3e8

    mul-int/lit16 v2, v13, 0x3e8

    move/from16 v17, v9

    .end local v9    # "headerCount":I
    .local v17, "headerCount":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 3864
    mul-int/lit16 v2, v13, 0x3e8

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 3863
    :goto_2
    invoke-virtual {v4, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3865
    iget-object v2, v0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, p1

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallAdditionalInfo(Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 3861
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p4

    move/from16 v9, v17

    goto :goto_1

    .end local v17    # "headerCount":I
    .restart local v9    # "headerCount":I
    :cond_5
    move/from16 v17, v9

    .line 3870
    .end local v4    # "header":Ljava/lang/String;
    .end local v8    # "headerInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "headerCount":I
    .end local v10    # "headerValuePair":Ljava/lang/StringBuilder;
    .end local v11    # "maxLength":I
    .end local v12    # "total":I
    .end local v13    # "i":I
    :cond_6
    if-eqz v3, :cond_8

    .line 3871
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3873
    .local v2, "locationInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3874
    .local v4, "locationString":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v9, v3

    if-ge v8, v9, :cond_7

    .line 3875
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v3, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3874
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3879
    .end local v8    # "i":I
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3880
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3881
    const-string v6, "2"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3882
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3883
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3884
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3885
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3886
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setImsPreCallInfo locationString: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3887
    iget-object v5, v0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallAdditionalInfo(Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 3889
    .end local v2    # "locationInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "locationString":Ljava/lang/StringBuilder;
    :cond_8
    return-void
.end method

.method public setImsRegistration(ILcom/mediatek/ims/MtkImsRegistrationImpl;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "imsRegImpl"    # Lcom/mediatek/ims/MtkImsRegistrationImpl;

    .line 3378
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3379
    if-eqz p2, :cond_1

    .line 3380
    sget-object v0, Lcom/mediatek/ims/ImsService;->sMtkImsRegImpl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3381
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:[I

    aget v1, v0, p1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 3382
    aget v1, v0, p1

    if-nez v1, :cond_0

    .line 3384
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->getRadioTech(I)I

    move-result v0

    .line 3385
    .local v0, "radioTech":I
    const/4 v1, 0x2

    .line 3387
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->convertImsRegistrationTech(I)I

    move-result v2

    const/4 v3, 0x0

    .line 3385
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "radioTech":I
    goto :goto_0

    .line 3388
    :catch_0
    move-exception v0

    .line 3389
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to get radio tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 3390
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 3391
    :cond_0
    aget v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3392
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->createImsReasonInfo(I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 3393
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/4 v1, -0x1

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3399
    .end local v0    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    :goto_1
    return-void
.end method

.method public setMTRedirect(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 3701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMTRedirect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3702
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mIsMTredirect:[Z

    aput-boolean p2, v0, p1

    .line 3703
    return-void
.end method

.method public setMmTelFeatureCallback(ILcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "c"    # Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    .line 3291
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3292
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3293
    sget-object v0, Lcom/mediatek/ims/ImsService;->mMmTelFeatureCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3294
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-interface {p2, v0}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->notifyContextChanged(Landroid/content/Context;)V

    .line 3297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.MTK_MMTEL_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3298
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.ims"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3299
    const-string v1, "android:phone_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3300
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3303
    const/4 v1, 0x6

    new-array v2, v1, [I

    .line 3304
    .local v2, "enabledFeatures":[I
    new-array v1, v1, [I

    .line 3305
    .local v1, "disabledFeatures":[I
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v3, v3, p1

    invoke-direct {p0, p1, v3, v2, v1}, Lcom/mediatek/ims/ImsService;->updateCapabilityChange(II[I[I)V

    .line 3308
    invoke-direct {p0, p1, v2, v1}, Lcom/mediatek/ims/ImsService;->updateUtCapabilityChange(I[I[I)V

    .line 3311
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v3

    .line 3312
    .local v3, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:[I

    aget v4, v4, p1

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 3313
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 3315
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/mediatek/ims/ImsService;->notifyCapabilityChanged(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 3317
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "disabledFeatures":[I
    .end local v2    # "enabledFeatures":[I
    .end local v3    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :cond_1
    return-void
.end method

.method public setSipHeader(ILjava/util/HashMap;Ljava/lang/String;)V
    .locals 10
    .param p1, "phoneId"    # I
    .param p3, "fromUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3716
    .local p2, "extraHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSipHeader phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraHeaders: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3718
    const/4 v0, 0x0

    .line 3719
    .local v0, "headerCount":I
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 3720
    return-void

    .line 3723
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3724
    .local v1, "headerValuePair":Ljava/lang/StringBuilder;
    const-string v2, ","

    if-eqz p2, :cond_2

    .line 3725
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 3726
    .local v3, "size":I
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3727
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3728
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3729
    .local v7, "value":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSipHeader key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3730
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/ims/ImsService;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3731
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_0

    .line 3732
    :cond_1
    add-int/2addr v0, v3

    .line 3735
    .end local v3    # "size":I
    :cond_2
    if-eqz p3, :cond_3

    .line 3736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3737
    add-int/lit8 v0, v0, 0x1

    .line 3741
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSipHeader headerValuePair: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3745
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v3, v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v7, "0"

    invoke-interface/range {v3 .. v8}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setSipHeader(IIILjava/lang/String;Landroid/os/Message;)V

    .line 3748
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v5, v0

    invoke-interface/range {v2 .. v7}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setSipHeader(IIILjava/lang/String;Landroid/os/Message;)V

    .line 3749
    return-void
.end method

.method public setWfcRegErrorCode(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "errorCode"    # I

    .line 3816
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWfcRegErrorCode:[I

    aput p2, v0, p1

    .line 3817
    return-void
.end method

.method public setWfcRegErrorCodeWithPdn(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "errorCode"    # I

    .line 3809
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWfcPdnState:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    .line 3811
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mWfcRegErrorCode:[I

    aput p2, v0, p1

    .line 3813
    :cond_0
    return-void
.end method

.method public updateRadioState(II)V
    .locals 11
    .param p1, "radioState"    # I
    .param p2, "phoneId"    # I

    .line 1222
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRadioState() error phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1224
    return-void

    .line 1227
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRadioState, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " radioState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsService;->bindAndRegisterWifiOffloadService()V

    .line 1231
    sget-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v0, :cond_1

    .line 1233
    :try_start_0
    invoke-interface {v0, p2, p1}, Lcom/mediatek/wfo/IWifiOffloadService;->updateRadioState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1234
    :catch_0
    move-exception v0

    .line 1235
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "can\'t update radio state"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1236
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1238
    :cond_1
    const-string v0, "can\'t get WifiOffloadService"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->loge(Ljava/lang/String;)V

    .line 1241
    :goto_1
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1242
    invoke-static {p2}, Lcom/mediatek/ims/ImsCommonUtil;->isPhoneIdSupportIms(I)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRadioState() not support IMS, phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    aput-object v1, v0, p2

    .line 1245
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    aput-object v1, v0, p2

    .line 1246
    return-void

    .line 1249
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move v3, v2

    :cond_3
    move v0, v3

    .line 1252
    .local v0, "isAirPlaneMode":Z
    if-eqz v0, :cond_4

    .line 1253
    return-void

    .line 1257
    :cond_4
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v3

    .line 1260
    .local v3, "simState":I
    const/16 v4, 0xa

    if-eq v3, v4, :cond_a

    .line 1263
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    const-string v5, "carrier_volte_available_bool"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1265
    .local v4, "defaultSupportVolte":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultSupportVolte = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1266
    if-nez v4, :cond_5

    .line 1268
    return-void

    .line 1271
    :cond_5
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    .line 1272
    .local v5, "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v6, 0x0

    .line 1273
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v5, :cond_6

    .line 1274
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 1276
    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    .line 1277
    .local v7, "iccid":Ljava/lang/String;
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsService;->isOp09SimCard(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1278
    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mWaitSubInfoChange:[Z

    aget-boolean v8, v8, p2

    if-eqz v8, :cond_a

    .line 1279
    :cond_9
    const-string v1, "updateRadioState CT sim state isn\'t loaded, don\'t update."

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 1280
    return-void

    .line 1285
    .end local v4    # "defaultSupportVolte":Z
    .end local v5    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v7    # "iccid":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x2

    if-eq v4, p1, :cond_14

    .line 1286
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, p2

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1287
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, p2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1289
    :cond_b
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, p2

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1290
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v4, v4, p2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1293
    :cond_c
    invoke-static {p2}, Lcom/mediatek/ims/OperatorUtils;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v4

    .line 1295
    .local v4, "currentMccmnc":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    aget-object v5, v5, p2

    if-eqz v5, :cond_d

    .line 1296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRadioState, mImsConfigMccmnc[phoneId]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", currentMccmnc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    goto :goto_3

    .line 1300
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRadioState, mImsConfigMccmnc[phoneId] is null, currentMccmnc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 1304
    :goto_3
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    .line 1305
    .restart local v5    # "subMgr":Landroid/telephony/SubscriptionManager;
    const/4 v6, 0x0

    .line 1306
    .restart local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    const/4 v7, 0x0

    .line 1308
    .local v7, "currentIccid":Ljava/lang/String;
    if-eqz v5, :cond_e

    .line 1309
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 1312
    :cond_e
    if-eqz v6, :cond_f

    .line 1313
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    .line 1316
    :cond_f
    if-nez v7, :cond_10

    .line 1317
    const-string v7, ""

    .line 1320
    :cond_10
    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    aget-object v8, v8, p2

    const-string v9, "ImsService"

    if-eqz v8, :cond_11

    .line 1321
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateRadioState, mImsConfigIccid[phoneId]: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    aget-object v10, v10, p2

    .line 1322
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", currentIccid: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    invoke-static {v9, v7}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1321
    invoke-direct {p0, v8}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    goto :goto_4

    .line 1325
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateRadioState, mImsConfigIccid[phoneId] is null, currentIccid: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-static {v9, v7}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1325
    invoke-direct {p0, v8}, Lcom/mediatek/ims/ImsService;->englog(Ljava/lang/String;)V

    .line 1331
    :goto_4
    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    aget-object v9, v8, p2

    if-eqz v9, :cond_12

    aget-object v8, v8, p2

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    aget-object v8, v8, p2

    .line 1332
    invoke-virtual {v8, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_12

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    aget-object v9, v8, p2

    if-eqz v9, :cond_12

    aget-object v8, v8, p2

    .line 1333
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    aget-object v1, v1, p2

    .line 1334
    invoke-virtual {v1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 1335
    :cond_12
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-nez v1, :cond_13

    .line 1336
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v1

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 1337
    invoke-interface {v1, v8}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 1340
    :cond_13
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsConfigMccmnc:[Ljava/lang/String;

    aput-object v4, v1, p2

    .line 1341
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsConfigIccid:[Ljava/lang/String;

    aput-object v7, v1, p2

    .line 1343
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    iget-object v8, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v8, p2, v2}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 1348
    .end local v0    # "isAirPlaneMode":Z
    .end local v3    # "simState":I
    .end local v4    # "currentMccmnc":Ljava/lang/String;
    .end local v5    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v7    # "currentIccid":Ljava/lang/String;
    :cond_14
    return-void
.end method

.method public updateSelfIdentity(I)V
    .locals 3
    .param p1, "phondId"    # I

    .line 3441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSelfIdentity, send EVENT_SELF_IDENTIFY_UPDATE, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->log(Ljava/lang/String;)V

    .line 3442
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mHandler:[Landroid/os/Handler;

    aget-object v1, v0, p1

    aget-object v0, v0, p1

    .line 3443
    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3442
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3444
    return-void
.end method

.class public Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.source "MtkImsPhoneCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPullCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;
    }
.end annotation


# static fields
.field private static final EVENT_RESUME_BACKROUND_CALL:I = 0x68

.field private static final EVENT_RETRY_DATA_ENABLED_CHANGED:I = 0x69

.field private static final EVENT_ROAMING_OFF:I = 0x66

.field private static final EVENT_ROAMING_ON:I = 0x65

.field private static final EVENT_ROAMING_SETTING_CHANGE:I = 0x67

.field private static final IMS_RTT_CALL_TYPE_CS:I = 0x0

.field private static final IMS_RTT_CALL_TYPE_CS_NO_TTY:I = 0x3

.field private static final IMS_RTT_CALL_TYPE_PS:I = 0x2

.field private static final IMS_RTT_CALL_TYPE_RTT:I = 0x1

.field public static final IMS_SESSION_MODIFY_OPERATION_FLAG:I = 0x8000

.field private static final IMS_VIDEO_CALL:I = 0x15

.field private static final IMS_VIDEO_CONF:I = 0x17

.field private static final IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final IMS_VOICE_CALL:I = 0x14

.field private static final IMS_VOICE_CONF:I = 0x16

.field private static final IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final INVALID_CALL_MODE:I = 0xff

.field static final LOG_TAG:Ljava/lang/String; = "MtkImsPhoneCallTracker"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field private static final TELDBG:Z


# instance fields
.field private mCallsDisconnectedDuringSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private mCarrierSwitchWfcModeRequired:Z

.field private mDialAsECC:Z

.field private mIgnoreClirWhenEcc:Z

.field private mIgnoreDataRoaming:Z

.field protected mImsBaseReceiver:Landroid/content/BroadcastReceiver;

.field private mImsRegistrationErrorCode:I

.field private mImsRttCallType:I

.field private mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;

.field private mIncomingCallCheker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

.field private mIndicationReceiver:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;

.field private mIsDataRoaming:Z

.field private mIsDataRoamingSettingEnabled:Z

.field private mIsImsEccSupported:Z

.field private mIsOnCallResumed:Z

.field private mIsRttCallMergeSupported:Z

.field private mIsRttEmcGuardTimerSupported:Z

.field private mLastDataEnabledReason:I

.field private mMtkImsCallListener:Lcom/android/ims/ImsCall$Listener;

.field private mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field protected final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mRoamingVariablesInited:Z

.field private mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

.field private final mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mWifiPdnOOSState:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 146
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->SENLOG:Z

    .line 147
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    sput-boolean v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .registers 9
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 303
    sget-object v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;)V

    .line 150
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    const-string v1, "RG"

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 151
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    const-string v1, "FG"

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 152
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    const-string v1, "BG"

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 153
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    const-string v1, "HO"

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mDialAsECC:Z

    .line 163
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsOnCallResumed:Z

    .line 170
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttEmcGuardTimerSupported:Z

    .line 172
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsImsEccSupported:Z

    .line 174
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mWifiPdnOOSState:I

    .line 178
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRoamingVariablesInited:Z

    .line 181
    new-instance v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$1;

    invoke-direct {v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$1;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 208
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    .line 209
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    .line 210
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIgnoreDataRoaming:Z

    .line 211
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIgnoreClirWhenEcc:Z

    .line 214
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCarrierSwitchWfcModeRequired:Z

    .line 216
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttCallMergeSupported:Z

    .line 221
    iput v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIncomingCallCheker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    .line 246
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCallsDisconnectedDuringSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 248
    new-instance v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$2;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;

    .line 851
    new-instance v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$3;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMtkImsCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 1303
    new-instance v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$4;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$4;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsBaseReceiver:Landroid/content/BroadcastReceiver;

    .line 1321
    new-instance v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$5;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$5;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1336
    new-instance v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;-><init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIndicationReceiver:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;

    .line 304
    new-instance v1, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    .line 305
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttEmcGuardTimerSupported:Z

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->setRttEmcGuardTimerSupported(Z)V

    .line 309
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->registerIndicationReceiver()V

    .line 311
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 312
    .local v1, "intentfilter":Landroid/content/IntentFilter;
    const-string v4, "com.mediatek.ims.MTK_IMS_SERVICE_UP"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsBaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 316
    .local v4, "multiSimConfigChanged":Landroid/content/IntentFilter;
    const-string v5, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    new-instance v5, Lcom/android/internal/telephony/SettingsObserver;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 320
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->registerSettingsObserver()V

    .line 322
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 323
    invoke-virtual {v5, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 326
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const/16 v5, 0x65

    invoke-virtual {v2, p0, v5, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 328
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const/16 v5, 0x66

    invoke-virtual {v2, p0, v5, v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 332
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->initRttEmcGuardTimer()V

    .line 333
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRoamingVariablesInited:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRoamingVariablesInited:Z

    return p1
.end method

.method static synthetic access$1101(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$1201(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$1301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # I

    .line 142
    iput p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I

    return p1
.end method

.method static synthetic access$1601(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$1701(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$1801(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$1901(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2101(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$2201(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$2301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$2401(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$2501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 142
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getConnectionCallId(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800()Z
    .registers 1

    .line 142
    sget-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->SENLOG:Z

    return v0
.end method

.method static synthetic access$2900()Z
    .registers 1

    .line 142
    sget-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->TELDBG:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsImsEccSupported:Z

    return p1
.end method

.method static synthetic access$3101(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$3201(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$3301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$3401(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$3501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3701(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3901(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4101(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4301(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$4401(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$4501(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$4601(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # I

    .line 142
    iput p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mWifiPdnOOSState:I

    return p1
.end method

.method static synthetic access$5100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/mediatek/ims/MtkImsConnectionStateListener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIncomingCallCheker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;)Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    .line 142
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIncomingCallCheker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 142
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->notifyRttImsRegister(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$901(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method private getCallNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;
    .registers 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1601
    if-nez p1, :cond_4

    .line 1602
    const/4 v0, 0x0

    return-object v0

    .line 1605
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1606
    const-string v0, "conferenceCall"

    return-object v0

    .line 1608
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConnectionCallId(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;)Ljava/lang/String;
    .registers 5
    .param p1, "conn"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 1579
    const-string v0, ""

    if-nez p1, :cond_5

    .line 1580
    return-object v0

    .line 1583
    :cond_5
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getCallId()I

    move-result v1

    .line 1584
    .local v1, "callId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 1585
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getCallIdBeforeDisconnected()I

    move-result v1

    .line 1586
    if-ne v1, v2, :cond_13

    .line 1587
    return-object v0

    .line 1590
    :cond_13
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isEmergencyNumber(Ljava/lang/String;)Z
    .registers 3
    .param p1, "dialString"    # Ljava/lang/String;

    .line 1648
    invoke-static {}, Lcom/mediatek/internal/telephony/imsphone/MtkLocalPhoneNumberUtils;->getIsEmergencyNumber()Z

    move-result v0

    return v0
.end method

.method private isRttCall(Lcom/android/ims/ImsCall;)Z
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 610
    if-eqz p1, :cond_d

    .line 611
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v0

    return v0

    .line 613
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private isRttCallInvolved(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z
    .registers 6
    .param p1, "fgImsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "bgImsCall"    # Lcom/android/ims/ImsCall;

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "ret":Z
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isRttCall(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isRttCall(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 603
    :cond_d
    const/4 v0, 0x1

    .line 605
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRttCallInvolved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 606
    return v0
.end method

.method private isRttCallMergeSupported()Z
    .registers 3

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRttCallMergeSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttCallMergeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 618
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttCallMergeSupported:Z

    return v0
.end method

.method private isTestSim()Z
    .registers 4

    .line 2211
    const/4 v0, 0x0

    .line 2212
    .local v0, "isTestSim":Z
    const-string v1, "vendor.gsm.sim.ril.testsim"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 2213
    const-string v1, "vendor.gsm.sim.ril.testsim.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 2214
    const-string v1, "vendor.gsm.sim.ril.testsim.3"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 2215
    const-string v1, "vendor.gsm.sim.ril.testsim.4"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_36

    :cond_34
    const/4 v1, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v1, 0x1

    :goto_37
    move v0, v1

    .line 2216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTestSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2217
    return v0
.end method

.method private notifyRttImsRegister(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .registers 8
    .param p1, "capability"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 2161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRttImsRegister: capability:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2163
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2164
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2165
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2166
    .local v1, "audioManager":Landroid/media/AudioManager;
    const/4 v2, 0x1

    if-eqz v0, :cond_59

    if-nez v1, :cond_36

    goto :goto_59

    .line 2172
    :cond_36
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isRttSupported()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 2173
    nop

    .line 2174
    invoke-virtual {p1, v2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v2

    .line 2175
    .local v2, "isVoiceCapability":Z
    if-eqz v2, :cond_4e

    .line 2176
    const-string v3, "ims_rtt_capability=1"

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2177
    const-string v3, "notifyRttImsRegister: set audio RTT capability"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_58

    .line 2179
    :cond_4e
    const-string v3, "ims_rtt_capability=0"

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2180
    const-string v3, "notifyRttImsRegister: remove audio RTT capability"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2183
    .end local v2    # "isVoiceCapability":Z
    :cond_58
    :goto_58
    return-void

    .line 2167
    :cond_59
    :goto_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRttImsRegister: telephony = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-nez v0, :cond_68

    move v5, v2

    goto :goto_69

    :cond_68
    move v5, v4

    :goto_69
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", audioManager = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_74

    goto :goto_75

    :cond_74
    move v2, v4

    :goto_75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2169
    return-void
.end method

.method private onDataRoamingEnabledChanged(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataRoamingEnabledChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1950
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsViLteDataMetered:Z

    const-string v1, "enabled"

    const-string v2, "disabled"

    if-nez v0, :cond_3a

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataRoamingEnabledChanged: Ignore data "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move-object v1, v2

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - carrier policy indicates that data is not metered for ViLTE calls."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1953
    return-void

    .line 1956
    :cond_3a
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIgnoreDataRoaming:Z

    if-eqz v0, :cond_5c

    .line 1957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataRoaming: Ignore data "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    move-object v1, v2

    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - carrier policy indicates that ignore data roaming"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1959
    return-void

    .line 1962
    :cond_5c
    if-eqz p1, :cond_68

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataEnabled:Z

    if-nez v0, :cond_68

    .line 1963
    const-string v0, "onDataRoamingEnabledChanged: Ignore on when data off"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1964
    return-void

    .line 1969
    :cond_68
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1970
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 1971
    .local v2, "imsCall":Lcom/android/ims/ImsCall;
    if-nez p1, :cond_8b

    if-eqz v2, :cond_89

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v3

    if-eqz v3, :cond_89

    goto :goto_8b

    :cond_89
    const/4 v3, 0x0

    goto :goto_8c

    :cond_8b
    :goto_8b
    const/4 v3, 0x1

    .line 1972
    .local v3, "isLocalVideoCapable":Z
    :goto_8c
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setLocalVideoCapable(Z)V

    .line 1973
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v3    # "isLocalVideoCapable":Z
    goto :goto_6e

    .line 1975
    :cond_90
    const/4 v0, 0x2

    .line 1976
    .local v0, "reason":I
    const/16 v1, 0x57e

    .line 1980
    .local v1, "reasonCode":I
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->maybeNotifyDataDisabled(ZI)V

    .line 1982
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->handleDataEnabledChange(ZI)V

    .line 1986
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    if-nez v2, :cond_a8

    if-eqz v0, :cond_a8

    .line 1990
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v2, :cond_a8

    .line 1991
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->updateImsServiceConfig()V

    .line 1994
    :cond_a8
    return-void
.end method

.method private registerIndicationReceiver()V
    .registers 4

    .line 1437
    const-string v0, "registerIndicationReceiver"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1439
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1440
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.ims.IMS_INCOMING_CALL_INDICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1441
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIndicationReceiver:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1443
    return-void
.end method

.method private sendRttSrvccOrCsfbEvent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .registers 7
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRttSrvccOrCsfbEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2101
    if-nez p1, :cond_1c

    .line 2102
    const-string v0, "sendRttSrvccOrCsfbEvent no call"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 2103
    return-void

    .line 2105
    :cond_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isRttCall(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2106
    const-string v0, "sendRttSrvccOrCsfbEvent: not for RTT call"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2107
    return-void

    .line 2109
    :cond_2c
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hasConnections()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2110
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 2111
    .local v0, "activeCall":Lcom/android/ims/ImsCall;
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 2112
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_56

    if-eqz v1, :cond_56

    .line 2113
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_51

    .line 2115
    const-string v2, "mediatek.telecom.event.EVENT_CSFB"

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_56

    .line 2119
    :cond_51
    const-string v2, "mediatek.telecom.event.EVENT_SRVCC"

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2124
    .end local v0    # "activeCall":Lcom/android/ims/ImsCall;
    .end local v1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_56
    :goto_56
    return-void
.end method

.method public static sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .line 1798
    sget-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->SENLOG:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->TELDBG:Z

    if-eqz v0, :cond_9

    goto :goto_c

    .line 1801
    :cond_9
    const-string v0, "[hidden]"

    return-object v0

    .line 1799
    :cond_c
    :goto_c
    const-string v0, "MtkImsPhoneCallTracker"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setCallTerminationFlag(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .registers 5
    .param p1, "imsPhoneCall"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1484
    const-string v0, "setCallTerminationFlag"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1488
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_25

    .line 1489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallTerminationFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no ims call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1490
    return-void

    .line 1493
    :cond_25
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/MtkImsCall;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/MtkImsCall;->setTerminationRequestFlag(Z)V

    .line 1494
    return-void
.end method

.method private unregisterIndicationReceiver()V
    .registers 3

    .line 1446
    const-string v0, "unregisterIndicationReceiver"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1448
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIndicationReceiver:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$IncomingCallEventRecevier;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1449
    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .registers 7
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_38

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_38

    .line 561
    move v0, p1

    .line 563
    .local v0, "videoStateAfterCheckingData":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isDataAvailableForViLTE()Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 564
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v1

    if-nez v1, :cond_25

    .line 565
    const/4 v0, 0x0

    .line 566
    const-string v1, "Data is off, answer as voice call"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 569
    :cond_25
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    const-string v2, "CC"

    const-string v3, "Answer"

    const-string v4, ""

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 570
    invoke-super {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V

    .line 571
    return-void

    .line 557
    .end local v0    # "videoStateAfterCheckingData":I
    :cond_38
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x3

    const-string v2, "cannot accept call: SRVCC"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    monitor-enter p0

    .line 705
    :try_start_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 707
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 709
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->stopRttEmcGuardTimer()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 711
    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    :cond_f
    monitor-exit p0

    return-void

    .line 704
    .end local p1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected callEndCleanupHandOverCallIfAny()V
    .registers 5

    .line 658
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8a

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callEndCleanupHandOverCallIfAny, mHandoverCall.mConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 664
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SRVCC: remove connection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 665
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 666
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    goto :goto_2a

    .line 668
    :cond_51
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 669
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 670
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 673
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 674
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_8a

    .line 678
    const-string v0, "SRVCC: notify ImsPhone state as idle."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    .line 681
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCallsDisconnectedDuringSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 682
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getCallStateChangeAsyncResult()Landroid/os/AsyncResult;

    move-result-object v1

    .line 681
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 686
    :cond_8a
    return-void
.end method

.method protected canDailOnCallTerminated()Z
    .registers 2

    .line 1681
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v0, :cond_e

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public checkForDialIssues()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    instance-of v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 624
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->shouldProcessSelfActivation()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 625
    const-string v0, "IMS: checkForDialIssues(), bypass checkForDialIssues for self activation"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 626
    return-void

    .line 628
    :cond_22
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->checkForDialIssues()V

    .line 629
    return-void
.end method

.method protected checkIncomingCallInRttEmcGuardTime(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1732
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->checkIncomingCallInRttEmcGuardTime(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1733
    return-void
.end method

.method protected checkRttCallType()V
    .registers 9

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkRttCallType phone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "srvccState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2054
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-nez v0, :cond_2a

    goto/16 :goto_d9

    .line 2058
    :cond_2a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3a

    move v0, v2

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 2061
    .local v0, "imsRegistered":Z
    :goto_3b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    .line 2062
    .local v3, "imscall":Lcom/android/ims/ImsCall;
    const/4 v4, 0x0

    .line 2063
    .local v4, "isRttCall":Z
    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v6, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v5, v6, :cond_51

    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v6, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne v5, v6, :cond_4f

    goto :goto_51

    .line 2064
    :cond_4f
    move v5, v1

    goto :goto_52

    :cond_51
    :goto_51
    move v5, v2

    .line 2065
    .local v5, "isSrvcc":Z
    :goto_52
    if-eqz v3, :cond_64

    .line 2066
    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    .line 2067
    .local v6, "profile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v6, :cond_64

    .line 2068
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v7

    .line 2069
    .local v7, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    if-eqz v7, :cond_64

    .line 2070
    invoke-virtual {v7}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v4

    .line 2075
    .end local v6    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local v7    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_64
    iget v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I

    .line 2076
    .local v6, "preImsRttCallType":I
    if-ne v4, v2, :cond_6d

    if-nez v5, :cond_6d

    .line 2077
    iput v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I

    goto :goto_7c

    .line 2078
    :cond_6d
    if-nez v0, :cond_72

    .line 2079
    iput v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I

    goto :goto_7c

    .line 2080
    :cond_72
    if-ne v6, v2, :cond_7a

    if-ne v5, v2, :cond_7a

    .line 2081
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I

    goto :goto_7c

    .line 2086
    :cond_7a
    iput v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I

    .line 2089
    :goto_7c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRttCallType : old"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2090
    iget v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I

    if-eq v6, v1, :cond_d8

    .line 2091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set to audioManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2093
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2094
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2095
    .local v1, "audioManager":Landroid/media/AudioManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rtt_call_type="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsRttCallType:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2097
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :cond_d8
    return-void

    .line 2055
    .end local v0    # "imsRegistered":Z
    .end local v3    # "imscall":Lcom/android/ims/ImsCall;
    .end local v4    # "isRttCall":Z
    .end local v5    # "isSrvcc":Z
    .end local v6    # "preImsRttCallType":I
    :cond_d9
    :goto_d9
    return-void
.end method

.method protected checkforCsfb()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1657
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "cs_fallback"

    if-gtz v0, :cond_3b

    .line 1668
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 1670
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1671
    .local v0, "defaultPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_3a

    .line 1672
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_2f

    goto :goto_3a

    .line 1673
    :cond_2f
    const-string v2, "There are CS connections, trigger CSFB!"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1674
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1677
    .end local v0    # "defaultPhone":Lcom/android/internal/telephony/Phone;
    :cond_3a
    :goto_3a
    return-void

    .line 1658
    :cond_3b
    const-string v0, "SRVCC: there are connections during handover, trigger CSFB!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1659
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public conference()V
    .registers 5

    .line 584
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " merge with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 585
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 584
    const-string v2, "CC"

    const-string v3, "Conference"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v0, v1, :cond_30

    .line 589
    const-string v0, "Can\'t merge during swap call."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 590
    return-void

    .line 592
    :cond_30
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 593
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 592
    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isRttCallInvolved(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 594
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isRttCallMergeSupported()Z

    move-result v0

    if-nez v0, :cond_49

    .line 595
    return-void

    .line 597
    :cond_49
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->conference()V

    .line 598
    return-void
.end method

.method public declared-synchronized dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 6
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    monitor-enter p0

    .line 387
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_13

    .line 391
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1c

    monitor-exit p0

    return-object v0

    .line 388
    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    :cond_13
    :try_start_13
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x3

    const-string v2, "cannot dial call: SRVCC"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1c

    .line 386
    .end local p1    # "dialString":Ljava/lang/String;
    .end local p2    # "dialArgs":Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IIIILandroid/os/Bundle;)V
    .registers 23
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "clirMode"    # I
    .param p3, "videoState"    # I
    .param p4, "retryCallFailCause"    # I
    .param p5, "retryCallFailNetworkType"    # I
    .param p6, "intentExtras"    # Landroid/os/Bundle;

    .line 398
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    if-nez v2, :cond_9

    .line 399
    return-void

    .line 402
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isAdhocConference()Z

    move-result v0

    const-wide/16 v4, 0x1f4

    const/16 v6, 0x12

    if-nez v0, :cond_37

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x4e

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_37

    .line 406
    :cond_2f
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 407
    invoke-virtual {v1, v6, v4, v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 408
    return-void

    .line 412
    :cond_37
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->setMute(Z)V

    .line 417
    const/4 v7, 0x0

    .line 418
    .local v7, "isEmergencyCall":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isAdhocConference()Z

    move-result v8

    if-nez v8, :cond_4a

    .line 419
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    .line 423
    :cond_4a
    const/4 v8, 0x1

    if-eqz v7, :cond_4f

    .line 424
    const/4 v9, 0x2

    goto :goto_50

    :cond_4f
    move v9, v8

    .line 427
    .local v9, "serviceType":I
    :goto_50
    iget-boolean v10, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mDialAsECC:Z

    if-eqz v10, :cond_6f

    .line 428
    const/4 v9, 0x2

    .line 429
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dial as ECC: conn.getAddress(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 430
    iput-boolean v0, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mDialAsECC:Z

    .line 433
    :cond_6f
    invoke-static/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v10

    .line 435
    .local v10, "callType":I
    move/from16 v11, p3

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 438
    :try_start_78
    new-array v12, v8, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v0

    .line 439
    .local v12, "callees":[Ljava/lang/String;
    iget-object v13, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v13, v9, v10}, Lcom/android/ims/ImsManager;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v13

    .line 440
    .local v13, "profile":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isAdhocConference()Z

    move-result v14

    if-eqz v14, :cond_91

    .line 441
    const-string v14, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {v13, v14, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 443
    :cond_91
    const-string v14, "oir"
    :try_end_93
    .catch Lcom/android/ims/ImsException; {:try_start_78 .. :try_end_93} :catch_1aa
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_93} :catch_1a2

    move/from16 v15, p2

    :try_start_95
    invoke-virtual {v13, v14, v15}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 444
    const-string v14, "android.telephony.ims.extra.RETRY_CALL_FAIL_REASON"
    :try_end_9a
    .catch Lcom/android/ims/ImsException; {:try_start_95 .. :try_end_9a} :catch_1a0
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_9a} :catch_19e

    move/from16 v4, p4

    :try_start_9c
    invoke-virtual {v13, v14, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 446
    const-string v5, "android.telephony.ims.extra.RETRY_CALL_FAIL_NETWORKTYPE"
    :try_end_a1
    .catch Lcom/android/ims/ImsException; {:try_start_9c .. :try_end_a1} :catch_19c
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_a1} :catch_19a

    move/from16 v14, p5

    :try_start_a3
    invoke-virtual {v13, v5, v14}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 449
    if-eqz v7, :cond_ab

    .line 451
    invoke-virtual {v1, v13, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->setEmergencyCallInfo(Landroid/telephony/ims/ImsCallProfile;Lcom/android/internal/telephony/Connection;)V

    .line 456
    :cond_ab
    if-eqz v3, :cond_14a

    .line 457
    const-string v5, "android.telecom.extra.CALL_SUBJECT"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 458
    const-string v5, "DisplayText"

    const-string v6, "android.telecom.extra.CALL_SUBJECT"

    .line 459
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->cleanseInstantLetteringMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 458
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v5, "android.telephony.ims.extra.CALL_SUBJECT"

    const-string v6, "android.telecom.extra.CALL_SUBJECT"

    .line 463
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 462
    invoke-virtual {v13, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_cf
    const-string v5, "android.telecom.extra.PRIORITY"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e2

    .line 467
    const-string v5, "android.telephony.ims.extra.PRIORITY"

    const-string v6, "android.telecom.extra.PRIORITY"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v13, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 471
    :cond_e2
    const-string v5, "android.telecom.extra.LOCATION"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f5

    .line 472
    const-string v5, "android.telephony.ims.extra.LOCATION"

    const-string v6, "android.telecom.extra.LOCATION"

    .line 473
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .line 472
    invoke-virtual {v13, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 477
    :cond_f5
    const-string v5, "android.telecom.extra.OUTGOING_PICTURE"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 479
    iget-object v5, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 480
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v5

    const-string v6, "android.telecom.extra.OUTGOING_PICTURE"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 481
    invoke-virtual {v6}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    .line 479
    invoke-static {v5, v6}, Landroid/telephony/TelephonyLocalConnection;->getCallComposerServerUrlForHandle(ILjava/util/UUID;)Ljava/lang/String;

    move-result-object v5

    .line 482
    .local v5, "url":Ljava/lang/String;
    const-string v6, "android.telephony.ims.extra.PICTURE_URL"

    invoke-virtual {v13, v6, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .end local v5    # "url":Ljava/lang/String;
    :cond_118
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasRttTextStream()Z

    move-result v5

    if-eqz v5, :cond_122

    .line 486
    iget-object v5, v13, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v8, v5, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 489
    :cond_122
    const-string v5, "CallPull"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_143

    .line 490
    iget-object v5, v13, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v6, "CallPull"

    const-string v0, "CallPull"

    .line 491
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 490
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 492
    const-string v0, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 494
    .local v0, "dialogId":I
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setIsPulledCall(Z)V

    .line 495
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPulledDialogId(I)V

    .line 499
    .end local v0    # "dialogId":I
    :cond_143
    iget-object v0, v13, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v5, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 512
    :cond_14a
    array-length v0, v12

    if-ne v0, v8, :cond_15d

    const-string v0, "android.telephony.ims.extra.CONFERENCE"

    .line 513
    invoke-virtual {v13, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15d

    .line 514
    const-string v0, "oi"

    const/4 v5, 0x0

    aget-object v5, v12, v5

    invoke-virtual {v13, v0, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_15d
    monitor-enter p0
    :try_end_15e
    .catch Lcom/android/ims/ImsException; {:try_start_a3 .. :try_end_15e} :catch_198
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_15e} :catch_196

    .line 525
    :try_start_15e
    iget-object v0, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 526
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isAdhocConference()Z

    move-result v5

    if-eqz v5, :cond_16b

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getParticipantsToDial()[Ljava/lang/String;

    move-result-object v5

    goto :goto_16c

    :cond_16b
    move-object v5, v12

    :goto_16c
    iget-object v6, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMtkImsCallListener:Lcom/android/ims/ImsCall$Listener;

    .line 525
    invoke-virtual {v0, v13, v5, v6}, Lcom/android/ims/ImsManager;->makeCall(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 528
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsCall(Lcom/android/ims/ImsCall;)V

    .line 530
    iget-object v5, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v6

    .line 531
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v8

    .line 530
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStart(ILandroid/telephony/ims/ImsCallSession;)V

    .line 533
    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 534
    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAllowAddCallDuringVideoCall(Z)V

    .line 535
    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAllowHoldingVideoCall(Z)V

    .line 536
    .end local v0    # "imsCall":Lcom/android/ims/ImsCall;
    monitor-exit p0

    goto :goto_1e7

    :catchall_193
    move-exception v0

    monitor-exit p0
    :try_end_195
    .catchall {:try_start_15e .. :try_end_195} :catchall_193

    .end local v7    # "isEmergencyCall":Z
    .end local v9    # "serviceType":I
    .end local v10    # "callType":I
    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .end local p1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local p2    # "clirMode":I
    .end local p3    # "videoState":I
    .end local p4    # "retryCallFailCause":I
    .end local p5    # "retryCallFailNetworkType":I
    .end local p6    # "intentExtras":Landroid/os/Bundle;
    :try_start_195
    throw v0
    :try_end_196
    .catch Lcom/android/ims/ImsException; {:try_start_195 .. :try_end_196} :catch_198
    .catch Landroid/os/RemoteException; {:try_start_195 .. :try_end_196} :catch_196

    .line 542
    .end local v12    # "callees":[Ljava/lang/String;
    .end local v13    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .restart local v7    # "isEmergencyCall":Z
    .restart local v9    # "serviceType":I
    .restart local v10    # "callType":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
    .restart local p1    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .restart local p2    # "clirMode":I
    .restart local p3    # "videoState":I
    .restart local p4    # "retryCallFailCause":I
    .restart local p5    # "retryCallFailNetworkType":I
    .restart local p6    # "intentExtras":Landroid/os/Bundle;
    :catch_196
    move-exception v0

    goto :goto_1e8

    .line 537
    :catch_198
    move-exception v0

    goto :goto_1b1

    .line 542
    :catch_19a
    move-exception v0

    goto :goto_1a7

    .line 537
    :catch_19c
    move-exception v0

    goto :goto_1af

    .line 542
    :catch_19e
    move-exception v0

    goto :goto_1a5

    .line 537
    :catch_1a0
    move-exception v0

    goto :goto_1ad

    .line 542
    :catch_1a2
    move-exception v0

    move/from16 v15, p2

    :goto_1a5
    move/from16 v4, p4

    :goto_1a7
    move/from16 v14, p5

    goto :goto_1e8

    .line 537
    :catch_1aa
    move-exception v0

    move/from16 v15, p2

    :goto_1ad
    move/from16 v4, p4

    :goto_1af
    move/from16 v14, p5

    .line 538
    .local v0, "e":Lcom/android/ims/ImsException;
    :goto_1b1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialInternal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 539
    iget-object v5, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOperationLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialInternal exception: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 540
    const/16 v5, 0x24

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 541
    const-wide/16 v5, 0x1f4

    const/16 v8, 0x12

    invoke-virtual {v1, v8, v5, v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 543
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_1e7
    nop

    .line 544
    :goto_1e8
    return-void
.end method

.method protected disconnectPendingMo()V
    .registers 4

    .line 2200
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v0, :cond_22

    .line 2201
    const-string v0, "disconnectPendingMo"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    .line 2203
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    .line 2204
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 2205
    iput-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 2206
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->removeMessages(I)V

    .line 2208
    :cond_22
    return-void
.end method

.method public dispose()V
    .registers 4

    .line 337
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 339
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 340
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 341
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 343
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->clearDisconnected()V

    .line 344
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    if-eqz v0, :cond_25

    .line 345
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    invoke-interface {v0, p0}, Lcom/android/ims/ImsUtInterface;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 347
    :cond_25
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 348
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsBaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 352
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->unregisterIndicationReceiver()V

    .line 355
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 356
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    .line 357
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->resetImsCapabilities()V

    .line 358
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onFeatureCapabilityChanged()V

    .line 361
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->unregisterForDataEnabledChanged(Landroid/os/Handler;)V

    .line 362
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->disconnect()V

    .line 364
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    .line 365
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    .line 367
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 368
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 369
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SettingsObserver;->unobserve()V

    .line 372
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->disposeRttEmcGuardTimer()V

    .line 373
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->checkRttCallType()V

    .line 375
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_c0

    .line 377
    :try_start_a1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->removeImsConnectionStateListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    :try_end_aa
    .catch Lcom/android/ims/ImsException; {:try_start_a1 .. :try_end_aa} :catch_ab

    .line 380
    goto :goto_c0

    .line 378
    :catch_ab
    move-exception v0

    .line 379
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose() : removeRegistrationListener failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 382
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_c0
    :goto_c0
    return-void
.end method

.method protected getCallStateChangeAsyncResult()Landroid/os/AsyncResult;
    .registers 4

    .line 1726
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I
    .registers 5
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "callState"    # Lcom/android/internal/telephony/Call$State;

    .line 733
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v0

    .line 734
    .local v0, "code":I
    sparse-switch v0, :sswitch_data_a8

    .line 845
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I

    move-result v1

    return v1

    .line 745
    :sswitch_c
    const/16 v1, 0x193

    return v1

    .line 743
    :sswitch_f
    const/16 v1, 0x192

    return v1

    .line 741
    :sswitch_12
    const/16 v1, 0x191

    return v1

    .line 739
    :sswitch_15
    const/16 v1, 0x190

    return v1

    .line 749
    :sswitch_18
    const/16 v1, 0x3ee

    return v1

    .line 747
    :sswitch_1b
    const/16 v1, 0x3ed

    return v1

    .line 737
    :sswitch_1e
    const/16 v1, 0x17c

    return v1

    .line 838
    :sswitch_21
    const/16 v1, 0x3f3

    return v1

    .line 836
    :sswitch_24
    const/16 v1, 0x3f2

    return v1

    .line 834
    :sswitch_27
    const/16 v1, 0x3f0

    return v1

    .line 832
    :sswitch_2a
    const/16 v1, 0x3f1

    return v1

    .line 830
    :sswitch_2d
    const/16 v1, 0x603

    return v1

    .line 828
    :sswitch_30
    const/16 v1, 0x602

    return v1

    .line 826
    :sswitch_33
    const/16 v1, 0x601

    return v1

    .line 824
    :sswitch_36
    const/16 v1, 0x600

    return v1

    .line 822
    :sswitch_39
    const/16 v1, 0x5ff

    return v1

    .line 820
    :sswitch_3c
    const/16 v1, 0x5fe

    return v1

    .line 818
    :sswitch_3f
    const/16 v1, 0x5fd

    return v1

    .line 816
    :sswitch_42
    const/16 v1, 0x5fc

    return v1

    .line 814
    :sswitch_45
    const/16 v1, 0x5fb

    return v1

    .line 812
    :sswitch_48
    const/16 v1, 0x5fa

    return v1

    .line 810
    :sswitch_4b
    const/16 v1, 0x5f9

    return v1

    .line 808
    :sswitch_4e
    const/16 v1, 0x5f8

    return v1

    .line 806
    :sswitch_51
    const/16 v1, 0x5f7

    return v1

    .line 804
    :sswitch_54
    const/16 v1, 0x5f6

    return v1

    .line 802
    :sswitch_57
    const/16 v1, 0x5f5

    return v1

    .line 800
    :sswitch_5a
    const/16 v1, 0x5f4

    return v1

    .line 798
    :sswitch_5d
    const/16 v1, 0x5f3

    return v1

    .line 796
    :sswitch_60
    const/16 v1, 0x5f2

    return v1

    .line 794
    :sswitch_63
    const/16 v1, 0x5f1

    return v1

    .line 792
    :sswitch_66
    const/16 v1, 0x5f0

    return v1

    .line 790
    :sswitch_69
    const/16 v1, 0x5ef

    return v1

    .line 788
    :sswitch_6c
    const/16 v1, 0x5ee

    return v1

    .line 786
    :sswitch_6f
    const/16 v1, 0x5ed

    return v1

    .line 784
    :sswitch_72
    const/16 v1, 0x5ec

    return v1

    .line 782
    :sswitch_75
    const/16 v1, 0x5eb

    return v1

    .line 780
    :sswitch_78
    const/16 v1, 0x5ea

    return v1

    .line 778
    :sswitch_7b
    const/16 v1, 0x5e9

    return v1

    .line 776
    :sswitch_7e
    const/16 v1, 0x5e8

    return v1

    .line 774
    :sswitch_81
    const/16 v1, 0x5e7

    return v1

    .line 772
    :sswitch_84
    const/16 v1, 0x5e6

    return v1

    .line 770
    :sswitch_87
    const/16 v1, 0x5e5

    return v1

    .line 768
    :sswitch_8a
    const/16 v1, 0x5e4

    return v1

    .line 766
    :sswitch_8d
    const/16 v1, 0x5e3

    return v1

    .line 764
    :sswitch_90
    const/16 v1, 0x5e2

    return v1

    .line 762
    :sswitch_93
    const/16 v1, 0x5e1

    return v1

    .line 760
    :sswitch_96
    const/16 v1, 0x5e0

    return v1

    .line 758
    :sswitch_99
    const/16 v1, 0x5df

    return v1

    .line 756
    :sswitch_9c
    const/16 v1, 0x5de

    return v1

    .line 754
    :sswitch_9f
    const/16 v1, 0x5dd

    return v1

    .line 752
    :sswitch_a2
    const/16 v1, 0x5dc

    return v1

    .line 841
    :sswitch_a5
    const/16 v1, 0x51

    return v1

    :sswitch_data_a8
    .sparse-switch
        0x640 -> :sswitch_a5
        0x2328 -> :sswitch_a2
        0x2329 -> :sswitch_9f
        0x232a -> :sswitch_9c
        0x232b -> :sswitch_99
        0x232c -> :sswitch_96
        0x232d -> :sswitch_93
        0x232e -> :sswitch_90
        0x232f -> :sswitch_8d
        0x2330 -> :sswitch_8a
        0x2331 -> :sswitch_87
        0x2332 -> :sswitch_84
        0x2333 -> :sswitch_81
        0x2334 -> :sswitch_7e
        0x2335 -> :sswitch_7b
        0x2336 -> :sswitch_78
        0x2337 -> :sswitch_75
        0x2338 -> :sswitch_72
        0x2339 -> :sswitch_6f
        0x233a -> :sswitch_6c
        0x233b -> :sswitch_69
        0x233c -> :sswitch_66
        0x233d -> :sswitch_63
        0x233e -> :sswitch_60
        0x233f -> :sswitch_5d
        0x2340 -> :sswitch_5a
        0x2341 -> :sswitch_57
        0x2342 -> :sswitch_54
        0x2343 -> :sswitch_51
        0x2344 -> :sswitch_4e
        0x2345 -> :sswitch_4b
        0x2346 -> :sswitch_48
        0x2347 -> :sswitch_45
        0x2348 -> :sswitch_42
        0x2349 -> :sswitch_3f
        0x234a -> :sswitch_3c
        0x234b -> :sswitch_39
        0x234c -> :sswitch_36
        0x234d -> :sswitch_33
        0x234e -> :sswitch_30
        0x234f -> :sswitch_2d
        0x2350 -> :sswitch_2a
        0x2351 -> :sswitch_27
        0x2352 -> :sswitch_24
        0x2353 -> :sswitch_21
        0xf001 -> :sswitch_1e
        0xf002 -> :sswitch_1b
        0xf003 -> :sswitch_18
        0xf00b -> :sswitch_15
        0xf00c -> :sswitch_12
        0xf00d -> :sswitch_f
        0xf00e -> :sswitch_c
    .end sparse-switch
.end method

.method protected getHangupReasionInfo(IZ)I
    .registers 4
    .param p1, "disconnectCause"    # I
    .param p2, "rejectCall"    # Z

    .line 2129
    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_7

    .line 2130
    const/16 v0, 0x2350

    return v0

    .line 2131
    :cond_7
    const/16 v0, 0x3f2

    if-ne p1, v0, :cond_e

    .line 2132
    const/16 v0, 0x2352

    return v0

    .line 2133
    :cond_e
    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_15

    .line 2134
    const/16 v0, 0x2351

    return v0

    .line 2135
    :cond_15
    const/16 v0, 0x3f3

    if-ne p1, v0, :cond_1c

    .line 2136
    const/16 v0, 0x2353

    return v0

    .line 2141
    :cond_1c
    const/16 v0, 0x1f8

    return v0
.end method

.method protected getImsUssdCommandException(Landroid/telephony/ims/ImsReasonInfo;)Lcom/android/internal/telephony/CommandException;
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2227
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v1, 0xf1

    if-ne v0, v1, :cond_10

    .line 2228
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 2231
    :cond_10
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0
.end method

.method public getUtInterface()Lcom/android/ims/ImsUtInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1614
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_d

    .line 1618
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/MtkImsManager;->getSupplementaryServiceConfiguration()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1619
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    return-object v0

    .line 1615
    .end local v0    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1270
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    .line 1298
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_4f

    .line 1294
    :pswitch_1f
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataEnabled:Z

    iget v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mLastDataEnabledReason:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataEnabledChanged(ZI)V

    .line 1295
    goto :goto_4f

    .line 1285
    :pswitch_27
    :try_start_27
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unholdHeldCall()V
    :try_end_2c
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_27 .. :try_end_2c} :catch_2d

    .line 1290
    goto :goto_4f

    .line 1286
    :catch_2d
    move-exception v0

    .line 1288
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage EVENT_RESUME_BACKROUND_CALL exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1291
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    goto :goto_4f

    .line 1280
    :pswitch_43
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onRoamingSettingsChanged()V

    .line 1281
    goto :goto_4f

    .line 1276
    :pswitch_47
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingOff()V

    .line 1277
    goto :goto_4f

    .line 1272
    :pswitch_4b
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingOn()V

    .line 1273
    nop

    .line 1301
    :goto_4f
    return-void

    :pswitch_data_50
    .packed-switch 0x65
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_27
        :pswitch_1f
    .end packed-switch
.end method

.method public hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .registers 5
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_10

    .line 640
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 641
    return-void

    .line 636
    :cond_10
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x3

    const-string v2, "cannot hangup call: SRVCC"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;I)V
    .registers 6
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangup call with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq v0, v1, :cond_24

    .line 653
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;I)V

    .line 654
    return-void

    .line 649
    :cond_24
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x3

    const-string v2, "cannot hangup call: SRVCC"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method hangupAll()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1454
    const-string v0, "hangupAll"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    instance-of v0, v0, Lcom/mediatek/ims/internal/MtkImsManager;

    if-eqz v0, :cond_5f

    .line 1462
    :try_start_f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->hangupAllCall(I)V
    :try_end_1c
    .catch Lcom/android/ims/ImsException; {:try_start_f .. :try_end_1c} :catch_54

    .line 1465
    nop

    .line 1467
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1468
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->setCallTerminationFlag(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1469
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 1471
    :cond_2f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1472
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->setCallTerminationFlag(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1473
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 1475
    :cond_41
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1476
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->setCallTerminationFlag(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1477
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    .line 1479
    :cond_53
    return-void

    .line 1463
    :catch_54
    move-exception v0

    .line 1464
    .local v0, "e":Lcom/android/ims/ImsException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1458
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_5f
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "No MtkImsManager Instance"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected ignoreCarrierPauseSupport()Z
    .registers 2

    .line 1825
    const/4 v0, 0x1

    return v0
.end method

.method protected ignoreClirWhenEcc()Z
    .registers 2

    .line 2222
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIgnoreClirWhenEcc:Z

    return v0
.end method

.method protected ignoreConference(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z
    .registers 6
    .param p1, "fgImsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "bgImsCall"    # Lcom/android/ims/ImsCall;

    .line 2147
    const/4 v0, 0x1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_c

    goto :goto_1d

    .line 2152
    :cond_c
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getState()I

    move-result v1

    if-ne v1, v2, :cond_15

    goto :goto_17

    .line 2157
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 2153
    :cond_17
    :goto_17
    const-string v1, "conference: skip; background call state terminated"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2154
    return v0

    .line 2148
    :cond_1d
    :goto_1d
    const-string v1, "conference: skip; foreground call state terminated"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2149
    return v0
.end method

.method public initRoamingAndRoamingSetting()V
    .registers 4

    .line 1859
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    .line 1860
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    .line 1862
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    .line 1863
    .local v0, "imsMgr":Lcom/mediatek/ims/internal/MtkImsManager;
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->setDataRoamingSettingsEnabled(Z)V

    .line 1865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRoamingAndRoamingSetting, mIsDataRoaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDataRoamingSettingEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1867
    return-void
.end method

.method protected isCarrierPauseAllowed(Lcom/android/ims/ImsCall;)Z
    .registers 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 1810
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 1811
    const/4 v0, 0x0

    return v0

    .line 1813
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method protected isDataAvailableForViLTE()Z
    .registers 2

    .line 2048
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsViLteDataMetered:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataEnabled:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isRoamingOnAndRoamingSettingOff()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method protected isRoamingOnAndRoamingSettingOff()Z
    .registers 2

    .line 1998
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIgnoreDataRoaming:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isSupportImsEcc()Z
    .registers 2

    .line 299
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsImsEccSupported:Z

    return v0
.end method

.method protected isVTDataMeteredByOpid(Ljava/lang/String;)Z
    .registers 4
    .param p1, "optr"    # Ljava/lang/String;

    .line 2188
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

    .line 2189
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

    .line 2190
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_39

    .line 2194
    :cond_37
    const/4 v0, 0x1

    return v0

    .line 2191
    :cond_39
    :goto_39
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiPdnOutOfService()Z
    .registers 3

    .line 1830
    iget v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mWifiPdnOOSState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return v1
.end method

.method protected logDebugMessagesWithDumpFormat(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V
    .registers 9
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p3, "msg"    # Ljava/lang/String;

    .line 1546
    if-eqz p1, :cond_82

    if-eqz p2, :cond_82

    instance-of v0, p2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-nez v0, :cond_a

    goto/16 :goto_82

    .line 1550
    :cond_a
    move-object v0, p2

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 1551
    .local v0, "connExt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    new-instance v1, Lmediatek/telecom/FormattedLog$Builder;

    invoke-direct {v1}, Lmediatek/telecom/FormattedLog$Builder;-><init>()V

    .line 1552
    const-string v2, "CC"

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1553
    const-string v2, "ImsPhone"

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    sget-object v2, Lmediatek/telecom/FormattedLog$OpType;->DUMP:Lmediatek/telecom/FormattedLog$OpType;

    .line 1554
    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setOpType(Lmediatek/telecom/FormattedLog$OpType;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1555
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getCallNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1556
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getConnectionCallId(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1557
    invoke-virtual {v1, p3}, Lmediatek/telecom/FormattedLog$Builder;->setExtraMessage(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1558
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v1, v3, v2}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1559
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isMultiparty()Z

    move-result v2

    const-string v3, "No"

    if-eqz v2, :cond_55

    const-string v2, "Yes"

    goto :goto_56

    :cond_55
    move-object v2, v3

    :goto_56
    const-string v4, "isConfCall"

    invoke-virtual {v1, v4, v2}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1560
    const-string v2, "isConfChildCall"

    invoke-virtual {v1, v2, v3}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1561
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->getParentCallName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parent"

    invoke-virtual {v1, v3, v2}, Lmediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1562
    invoke-virtual {v1}, Lmediatek/telecom/FormattedLog$Builder;->buildDumpInfo()Lmediatek/telecom/FormattedLog;

    move-result-object v1

    .line 1564
    .local v1, "formattedLog":Lmediatek/telecom/FormattedLog;
    if-eqz v1, :cond_81

    .line 1565
    sget-boolean v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->SENLOG:Z

    if-eqz v2, :cond_7a

    sget-boolean v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->TELDBG:Z

    if-eqz v2, :cond_81

    .line 1566
    :cond_7a
    invoke-virtual {v1}, Lmediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1569
    :cond_81
    return-void

    .line 1548
    .end local v0    # "connExt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    .end local v1    # "formattedLog":Lmediatek/telecom/FormattedLog;
    :cond_82
    :goto_82
    return-void
.end method

.method protected logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V
    .registers 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p4, "msg"    # Ljava/lang/String;

    .line 1511
    if-eqz p1, :cond_51

    if-eqz p2, :cond_51

    if-nez p3, :cond_7

    goto :goto_51

    .line 1515
    :cond_7
    move-object v0, p3

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    .line 1516
    .local v0, "connExt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    new-instance v1, Lmediatek/telecom/FormattedLog$Builder;

    invoke-direct {v1}, Lmediatek/telecom/FormattedLog$Builder;-><init>()V

    .line 1517
    invoke-virtual {v1, p1}, Lmediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1518
    const-string v2, "ImsPhone"

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    sget-object v2, Lmediatek/telecom/FormattedLog$OpType;->OPERATION:Lmediatek/telecom/FormattedLog$OpType;

    .line 1519
    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setOpType(Lmediatek/telecom/FormattedLog$OpType;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1520
    invoke-virtual {v1, p2}, Lmediatek/telecom/FormattedLog$Builder;->setActionName(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1521
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getCallNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1522
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->getConnectionCallId(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1523
    invoke-virtual {v1, p4}, Lmediatek/telecom/FormattedLog$Builder;->setExtraMessage(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 1524
    invoke-virtual {v1}, Lmediatek/telecom/FormattedLog$Builder;->buildDebugMsg()Lmediatek/telecom/FormattedLog;

    move-result-object v1

    .line 1526
    .local v1, "formattedLog":Lmediatek/telecom/FormattedLog;
    if-eqz v1, :cond_50

    .line 1527
    sget-boolean v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->SENLOG:Z

    if-eqz v2, :cond_49

    sget-boolean v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->TELDBG:Z

    if-eqz v2, :cond_50

    .line 1528
    :cond_49
    invoke-virtual {v1}, Lmediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1531
    :cond_50
    return-void

    .line 1513
    .end local v0    # "connExt":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;
    .end local v1    # "formattedLog":Lmediatek/telecom/FormattedLog;
    :cond_51
    :goto_51
    return-void
.end method

.method protected makeImsPhoneConnectionForConference([Ljava/lang/String;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 9
    .param p1, "participantsToDial"    # [Ljava/lang/String;

    .line 1637
    new-instance v6, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    return-object v6
.end method

.method protected makeImsPhoneConnectionForMO(Ljava/lang/String;ZZ)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 12
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "isEmergencyNumber"    # Z
    .param p3, "isWpsCall"    # Z

    .line 1625
    new-instance v7, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZZ)V

    return-object v7
.end method

.method protected makeImsPhoneConnectionForMT(Lcom/android/ims/ImsCall;Z)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .registers 10
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "isUnknown"    # Z

    .line 1631
    new-instance v6, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-object v4, v0

    goto :goto_d

    .line 1632
    :cond_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-object v4, v0

    :goto_d
    move-object v0, v6

    move-object v2, p1

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    .line 1631
    return-object v6
.end method

.method protected modifyVideoCall(Lcom/android/ims/ImsCall;I)V
    .registers 8
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "newVideoState"    # I

    .line 1755
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1757
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    const v1, 0x8000

    or-int/2addr p2, v1

    .line 1759
    if-eqz v0, :cond_25

    .line 1760
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v1

    .line 1761
    .local v1, "oldVideoState":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 1762
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    new-instance v4, Landroid/telecom/VideoProfile;

    invoke-direct {v4, p2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 1766
    .end local v1    # "oldVideoState":I
    :cond_25
    return-void
.end method

.method public notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .registers 4
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;

    .line 1171
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne p1, v0, :cond_13

    .line 1172
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendRttSrvccOrCsfbEvent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1173
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendRttSrvccOrCsfbEvent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1174
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendRttSrvccOrCsfbEvent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1176
    :cond_13
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V

    .line 1178
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne v0, v1, :cond_2e

    .line 1179
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->checkRttCallType()V

    .line 1180
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 1184
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v0, v1, :cond_38

    .line 1185
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    goto :goto_38

    .line 1187
    :cond_2e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne v0, v1, :cond_38

    .line 1188
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 1190
    :cond_38
    :goto_38
    return-void
.end method

.method protected onDataEnabledChanged(ZI)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 2003
    iput p2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mLastDataEnabledReason:I

    .line 2004
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->onDataEnabledChanged(ZI)V

    .line 2005
    return-void
.end method

.method protected onDataRoamingOff()V
    .registers 2

    .line 1903
    const-string v0, "onDataRoamingOff"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1905
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    if-nez v0, :cond_f

    .line 1906
    const-string v0, "onDataRoamingOff: device already not roaming. ignored the update."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1907
    return-void

    .line 1910
    :cond_f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    .line 1912
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    if-nez v0, :cond_27

    .line 1913
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingEnabledChanged(Z)V

    .line 1915
    :cond_27
    return-void
.end method

.method protected onDataRoamingOn()V
    .registers 2

    .line 1882
    const-string v0, "onDataRoamingOn"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1884
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    if-eqz v0, :cond_f

    .line 1885
    const-string v0, "onDataRoamingOn: device already in roaming. ignored the update."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1886
    return-void

    .line 1889
    :cond_f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    .line 1891
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    if-eqz v0, :cond_2d

    .line 1892
    const-string v0, "onDataRoamingOn: setup data on roaming"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1893
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingEnabledChanged(Z)V

    goto :goto_36

    .line 1896
    :cond_2d
    const-string v0, "onDataRoamingOn: Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1897
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingEnabledChanged(Z)V

    .line 1899
    :goto_36
    return-void
.end method

.method protected onRoamingSettingsChanged()V
    .registers 4

    .line 1919
    const-string v0, "onRoamingSettingsChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1921
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    .line 1922
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1923
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    .line 1924
    .local v0, "imsMgr":Lcom/mediatek/ims/internal/MtkImsManager;
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->setDataRoamingSettingsEnabled(Z)V

    .line 1926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoamingSettingsChanged: mIsDataRoaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDataRoamingSettingEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1930
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoaming:Z

    if-nez v1, :cond_52

    .line 1931
    const-string v1, "onRoamingSettingsChanged: device is not roaming. ignored the request."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1932
    return-void

    .line 1935
    :cond_52
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataRoamingSettingEnabled:Z

    if-eqz v1, :cond_60

    .line 1936
    const-string v1, "onRoamingSettingsChanged: setup data on roaming"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1937
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingEnabledChanged(Z)V

    goto :goto_69

    .line 1940
    :cond_60
    const-string v1, "onRoamingSettingsChanged: Tear down data connection on roaming."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1941
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->onDataRoamingEnabledChanged(Z)V

    .line 1943
    :goto_69
    return-void
.end method

.method protected processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .registers 8
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "cause"    # I
    .param p4, "ignoreState"    # Z

    .line 716
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    .line 718
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 719
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    const-string v1, "CC"

    const-string v2, ""

    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->logDebugMessagesWithDumpFormat(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->checkRttCallType()V

    .line 723
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsDataEnabled:Z

    if-nez v1, :cond_23

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_23

    .line 725
    const-string v1, "ImsCall updated to video call but data off, retry onDataEnabledChanged"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 727
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendEmptyMessage(I)Z

    .line 729
    :cond_23
    return-void
.end method

.method public registerForCallsDisconnectedDuringSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1836
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1837
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCallsDisconnectedDuringSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1838
    return-void
.end method

.method public registerSettingsObserver()V
    .registers 5

    .line 1847
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SettingsObserver;->unobserve()V

    .line 1848
    const-string v0, ""

    .line 1849
    .local v0, "simSuffix":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_20

    .line 1850
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1853
    :cond_20
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data_roaming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1854
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x67

    .line 1853
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1856
    return-void
.end method

.method public rejectCall()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    const-string v1, "CC"

    const-string v2, "Reject"

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 577
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V

    .line 578
    return-void
.end method

.method protected releasePendingMOIfRequired()V
    .registers 4

    .line 1194
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v0, :cond_5

    .line 1195
    return-void

    .line 1197
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 1198
    const/16 v0, 0x12

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1199
    return-void
.end method

.method protected resetRingBackTone(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .registers 3
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1718
    instance-of v0, p1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    if-eqz v0, :cond_a

    .line 1719
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;->resetRingbackTone()V

    .line 1722
    :cond_a
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 691
    const-string v0, "sendUSSD : "

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/ims/ImsManager;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 694
    .local v1, "profile":Landroid/telephony/ims/ImsCallProfile;
    const-string v2, "dialstring"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 696
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_28
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_28} :catch_29

    .line 700
    .end local v1    # "profile":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_41

    .line 697
    :catch_29
    move-exception v1

    .line 698
    .local v1, "e":Lcom/android/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 701
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_41
    return-void
.end method

.method protected setMultiPartyState(Lcom/android/internal/telephony/Connection;)V
    .registers 4
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .line 1704
    instance-of v0, p1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    if-eqz v0, :cond_41

    .line 1705
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasMultiparty:Z

    .line 1706
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isConferenceHost()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasPreMultipartyHost:Z

    .line 1707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SRVCC: Connection isMultiparty is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasMultiparty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "and isConfHost is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneConnection;->mWasPreMultipartyHost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " before handover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1711
    :cond_41
    return-void
.end method

.method protected setRedialAsEcc(I)V
    .registers 3
    .param p1, "cause"    # I

    .line 1686
    const/16 v0, 0x17c

    if-ne p1, v0, :cond_7

    .line 1687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mDialAsECC:Z

    .line 1689
    :cond_7
    return-void
.end method

.method public startListeningForCalls()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1742
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startListeningForCalls()V

    .line 1745
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->addImsConnectionStateListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startListeningForCalls() : register ims succeed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_22
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_22} :catch_23

    .line 1750
    goto :goto_29

    .line 1747
    :catch_23
    move-exception v0

    .line 1749
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "startListeningForCalls() : register ims fail!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1751
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_29
    return-void
.end method

.method protected startRttEmcGuardTimer()V
    .registers 2

    .line 1737
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mRttEmcGuardTimerUtil:Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/RttEmcGuardTimerUtil;->startRttEmcGuardTimer()V

    .line 1738
    return-void
.end method

.method protected switchWfcModeIfRequired(Lcom/android/ims/ImsManager;ZZ)V
    .registers 6
    .param p1, "imsManager"    # Lcom/android/ims/ImsManager;
    .param p2, "isWfcEnabled"    # Z
    .param p3, "isEmergencyNumber"    # Z

    .line 1771
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    if-eqz p3, :cond_16

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCarrierSwitchWfcModeRequired:Z

    if-nez v0, :cond_b

    goto :goto_16

    .line 1779
    :cond_b
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->getWfcMode()I

    move-result v0

    if-nez v0, :cond_15

    .line 1780
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/ims/ImsManager;->setWfcMode(I)V

    .line 1782
    :cond_15
    return-void

    .line 1773
    :cond_16
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not switch WFC mode, isWfcEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEmergencyNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCarrierSwitchWfcModeRequired:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCarrierSwitchWfcModeRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1776
    return-void
.end method

.method protected takeCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)Lcom/android/ims/ImsCall;
    .registers 5
    .param p1, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1644
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mMtkImsCallListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->takeCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v0

    return-object v0
.end method

.method protected transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .registers 6
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transferHandoverConnections mSrvccState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne v0, v1, :cond_51

    .line 1205
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_51

    .line 1206
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 1207
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOnHoldToneStarted:Z

    if-eqz v2, :cond_50

    if-eqz v1, :cond_50

    iget v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOnHoldToneId:I

    .line 1208
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_50

    .line 1209
    const-string v2, "transferHandoverConnections reset the hold tone."

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1210
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    .line 1211
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOnHoldToneStarted:Z

    .line 1212
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mOnHoldToneId:I

    .line 1214
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_50
    goto :goto_26

    .line 1219
    :cond_51
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 1220
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 1221
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v2, v1, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 1222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection state before handover is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->setMultiPartyState(Lcom/android/internal/telephony/Connection;)V

    .line 1225
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    goto :goto_5f

    .line 1228
    :cond_8b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_9c

    .line 1230
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    goto :goto_a7

    .line 1233
    :cond_9c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1237
    :goto_a7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_e1

    .line 1238
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 1239
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    .line 1241
    :cond_bc
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 1242
    .restart local v1    # "c":Lcom/android/internal/telephony/Connection;
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1243
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 1244
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    goto :goto_c6

    .line 1246
    :cond_e1
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call is alive and state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 1250
    :cond_107
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearConnections()V

    .line 1251
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 1252
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v0, :cond_11a

    .line 1255
    const-string v0, "pending MO on handover, clearing..."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1259
    :cond_11a
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->resetRingBackTone(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1260
    return-void
.end method

.method public unregisterForCallsDisconnectedDuringSrvcc(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 1841
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCallsDisconnectedDuringSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1842
    return-void
.end method

.method protected updateCarrierConfiguration(I)V
    .registers 6
    .param p1, "subId"    # I

    .line 2009
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateCarrierConfiguration(I)V

    .line 2011
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2012
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2013
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_19

    .line 2014
    const-string v1, "updateCarrierConfiguration: No carrier config service found."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 2015
    return-void

    .line 2018
    :cond_19
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 2019
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v1, :cond_25

    .line 2020
    const-string v2, "updateCarrierConfiguration: Empty carrier config."

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 2021
    return-void

    .line 2024
    :cond_25
    const-string v2, "mtk_ignore_data_roaming_for_video_calls"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIgnoreDataRoaming:Z

    .line 2026
    const-string v2, "allow_merging_rtt_calls_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttCallMergeSupported:Z

    .line 2029
    const-string v2, "mtk_emc_rtt_guard_timer_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsRttEmcGuardTimerSupported:Z

    .line 2032
    const-string v2, "mtk_carrier_switch_wfc_mode_required_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mCarrierSwitchWfcModeRequired:Z

    .line 2035
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isTestSim()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 2036
    nop

    .line 2037
    const-string v2, "persist.vendor.operator.optr"

    const-string v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->isVTDataMeteredByOpid(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsViLteDataMetered:Z

    .line 2038
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsViLteDataMetered:Z

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIgnoreDataRoaming:Z

    .line 2039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierConfiguration: For test sim, mIsViLteDataMetered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIsViLteDataMetered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2043
    :cond_74
    const-string v2, "mtk_ignore_clir_when_ecc"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mIgnoreClirWhenEcc:Z

    .line 2045
    return-void
.end method

.method protected updateDisconnectCause(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)I
    .registers 4
    .param p1, "cause"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1693
    const/16 v0, 0x24

    if-ne p1, v0, :cond_13

    if-eqz p2, :cond_13

    .line 1694
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMerged()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1696
    const/16 v0, 0x2d

    return v0

    .line 1698
    :cond_13
    return p1
.end method

.class public Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "MtkServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;,
        Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;,
        Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkCellInfoResult;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field protected static final EVENT_CS_NETWORK_STATE_CHANGED:I = 0x64

.field protected static final EVENT_FEMTO_CELL_INFO:I = 0x66

.field protected static final EVENT_ICC_REFRESH:I = 0x6a

.field protected static final EVENT_IMEI_LOCK:I = 0x6b

.field protected static final EVENT_INVALID_SIM_INFO:I = 0x65

.field protected static final EVENT_IWLAN_PREFERRED_CHANGED:I = 0x7c

.field protected static final EVENT_MODULATION_INFO:I = 0x69

.field protected static final EVENT_NETWORK_EVENT:I = 0x68

.field protected static final EVENT_PS_NETWORK_STATE_CHANGED:I = 0x67

.field protected static final EVENT_RECHECK_NRM_STATUS:I = 0x7b

.field protected static final EVENT_RESTART_TURBO:I = 0x7a

.field protected static final EVENT_RIL_READY:I = 0x78

.field protected static final EVENT_SIM_OPL_LOADED:I = 0x77

.field protected static final EVENT_UPDATE_PLMN:I = 0x79

.field private static final LOG_TAG:Ljava/lang/String; = "MTKSST"

.field protected static final PROP_IWLAN_STATE:Ljava/lang/String; = "persist.vendor.radio.wfc_state"

.field public static final REJECT_NOTIFICATION:I = 0x37a

.field private static final VDBG:Z = true

.field private static final mCheckNrmPeriod:J = 0x3e8L


# instance fields
.field public hasPendingPollState:Z

.field private isCsInvalidCard:Z

.field private mCsgId:Ljava/lang/String;

.field private mDataRoamingTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private mEnableERI:Z

.field private mEriTriggeredPollState:Z

.field private mEverIVSR:Z

.field private mFemtoAct:Ljava/lang/String;

.field private mFemtoPlmn:Ljava/lang/String;

.field private mFemtocellDomain:I

.field private mForceBroadcastServiceState:Z

.field private mHhbName:Ljava/lang/String;

.field private mIsFemtocell:I

.field private mIsImeiLock:Z

.field private mIsTurboSSAlive:Z

.field private mLastPSRegisteredPLMN:Ljava/lang/String;

.field private mLastPhoneGetNitz:I

.field private mLastRegisteredPLMN:Ljava/lang/String;

.field private mLocatedPlmn:Ljava/lang/String;

.field private mMtkIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMtkVoiceCapable:Z

.field private mNetworkExsit:Z

.field private mNotification:Landroid/app/Notification;

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

.field private mPsRegState:I

.field private mPsRegStateRaw:I

.field private mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

.field private mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field private mtkHandler:Landroid/os/Handler;

.field private mtkHandlerThread:Landroid/os/HandlerThread;

.field public nm:Lcom/mediatek/internal/telephony/NrMap;

.field public once_pollState_done:Z

.field private turboSS:Lmediatek/telephony/MtkServiceState;

.field private turboSig:Landroid/telephony/SignalStrength;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 9
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 689
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriTriggeredPollState:Z

    .line 180
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEnableERI:Z

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 182
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    .line 184
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 214
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsImeiLock:Z

    .line 215
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    .line 216
    const/4 v2, 0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegState:I

    .line 217
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegStateRaw:I

    .line 219
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 220
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    .line 221
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtocellDomain:I

    .line 222
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsFemtocell:I

    .line 223
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoPlmn:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoAct:Ljava/lang/String;

    .line 226
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    .line 228
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 229
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 230
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEverIVSR:Z

    .line 231
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isCsInvalidCard:Z

    .line 232
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110175

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMtkVoiceCapable:Z

    .line 234
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPhoneGetNitz:I

    .line 236
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    .line 239
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkExsit:Z

    .line 242
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    .line 244
    new-instance v3, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v3}, Lmediatek/telephony/MtkServiceState;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;

    .line 245
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsTurboSSAlive:Z

    .line 246
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSig:Landroid/telephony/SignalStrength;

    .line 248
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->once_pollState_done:Z

    .line 254
    new-instance v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$1;-><init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMtkIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 691
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MtkHandlerThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandlerThread:Landroid/os/HandlerThread;

    .line 692
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 694
    new-instance v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkHandler;-><init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;

    .line 697
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 698
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 710
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 711
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    const-string v3, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    const-string v3, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMtkIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 726
    :try_start_a9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 727
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 728
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 729
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeServiceStateTrackerExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_c1} :catch_c2

    .line 733
    goto :goto_cb

    .line 730
    :catch_c2
    move-exception v3

    .line 731
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "mServiceStateTrackerExt init fail"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 734
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_cb
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x64

    invoke-virtual {v3, p0, v4, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForCsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 735
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x67

    invoke-virtual {v3, p0, v4, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForPsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 737
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;

    const/16 v5, 0x78

    invoke-interface {v3, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 740
    new-instance v1, Lcom/mediatek/internal/telephony/NrMap;

    invoke-direct {v1, p1, p2}, Lcom/mediatek/internal/telephony/NrMap;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->nm:Lcom/mediatek/internal/telephony/NrMap;

    .line 741
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    const/16 v3, 0x7c

    invoke-virtual {v1, p0, v3}, Lcom/android/internal/telephony/dataconnection/TransportManager;->registerForHandoverNeededEvent(Landroid/os/Handler;I)V

    .line 742
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lmediatek/telephony/MtkServiceState;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;I)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # I

    .line 171
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastKnownNetworkCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateTurboPLMN()V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;I)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # I

    .line 171
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/telephony/SignalStrength;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSig:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .line 171
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSig:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/PersistableBundle;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Z

    .line 171
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSpnUpdatePending:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;J)V
    .registers 4
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 171
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$4100(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->broadcastLocatedPlmnChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 171
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method private broadcastLocatedPlmnChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "old_Plmn"    # Ljava/lang/String;
    .param p2, "plmn"    # Ljava/lang/String;

    .line 3169
    const-string v0, "updateLocatedPlmn: countryCodeForMcc error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocatedPlmn(),previous plmn= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,update to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3170
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3171
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    .line 3172
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3174
    :cond_35
    const-string v2, "android.telephony.extra.PLMN"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3176
    const-string v2, ""

    const-string v3, "iso"

    if-eqz p2, :cond_80

    .line 3179
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_42
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3180
    .local v4, "mcc":I
    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_51} :catch_69
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_42 .. :try_end_51} :catch_52

    .line 3187
    goto :goto_83

    .line 3184
    .end local v4    # "mcc":I
    :catch_52
    move-exception v4

    .line 3185
    .local v4, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3186
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3187
    .end local v4    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    goto :goto_83

    .line 3181
    :catch_69
    move-exception v4

    .line 3182
    .local v4, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3183
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3187
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    goto :goto_83

    .line 3189
    :cond_80
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3192
    :goto_83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 3193
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3194
    return-void
.end method

.method private getImsEccOnly()Z
    .registers 3

    .line 4376
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4377
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_11

    .line 4378
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    return v1

    .line 4380
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private final getImsServiceState()I
    .registers 3

    .line 3877
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3878
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_11

    .line 3879
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    return v1

    .line 3881
    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method private isAllowRecoveryOnIvsr(Landroid/os/AsyncResult;)Z
    .registers 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3652
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3653
    const-string v0, "[isAllowRecoveryOnIvsr] isInCall()=true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3655
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3656
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3657
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3658
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3659
    const/4 v1, 0x0

    return v1

    .line 3661
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1e
    const-string v0, "isAllowRecoveryOnIvsr() return true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3662
    const/4 v0, 0x1

    return v0
.end method

.method private static final isChinaTelecomMvno(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "mvnoOperName"    # Ljava/lang/String;

    .line 4312
    const/4 v0, 0x0

    .line 4313
    .local v0, "isChinaTelecomMvno":Z
    const-string v1, ""

    .line 4315
    .local v1, "ctName":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v2

    .line 4316
    .local v2, "simCarrierName":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 4317
    const/4 v0, 0x1

    goto :goto_2c

    .line 4318
    :cond_15
    const-string v4, "20404"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "45403"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 4319
    :cond_25
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 4320
    const/4 v0, 0x1

    .line 4322
    :cond_2c
    :goto_2c
    return v0
.end method

.method private final isConcurrentVoiceAndDataAllowedForIwlan()Z
    .registers 3

    .line 3088
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3089
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1a

    .line 3090
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getImsServiceState()I

    move-result v0

    if-nez v0, :cond_1a

    .line 3091
    const/4 v0, 0x1

    return v0

    .line 3093
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private final isConcurrentVoiceAndDataAllowedForVolte()Z
    .registers 2

    .line 3867
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3868
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3869
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getImsServiceState()I

    move-result v0

    if-nez v0, :cond_1c

    .line 3870
    const/4 v0, 0x1

    return v0

    .line 3872
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method protected static final lookupOperatorName(Landroid/content/Context;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z

    .line 4275
    move-object v0, p2

    .line 4276
    .local v0, "defaultName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4279
    .local v1, "operName":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 4280
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_23

    .line 4281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lookupOperatorName getPhone null subid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MTKSST"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    return-object v0

    .line 4286
    :cond_23
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4289
    invoke-static {p0, p1, p2, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isChinaTelecomMvno(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 4292
    .local v3, "isChinaTelecomMvno":Z
    if-eqz v1, :cond_33

    if-eqz v3, :cond_3b

    .line 4293
    :cond_33
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v4

    invoke-virtual {v4, p2, p3, p0}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByNumeric(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4298
    :cond_3b
    if-nez v1, :cond_3f

    move-object v4, v0

    goto :goto_40

    :cond_3f
    move-object v4, v1

    :goto_40
    return-object v4
.end method

.method private final mergeEmergencyOnlyCdmaIms(Z)Z
    .registers 4
    .param p1, "baseEmergencyOnly"    # Z

    .line 3885
    if-eqz p1, :cond_3

    .line 3886
    return p1

    .line 3889
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3890
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-ne v0, v1, :cond_25

    .line 3891
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3892
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_25

    .line 3893
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    return v1

    .line 3897
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_25
    return p1
.end method

.method private onFemtoCellInfoResult(Landroid/os/AsyncResult;)V
    .registers 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3414
    const/4 v0, 0x0

    .line 3416
    .local v0, "isCsgCell":I
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_266

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_b

    goto/16 :goto_266

    .line 3419
    :cond_b
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 3421
    .local v1, "info":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_26b

    .line 3422
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_3d

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3d

    .line 3423
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtocellDomain:I

    .line 3424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFemtoCellInfo: mFemtocellDomain set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtocellDomain:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3427
    :cond_3d
    const/4 v3, 0x3

    aget-object v4, v1, v3

    if-eqz v4, :cond_64

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_64

    .line 3428
    aget-object v3, v1, v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoPlmn:Ljava/lang/String;

    .line 3429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFemtoCellInfo: mFemtoPlmn set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoPlmn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3432
    :cond_64
    const/4 v3, 0x4

    aget-object v4, v1, v3

    if-eqz v4, :cond_8b

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8b

    .line 3433
    aget-object v3, v1, v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoAct:Ljava/lang/String;

    .line 3434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFemtoCellInfo: mFemtoAct set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoAct:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3437
    :cond_8b
    const/4 v3, 0x5

    aget-object v4, v1, v3

    if-eqz v4, :cond_9e

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9e

    .line 3438
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3440
    :cond_9e
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsFemtocell:I

    .line 3441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFemtoCellInfo: domain= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtocellDomain:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",isCsgCell= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3443
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_12d

    .line 3444
    const/4 v5, 0x6

    aget-object v6, v1, v5

    if-eqz v6, :cond_e9

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_e9

    .line 3445
    aget-object v5, v1, v5

    iput-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    .line 3446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFemtoCellInfo: mCsgId set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3449
    :cond_e9
    const/16 v5, 0x8

    aget-object v6, v1, v5

    if-eqz v6, :cond_125

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_125

    .line 3450
    new-instance v3, Ljava/lang/String;

    aget-object v6, v1, v5

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 3451
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFemtoCellInfo: mHhbName set from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_136

    .line 3453
    :cond_125
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 3454
    const-string v3, "onFemtoCellInfo: mHhbName is not available ,set to null"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_136

    .line 3457
    :cond_12d
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    .line 3458
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    .line 3459
    const-string v3, "onFemtoCellInfo: csgId and hnbName are cleared"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3461
    :goto_136
    const/4 v3, 0x2

    if-eq v0, v3, :cond_189

    aget-object v3, v1, v4

    if-eqz v3, :cond_189

    aget-object v3, v1, v4

    .line 3462
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_189

    const/16 v3, 0x9

    aget-object v5, v1, v3

    if-eqz v5, :cond_189

    aget-object v2, v1, v2

    .line 3463
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_189

    .line 3464
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3465
    .local v2, "state":I
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3467
    .local v3, "cause":I
    :try_start_15f
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v5, v2, v3}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->needIgnoreFemtocellUpdate(II)Z

    move-result v5

    if-ne v5, v4, :cond_184

    .line 3469
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needIgnoreFemtocellUpdate due to state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",cause= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_183
    .catch Ljava/lang/RuntimeException; {:try_start_15f .. :try_end_183} :catch_185

    .line 3472
    return-void

    .line 3476
    :cond_184
    goto :goto_189

    .line 3474
    :catch_185
    move-exception v5

    .line 3475
    .local v5, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3478
    .end local v2    # "state":I
    .end local v3    # "cause":I
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :cond_189
    :goto_189
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3479
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 3481
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ne v3, v4, :cond_1a8

    .line 3482
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3485
    :cond_1a8
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowSpn:Z

    const-string v5, "android.telephony.extra.SHOW_SPN"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3486
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurSpn:Ljava/lang/String;

    const-string v5, "android.telephony.extra.SPN"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3487
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowPlmn:Z

    const-string v5, "android.telephony.extra.SHOW_PLMN"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3488
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    const-string v5, "android.telephony.extra.PLMN"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3490
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    const-string v5, "hnbName"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3491
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    const-string v5, "csgId"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3492
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtocellDomain:I

    const-string v5, "domain"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3494
    iget v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsFemtocell:I

    const-string v5, "femtocell"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3496
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3498
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    .line 3499
    .local v3, "phoneId":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 3500
    .local v5, "plmn":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    const-string v7, " - "

    if-nez v6, :cond_22e

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    if-eqz v8, :cond_22e

    .line 3502
    :try_start_1fd
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v6}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->needToShowCsgId()Z

    move-result v6

    if-ne v6, v4, :cond_22c

    .line 3503
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 3504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_226
    .catch Ljava/lang/RuntimeException; {:try_start_1fd .. :try_end_226} :catch_228

    move-object v5, v6

    goto :goto_22c

    .line 3506
    :catch_228
    move-exception v6

    .line 3507
    .local v6, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3508
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_22c
    :goto_22c
    move-object v11, v5

    goto :goto_253

    .line 3509
    :cond_22e
    if-eqz v6, :cond_252

    .line 3510
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3511
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    goto :goto_253

    .line 3509
    :cond_252
    move-object v11, v5

    .line 3513
    .end local v5    # "plmn":Ljava/lang/String;
    .local v11, "plmn":Ljava/lang/String;
    :goto_253
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowPlmn:Z

    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowSpn:Z

    iget-object v10, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurSpn:Ljava/lang/String;

    move v6, v3

    move-object v8, v11

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v5

    .line 3515
    .local v5, "setResult":Z
    if-nez v5, :cond_26b

    .line 3516
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSpnUpdatePending:Z

    goto :goto_26b

    .line 3417
    .end local v1    # "info":[Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "phoneId":I
    .end local v5    # "setResult":Z
    .end local v11    # "plmn":Ljava/lang/String;
    :cond_266
    :goto_266
    const-string v1, "onFemtoCellInfo exception"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3520
    :cond_26b
    :goto_26b
    return-void
.end method

.method private onInvalidSimInfoReceived(Landroid/os/AsyncResult;)V
    .registers 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3523
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 3524
    .local v0, "InvalidSimInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 3525
    .local v2, "plmn":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3526
    .local v4, "cs_invalid":I
    const/4 v5, 0x2

    aget-object v6, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3527
    .local v6, "ps_invalid":I
    const/4 v7, 0x3

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3528
    .local v7, "cause":I
    const/4 v8, -0x1

    .line 3531
    .local v8, "testMode":I
    const-string v9, "vendor.gsm.gcf.testmode"

    invoke-static {v9, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3535
    .end local v8    # "testMode":I
    .local v1, "testMode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onInvalidSimInfoReceived testMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cause:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cs_invalid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ps_invalid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " plmn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " mEverIVSR:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEverIVSR:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3540
    if-eqz v1, :cond_78

    .line 3541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidSimInfo received during test mode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3542
    return-void

    .line 3545
    :cond_78
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v8}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->isNeedDisableIVSR()Z

    move-result v8

    if-eqz v8, :cond_86

    .line 3546
    const-string v3, "Disable IVSR"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3547
    return-void

    .line 3552
    :cond_86
    if-ne v4, v3, :cond_8a

    .line 3553
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isCsInvalidCard:Z

    .line 3561
    :cond_8a
    iget-boolean v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMtkVoiceCapable:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_af

    .line 3562
    if-ne v4, v3, :cond_af

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    if-eqz v8, :cond_af

    .line 3563
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_af

    .line 3564
    const-string v8, "InvalidSimInfo reset SIM due to CS invalid"

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3565
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setEverIVSR(Z)V

    .line 3566
    iput-object v9, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 3567
    iput-object v9, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 3568
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3, v5, v9}, Lcom/mediatek/internal/telephony/MtkRIL;->setSimPower(ILandroid/os/Message;)V

    .line 3569
    return-void

    .line 3575
    :cond_af
    if-ne v6, v3, :cond_d5

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isAllowRecoveryOnIvsr(Landroid/os/AsyncResult;)Z

    move-result v8

    if-eqz v8, :cond_d5

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    if-eqz v8, :cond_d5

    .line 3576
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d5

    .line 3580
    const-string v8, "InvalidSimInfo reset SIM due to PS invalid "

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3581
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setEverIVSR(Z)V

    .line 3582
    iput-object v9, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 3583
    iput-object v9, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 3584
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v3, v5, v9}, Lcom/mediatek/internal/telephony/MtkRIL;->setSimPower(ILandroid/os/Message;)V

    .line 3585
    return-void

    .line 3614
    :cond_d5
    return-void
.end method

.method private onModulationInfoReceived(Landroid/os/AsyncResult;)V
    .registers 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3634
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_41

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_9

    goto :goto_41

    .line 3639
    :cond_9
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 3640
    .local v0, "info":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 3641
    .local v1, "modulation":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onModulationInfoReceived] modulation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3643
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.intent.action.ACTION_NOTIFY_MODULATION_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3644
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3645
    const-string v3, "modulation_info"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3647
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_46

    .line 3635
    .end local v0    # "info":[I
    .end local v1    # "modulation":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_41
    :goto_41
    const-string v0, "onModulationInfoReceived exception"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3649
    :goto_46
    return-void
.end method

.method private onNetworkEventReceived(Landroid/os/AsyncResult;)V
    .registers 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3617
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_43

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_9

    goto :goto_43

    .line 3622
    :cond_9
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 3623
    .local v0, "nwEventType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onNetworkEventReceived] event_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3625
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.ACTION_NETWORK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3626
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3627
    add-int/lit8 v2, v0, 0x1

    const-string v3, "eventType"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3629
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_48

    .line 3618
    .end local v0    # "nwEventType":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_43
    :goto_43
    const-string v0, "onNetworkEventReceived exception"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3631
    :goto_48
    return-void
.end method

.method private onNetworkStateChangeResult(Landroid/os/AsyncResult;)V
    .registers 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2196
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_ff

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_a

    goto/16 :goto_ff

    .line 2200
    :cond_a
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 2201
    .local v0, "info":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_dd

    .line 2202
    const/4 v1, -0x1

    .line 2203
    .local v1, "state":I
    const/4 v4, -0x1

    .line 2204
    .local v4, "lac":I
    const-wide/16 v5, -0x1

    .line 2205
    .local v5, "cid":J
    const/4 v7, -0x1

    .line 2206
    .local v7, "Act":I
    const/4 v8, -0x1

    .line 2210
    .local v8, "cause":I
    array-length v9, v0

    if-lez v9, :cond_d7

    .line 2212
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2214
    aget-object v2, v0, v3

    const/16 v9, 0x10

    if-eqz v2, :cond_3b

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3b

    .line 2215
    aget-object v2, v0, v3

    invoke-static {v2, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 2218
    :cond_3b
    const/4 v2, 0x2

    aget-object v10, v0, v2

    if-eqz v10, :cond_7c

    aget-object v10, v0, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7c

    .line 2220
    aget-object v10, v0, v2

    const-string v11, "FFFFFFFF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5c

    aget-object v10, v0, v2

    const-string v11, "ffffffff"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_76

    .line 2221
    :cond_5c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid cid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v0, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2222
    const-string v10, "0000ffff"

    aput-object v10, v0, v2

    .line 2224
    :cond_76
    aget-object v2, v0, v2

    invoke-static {v2, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    .line 2227
    :cond_7c
    const/4 v2, 0x3

    aget-object v9, v0, v2

    if-eqz v9, :cond_8f

    aget-object v9, v0, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8f

    .line 2228
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2231
    :cond_8f
    const/4 v2, 0x4

    aget-object v9, v0, v2

    if-eqz v9, :cond_a2

    aget-object v9, v0, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a2

    .line 2232
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2235
    :cond_a2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onNetworkStateChangeResult state:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Act:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cause:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2240
    :try_start_c6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v2, v8}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->needRejectCauseNotification(I)Z

    move-result v2

    if-ne v2, v3, :cond_d6

    .line 2241
    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setRejectCauseNotification(I)V
    :try_end_d1
    .catch Ljava/lang/RuntimeException; {:try_start_c6 .. :try_end_d1} :catch_d2

    goto :goto_d6

    .line 2243
    :catch_d2
    move-exception v2

    .line 2244
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 2245
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_d6
    :goto_d6
    goto :goto_dc

    .line 2248
    :cond_d7
    const-string v2, "onNetworkStateChangeResult length zero"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2250
    .end local v1    # "state":I
    .end local v4    # "lac":I
    .end local v5    # "cid":J
    .end local v7    # "Act":I
    .end local v8    # "cause":I
    :goto_dc
    goto :goto_fe

    .line 2252
    :cond_dd
    array-length v1, v0

    const/4 v4, 0x5

    if-le v1, v4, :cond_f9

    .line 2253
    aget-object v1, v0, v4

    if-eqz v1, :cond_fe

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_fe

    .line 2254
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v3, v1, :cond_f6

    move v2, v3

    :cond_f6
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkExsit:Z

    goto :goto_fe

    .line 2258
    :cond_f9
    const-string v1, "onCdmaNetworkExistStateChanged Network existence not reported"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2262
    :cond_fe
    :goto_fe
    return-void

    .line 2197
    .end local v0    # "info":[Ljava/lang/String;
    :cond_ff
    :goto_ff
    const-string v0, "onNetworkStateChangeResult exception"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2198
    return-void
.end method

.method private onPsNetworkStateChangeResult(Landroid/os/AsyncResult;)V
    .registers 32
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2268
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2270
    .local v2, "operator_plmn":Ljava/lang/String;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_157

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_f

    goto/16 :goto_157

    .line 2273
    :cond_f
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 2274
    .local v3, "info":[I
    array-length v4, v3

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ge v4, v6, :cond_37

    .line 2277
    aget v4, v3, v9

    iput v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegStateRaw:I

    .line 2279
    aget v4, v3, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2280
    if-eqz v2, :cond_32

    .line 2281
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_32

    .line 2282
    invoke-direct {v0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    goto/16 :goto_15c

    .line 2284
    :cond_32
    invoke-direct {v0, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    goto/16 :goto_15c

    .line 2286
    :cond_37
    array-length v4, v3

    const/4 v10, 0x7

    if-ne v4, v10, :cond_151

    .line 2297
    aget v4, v3, v9

    const/4 v10, 0x4

    if-ne v4, v10, :cond_49

    .line 2300
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyMtkFakeServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V

    goto/16 :goto_15c

    .line 2301
    :cond_49
    aget v4, v3, v9

    if-eq v4, v8, :cond_5d

    .line 2303
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyMtkFakeServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V

    .line 2304
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_15c

    .line 2306
    :cond_5d
    const/4 v4, 0x0

    .line 2307
    .local v4, "isCs":Z
    new-instance v7, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v7}, Lmediatek/telephony/MtkServiceState;-><init>()V

    .line 2308
    .local v7, "fakeSS":Lmediatek/telephony/MtkServiceState;
    aget v11, v3, v8

    .line 2309
    invoke-static {v11}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v11

    .line 2310
    .local v11, "networkType":I
    aget v12, v3, v8

    const/4 v13, 0x3

    if-eq v12, v13, :cond_74

    aget v12, v3, v8

    const/16 v13, 0x10

    if-ne v12, v13, :cond_75

    .line 2312
    :cond_74
    const/4 v4, 0x1

    .line 2314
    :cond_75
    const/16 v12, 0x13

    if-ne v11, v12, :cond_7b

    .line 2315
    const/16 v11, 0xd

    .line 2318
    :cond_7b
    new-instance v26, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 2321
    if-eqz v4, :cond_85

    aget v12, v3, v9

    move v15, v12

    goto :goto_86

    :cond_85
    move v15, v9

    .line 2322
    :goto_86
    if-eqz v4, :cond_8b

    move/from16 v16, v11

    goto :goto_8d

    :cond_8b
    move/from16 v16, v9

    :goto_8d
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v21, ""

    move-object/from16 v12, v26

    invoke-direct/range {v12 .. v25}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    .line 2332
    .local v12, "networkVoiceRegState":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v12}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v13

    .line 2333
    .local v13, "voiceRegistrationState":I
    invoke-virtual {v0, v13}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I

    move-result v14

    invoke-virtual {v7, v14}, Lmediatek/telephony/MtkServiceState;->setVoiceRegState(I)V

    .line 2334
    invoke-virtual {v7, v12}, Lmediatek/telephony/MtkServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 2336
    new-instance v14, Landroid/telephony/NetworkRegistrationInfo;

    const/16 v16, 0x2

    const/16 v17, 0x1

    .line 2340
    if-nez v4, :cond_bf

    aget v15, v3, v9

    move/from16 v18, v15

    goto :goto_c1

    :cond_bf
    move/from16 v18, v9

    .line 2341
    :goto_c1
    if-nez v4, :cond_c6

    move/from16 v19, v11

    goto :goto_c8

    :cond_c6
    move/from16 v19, v9

    :goto_c8
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    .line 2348
    aget v10, v3, v10

    if-ne v10, v8, :cond_d9

    move/from16 v26, v8

    goto :goto_db

    :cond_d9
    move/from16 v26, v9

    .line 2349
    :goto_db
    aget v5, v3, v5

    const/4 v10, 0x2

    if-ne v5, v10, :cond_e3

    move/from16 v27, v8

    goto :goto_e5

    :cond_e3
    move/from16 v27, v9

    .line 2350
    :goto_e5
    aget v5, v3, v6

    if-ne v5, v8, :cond_ec

    move/from16 v28, v8

    goto :goto_ee

    :cond_ec
    move/from16 v28, v9

    :goto_ee
    new-instance v5, Landroid/telephony/LteVopsSupportInfo;

    invoke-direct {v5, v8, v8}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    const-string v24, ""

    move-object v15, v14

    move-object/from16 v29, v5

    invoke-direct/range {v15 .. v29}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V

    move-object v5, v14

    .line 2353
    .local v5, "networkDataRegState":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v6

    .line 2354
    .local v6, "dataRegistrationState":I
    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I

    move-result v8

    .line 2355
    .local v8, "serviceState":I
    invoke-virtual {v7, v8}, Lmediatek/telephony/MtkServiceState;->setDataRegState(I)V

    .line 2356
    invoke-virtual {v7, v5}, Lmediatek/telephony/MtkServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 2357
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "broadcast fakeSS:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2358
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v10, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v10, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyMtkFakeServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V

    .line 2359
    invoke-virtual {v7}, Lmediatek/telephony/MtkServiceState;->getDataNetworkType()I

    move-result v10

    .line 2360
    .local v10, "display_type":I
    if-nez v10, :cond_12f

    invoke-virtual {v7}, Lmediatek/telephony/MtkServiceState;->getVoiceNetworkType()I

    move-result v10

    .line 2361
    :cond_12f
    new-instance v14, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v14, v10, v9}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    move-object v9, v14

    .line 2364
    .local v9, "displayInfo":Landroid/telephony/TelephonyDisplayInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "broadcast fakeSS: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2365
    iget-object v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v14, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v14, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    .line 2366
    .end local v4    # "isCs":Z
    .end local v5    # "networkDataRegState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v6    # "dataRegistrationState":I
    .end local v7    # "fakeSS":Lmediatek/telephony/MtkServiceState;
    .end local v8    # "serviceState":I
    .end local v9    # "displayInfo":Landroid/telephony/TelephonyDisplayInfo;
    .end local v10    # "display_type":I
    .end local v11    # "networkType":I
    .end local v12    # "networkVoiceRegState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v13    # "voiceRegistrationState":I
    goto :goto_15c

    .line 2368
    :cond_151
    const-string v4, "onPsNetworkStateChangeResult wrong size"

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_15c

    .line 2271
    .end local v3    # "info":[I
    :cond_157
    :goto_157
    const-string v3, "onPsNetworkStateChangeResult exception"

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2371
    :goto_15c
    return-void
.end method

.method private setEverIVSR(Z)V
    .registers 6
    .param p1, "value"    # Z

    .line 3667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEverIVSR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3668
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEverIVSR:Z

    .line 3671
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4f

    .line 3672
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.IVSR_NOTIFY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3673
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "action"

    const-string v3, "start"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3674
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 3676
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ne v2, v0, :cond_3f

    .line 3677
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3680
    :cond_3f
    const-string v0, "broadcast ACTION_IVSR_NOTIFY intent"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3682
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3684
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4f
    return-void
.end method

.method private setNullState()V
    .registers 2

    .line 3688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isCsInvalidCard:Z

    .line 3689
    return-void
.end method

.method private setRejectCauseNotification(I)V
    .registers 9
    .param p1, "cause"    # I

    .line 3908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRejectCauseNotification: create notification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3910
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3911
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 3912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 3913
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 3914
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v2, 0x108008a

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3915
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const-string v2, "alert"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 3917
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3918
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 3919
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3918
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3921
    const-string v2, ""

    .line 3922
    .local v2, "details":Ljava/lang/CharSequence;
    const v3, 0x8050067

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3923
    .local v3, "title":Ljava/lang/CharSequence;
    const/16 v4, 0x37a

    .line 3925
    .local v4, "notificationId":I
    sparse-switch p1, :sswitch_data_c0

    goto :goto_85

    .line 3939
    :sswitch_5d
    const v5, 0x8050075

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3940
    goto :goto_85

    .line 3936
    :sswitch_65
    const v5, 0x8050071

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3937
    goto :goto_85

    .line 3933
    :sswitch_6d
    const v5, 0x8050070

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3934
    goto :goto_85

    .line 3930
    :sswitch_75
    const v5, 0x8050069

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3931
    goto :goto_85

    .line 3927
    :sswitch_7d
    const v5, 0x8050068

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3928
    nop

    .line 3945
    :goto_85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRejectCauseNotification: put notification "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3946
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3947
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3949
    nop

    .line 3950
    const-string v5, "notification"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 3952
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 3953
    invoke-virtual {v5, v4, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3954
    return-void

    :sswitch_data_c0
    .sparse-switch
        0x2 -> :sswitch_7d
        0x3 -> :sswitch_75
        0x5 -> :sswitch_6d
        0x6 -> :sswitch_65
        0xd -> :sswitch_5d
    .end sparse-switch
.end method

.method private updateLocatedPlmn(Ljava/lang/String;)V
    .registers 6
    .param p1, "plmn"    # Ljava/lang/String;

    .line 3197
    const/4 v0, 0x0

    .line 3198
    .local v0, "subT":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-nez v1, :cond_7

    if-nez p1, :cond_15

    :cond_7
    if-eqz v1, :cond_b

    if-eqz p1, :cond_15

    :cond_b
    if-eqz v1, :cond_22

    if-eqz p1, :cond_22

    .line 3200
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 3202
    :cond_15
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    .line 3203
    .local v1, "old_plmn":Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$3;-><init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v0, v2

    .line 3209
    .end local v1    # "old_plmn":Ljava/lang/String;
    :cond_22
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    .line 3211
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3212
    :cond_29
    return-void
.end method

.method private updatePLMN(ZLjava/lang/String;ZLjava/lang/String;)V
    .registers 12
    .param p1, "showPlmn"    # Z
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "showSpn"    # Z
    .param p4, "spn"    # Ljava/lang/String;

    .line 353
    new-instance v6, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;-><init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 354
    .local v0, "mtkplmn":Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkPlmn;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;

    const/16 v2, 0x79

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    return-void
.end method

.method private updateSsOperatorName(Landroid/telephony/ServiceState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 27
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "strOperatorLong"    # Ljava/lang/String;
    .param p3, "strOperatorShort"    # Ljava/lang/String;
    .param p4, "operatorNumeric"    # Ljava/lang/String;

    .line 3216
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3217
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    .line 3220
    .local v3, "nri_ps":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v3, :cond_82

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    if-eqz v5, :cond_82

    .line 3221
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    .line 3222
    .local v5, "ps_cell":Landroid/telephony/CellIdentity;
    invoke-virtual {v5, v1}, Landroid/telephony/CellIdentity;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3223
    invoke-virtual {v5, v2}, Landroid/telephony/CellIdentity;->setOperatorAlphaShort(Ljava/lang/String;)V

    .line 3224
    new-instance v21, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v7, 0x2

    .line 3228
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v9

    .line 3229
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v10

    .line 3230
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v11

    .line 3231
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v12

    .line 3232
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object v13

    .line 3234
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v15

    .line 3235
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v6

    iget v14, v6, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    .line 3236
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v6

    iget-boolean v6, v6, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    .line 3237
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v4

    iget-boolean v4, v4, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    .line 3238
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v8

    iget-boolean v8, v8, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 3239
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/DataSpecificRegistrationInfo;->getLteVopsSupportInfo()Landroid/telephony/LteVopsSupportInfo;

    move-result-object v20

    move/from16 v17, v6

    move-object/from16 v6, v21

    move/from16 v19, v8

    const/4 v8, 0x1

    move/from16 v16, v14

    move-object v14, v5

    move/from16 v18, v4

    invoke-direct/range {v6 .. v20}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V

    move-object/from16 v4, v21

    .line 3240
    .local v4, "new_nri_ps":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/NetworkRegistrationInfo;->setNrState(I)V

    .line 3241
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 3242
    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 3244
    .end local v4    # "new_nri_ps":Landroid/telephony/NetworkRegistrationInfo;
    .end local v5    # "ps_cell":Landroid/telephony/CellIdentity;
    :cond_82
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 3247
    .local v4, "nri_cs":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v4, :cond_e9

    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    if-eqz v5, :cond_e9

    .line 3248
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    .line 3249
    .local v5, "cs_cell":Landroid/telephony/CellIdentity;
    invoke-virtual {v5, v1}, Landroid/telephony/CellIdentity;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3250
    invoke-virtual {v5, v2}, Landroid/telephony/CellIdentity;->setOperatorAlphaShort(Ljava/lang/String;)V

    .line 3251
    new-instance v20, Landroid/telephony/NetworkRegistrationInfo;

    .line 3254
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v9

    .line 3255
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v10

    .line 3256
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v11

    .line 3257
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v12

    .line 3258
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object v13

    .line 3260
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v15

    .line 3261
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object v6

    iget-boolean v14, v6, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    .line 3262
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object v6

    iget v6, v6, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    .line 3263
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object v8

    iget v8, v8, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    .line 3264
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object v7

    iget v7, v7, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    move/from16 v18, v6

    move-object/from16 v6, v20

    move/from16 v19, v7

    const/4 v7, 0x1

    move/from16 v21, v8

    const/4 v8, 0x1

    move/from16 v16, v14

    move-object v14, v5

    move/from16 v17, v18

    move/from16 v18, v21

    invoke-direct/range {v6 .. v19}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    .line 3265
    .local v6, "new_nri_cs":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 3266
    invoke-virtual {v0, v6}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 3268
    .end local v5    # "cs_cell":Landroid/telephony/CellIdentity;
    .end local v6    # "new_nri_cs":Landroid/telephony/NetworkRegistrationInfo;
    :cond_e9
    return-void
.end method

.method private updateTurboPLMN()V
    .registers 3

    .line 348
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updatePLMN(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 349
    return-void
.end method


# virtual methods
.method protected final IsInternationalRoamingException(Ljava/lang/String;)Z
    .registers 11
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 3692
    const-string v0, "carrier_international_roaming_exception_list_strings"

    .line 3695
    .local v0, "carrierConfig":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3696
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 3697
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v2, 0x0

    const-string v3, "MTKSST"

    if-nez v1, :cond_1b

    .line 3698
    const-string v4, "Carrier config service is not available"

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    return v2

    .line 3702
    :cond_1b
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 3703
    .local v4, "b":Landroid/os/PersistableBundle;
    if-nez v4, :cond_42

    .line 3704
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get the config. subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    return v2

    .line 3708
    :cond_42
    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3709
    .local v5, "operatorRoamingException":[Ljava/lang/String;
    if-nez v5, :cond_66

    .line 3710
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not available. subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3711
    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3710
    invoke-static {v3, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    return v2

    .line 3715
    :cond_66
    new-instance v6, Ljava/util/HashSet;

    .line 3716
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3718
    .local v6, "internationalRoamingSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "For subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", international roaming exceptions are "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3720
    invoke-virtual {v6}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", operatorNumeric = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3718
    invoke-static {v3, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3725
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bd

    .line 3726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in list."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    const/4 v2, 0x1

    return v2

    .line 3730
    :cond_bd
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not in list."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    return v2
.end method

.method public dispose()V
    .registers 3

    .line 938
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 940
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMtkIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 941
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForCsNetworkStateChanged(Landroid/os/Handler;)V

    .line 942
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForPsNetworkStateChanged(Landroid/os/Handler;)V

    .line 943
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 944
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 945
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 946
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unSetInvalidSimInfo(Landroid/os/Handler;)V

    .line 947
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForNetworkEvent(Landroid/os/Handler;)V

    .line 948
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForModulation(Landroid/os/Handler;)V

    .line 951
    :try_start_45
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->isImeiLocked()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 952
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForIMEILock(Landroid/os/Handler;)V
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_54} :catch_55

    .line 956
    :cond_54
    goto :goto_5b

    .line 953
    :catch_55
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "No isImeiLocked"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 957
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_5b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->unregisterForHandoverNeededEvent(Landroid/os/Handler;)V

    .line 959
    :cond_60
    return-void
.end method

.method public getFemtoAct()Ljava/lang/String;
    .registers 2

    .line 3409
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoAct:Ljava/lang/String;

    return-object v0
.end method

.method public getFemtoCsgId()Ljava/lang/String;
    .registers 2

    .line 3399
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getFemtoPlmn()Ljava/lang/String;
    .registers 2

    .line 3404
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtoPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public getLac()I
    .registers 2

    .line 4497
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getLacFromServiceState(Landroid/telephony/ServiceState;)I

    move-result v0

    return v0
.end method

.method public getLacFromServiceState(Landroid/telephony/ServiceState;)I
    .registers 6
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .line 4478
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPrioritizedCellIdentities(Landroid/telephony/ServiceState;)Ljava/util/List;

    move-result-object v0

    .line 4479
    .local v0, "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4480
    const/4 v1, 0x0

    goto :goto_13

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellIdentity;

    .line 4481
    .local v1, "id":Landroid/telephony/CellIdentity;
    :goto_13
    if-nez v1, :cond_17

    const/4 v2, -0x1

    return v2

    .line 4482
    :cond_17
    const/4 v2, -0x1

    .line 4483
    .local v2, "lac":I
    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_4e

    :pswitch_1f
    goto :goto_47

    .line 4488
    :pswitch_20
    move-object v3, v1

    check-cast v3, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v2

    goto :goto_47

    .line 4486
    :pswitch_28
    move-object v3, v1

    check-cast v3, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityTdscdma;->getLac()I

    move-result v2

    goto :goto_47

    .line 4485
    :pswitch_30
    move-object v3, v1

    check-cast v3, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    goto :goto_47

    .line 4487
    :pswitch_38
    move-object v3, v1

    check-cast v3, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v2

    goto :goto_47

    .line 4484
    :pswitch_40
    move-object v3, v1

    check-cast v3, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v2

    .line 4491
    :goto_47
    const v3, 0x7fffffff

    if-ne v2, v3, :cond_4d

    const/4 v2, -0x1

    .line 4493
    :cond_4d
    return v2

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_40
        :pswitch_1f
        :pswitch_38
        :pswitch_30
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method public getLocatedPlmn()Ljava/lang/String;
    .registers 2

    .line 3164
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public getNrContextIds()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4223
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4224
    .local v0, "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object v1

    .line 4225
    .local v1, "pccs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    invoke-static {v1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 4226
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/PhysicalChannelConfig;

    .line 4227
    .local v3, "config":Landroid/telephony/PhysicalChannelConfig;
    invoke-virtual {v3}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_3b

    .line 4228
    invoke-virtual {v3}, Landroid/telephony/PhysicalChannelConfig;->getContextIds()[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2d
    if-ge v6, v5, :cond_3b

    aget v7, v4, v6

    .line 4229
    .local v7, "id":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4228
    .end local v7    # "id":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 4232
    .end local v3    # "config":Landroid/telephony/PhysicalChannelConfig;
    :cond_3b
    goto :goto_13

    .line 4235
    :cond_3c
    return-object v0
.end method

.method protected getOperatorNameFromEri()Ljava/lang/String;
    .registers 9

    .line 4059
    const/4 v0, 0x0

    .line 4060
    .local v0, "eriText":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v1

    const v2, 0x10407af

    const/4 v3, 0x1

    if-eqz v1, :cond_39

    .line 4061
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    if-ne v1, v3, :cond_1c8

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v1, :cond_1c8

    .line 4064
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_29

    .line 4065
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c8

    .line 4069
    :cond_29
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4070
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c8

    .line 4073
    :cond_39
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_1c8

    .line 4075
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 4076
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhoneId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 4078
    .local v1, "simMccMnc":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v1, :cond_79

    .line 4079
    const-string v5, "310120"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_76

    .line 4080
    const-string v5, "310009"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_76

    .line 4081
    const-string v5, "311490"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_76

    .line 4082
    const-string v5, "311870"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 4083
    :cond_76
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEnableERI:Z

    goto :goto_7b

    .line 4085
    :cond_79
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEnableERI:Z

    .line 4089
    :goto_7b
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    if-eqz v5, :cond_99

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 4090
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_99

    move v5, v3

    goto :goto_9a

    :cond_99
    move v5, v4

    .line 4091
    .local v5, "hasBrandOverride":Z
    :goto_9a
    if-nez v5, :cond_163

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v6

    if-ne v6, v3, :cond_163

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 4092
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v6

    if-eqz v6, :cond_163

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4093
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v6

    if-eqz v6, :cond_cb

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4094
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x111000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_163

    :cond_cb
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v6, :cond_163

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEnableERI:Z

    if-eqz v6, :cond_163

    .line 4101
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v0

    .line 4103
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_133

    .line 4107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 4108
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_163

    .line 4109
    :cond_ef
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_163

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4110
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v2

    if-eq v2, v3, :cond_163

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4111
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v2

    const/16 v6, 0xa0

    if-eq v2, v6, :cond_163

    .line 4112
    const-string v2, "Append ERI text to PLMN String"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "- "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_163

    .line 4116
    :cond_133
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_14d

    .line 4117
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 4118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_163

    .line 4121
    const-string v2, "ro.cdma.home.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_163

    .line 4123
    :cond_14d
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v6

    if-eqz v6, :cond_163

    .line 4126
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4127
    invoke-virtual {v6, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4131
    :cond_163
    :goto_163
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_1c8

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v6, :cond_1c8

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_1c8

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4132
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCombinedRegState(Landroid/telephony/ServiceState;)I

    move-result v2

    if-nez v2, :cond_1c8

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4133
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v2

    if-nez v2, :cond_1c8

    .line 4137
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v2, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 4138
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    move-result v2

    .line 4141
    .local v2, "showSpn":Z
    if-eqz v2, :cond_1a2

    :try_start_193
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v6}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->allowSpnDisplayed()Z

    move-result v6
    :try_end_199
    .catch Ljava/lang/RuntimeException; {:try_start_193 .. :try_end_199} :catch_19d

    if-eqz v6, :cond_1a2

    move v4, v3

    goto :goto_1a2

    .line 4142
    :catch_19d
    move-exception v4

    .line 4143
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1a4

    .line 4141
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_1a2
    :goto_1a2
    move v2, v4

    .line 4144
    nop

    .line 4146
    :goto_1a4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v4

    .line 4148
    .local v4, "iconIndex":I
    if-eqz v2, :cond_1c8

    if-ne v4, v3, :cond_1c8

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4149
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v3

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaNetworkId()I

    move-result v6

    invoke-virtual {p0, v3, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isInHomeSidNid(II)Z

    move-result v3

    if-eqz v3, :cond_1c8

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_1c8

    .line 4151
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 4155
    .end local v1    # "simMccMnc":Ljava/lang/String;
    .end local v2    # "showSpn":Z
    .end local v4    # "iconIndex":I
    .end local v5    # "hasBrandOverride":Z
    :cond_1c8
    :goto_1c8
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 968
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_278

    .line 1201
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_277

    .line 1191
    :sswitch_23
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->isAnyApnPreferredOnIwlan()Z

    move-result v0

    .line 1192
    .local v0, "isIwlanPreferred":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_IWLAN_PREFERRED_CHANGED: isIwlanPreferred = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1193
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_277

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isIwlanPreferred()Z

    move-result v1

    if-eq v0, v1, :cond_277

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v1, v1, v3

    if-nez v1, :cond_277

    .line 1196
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateInternal(Z)V

    goto/16 :goto_277

    .line 970
    .end local v0    # "isIwlanPreferred":Z
    :sswitch_54
    const-string v0, "EVENT_RECHECK_NRM_STATUS trigger pollState"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateInternal(Z)V

    .line 972
    goto/16 :goto_277

    .line 1123
    :sswitch_5e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1124
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_95

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_95

    .line 1125
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1126
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x67

    if-ne v2, v4, :cond_93

    .line 1127
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 1128
    const-string v2, "EVENT_SIM_OPL_LOADED: EVENT_OPL5G"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1129
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->refreshSpn(Landroid/telephony/ServiceState;Z)V

    .line 1130
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    if-eqz v2, :cond_93

    .line 1131
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    goto :goto_93

    .line 1134
    :cond_8e
    const-string v2, "EVENT_SIM_OPL_LOADED should not be here"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1137
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_93
    :goto_93
    goto/16 :goto_277

    .line 1138
    :cond_95
    const-string v1, "EVENT_SIM_OPL_LOADED obj is null"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1140
    goto/16 :goto_277

    .line 1023
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_9c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_277

    .line 1024
    const-string v0, "handle EVENT_IMEI_LOCK GSM"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1025
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsImeiLock:Z

    goto/16 :goto_277

    .line 1029
    :sswitch_ad
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_277

    .line 1030
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1031
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_277

    .line 1032
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 1033
    .local v1, "res":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    if-nez v1, :cond_ca

    .line 1034
    const-string v2, "IccRefreshResponse is null"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1035
    goto/16 :goto_277

    .line 1037
    :cond_ca
    iget v3, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v3, :pswitch_data_2d2

    .line 1057
    :pswitch_cf
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSST EVENT_ICC_REFRESH IccRefreshResponse ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_fd

    .line 1042
    :pswitch_e4
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 1043
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 1044
    const-string v2, "Reset mLastRegisteredPLMN/mLastPSRegisteredPLMNfor ICC refresh"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1046
    goto :goto_fd

    .line 1049
    :pswitch_ee
    iget v3, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    const/16 v4, 0x6f07

    if-ne v3, v4, :cond_fd

    .line 1050
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 1051
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 1052
    const-string v2, "Reset flag of IVSR for IMSI update"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1060
    .end local v1    # "res":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_fd
    :goto_fd
    goto/16 :goto_277

    .line 1017
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_ff
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_277

    .line 1018
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1019
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onModulationInfoReceived(Landroid/os/AsyncResult;)V

    goto/16 :goto_277

    .line 1011
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_110
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_277

    .line 1012
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1013
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onNetworkEventReceived(Landroid/os/AsyncResult;)V

    goto/16 :goto_277

    .line 987
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_121
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 988
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onPsNetworkStateChangeResult(Landroid/os/AsyncResult;)V

    .line 989
    goto/16 :goto_277

    .line 1071
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_12a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1072
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onFemtoCellInfoResult(Landroid/os/AsyncResult;)V

    .line 1073
    goto/16 :goto_277

    .line 1064
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_277

    .line 1065
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1066
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onInvalidSimInfoReceived(Landroid/os/AsyncResult;)V

    goto/16 :goto_277

    .line 1007
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_144
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1008
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onNetworkStateChangeResult(Landroid/os/AsyncResult;)V

    .line 1009
    goto/16 :goto_277

    .line 1156
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_14d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1157
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isTurboSSAlive()Z

    move-result v1

    if-eqz v1, :cond_16c

    .line 1158
    const-string v1, "Skip PHYSICAL_CHANNEL_CONFIG Because Turbo SS Alive"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1159
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_16b

    .line 1160
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1161
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 1162
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhysicalChannelConfig(Ljava/util/List;)V

    .line 1164
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    :cond_16b
    return-void

    .line 1166
    :cond_16c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 1167
    goto/16 :goto_277

    .line 1143
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_171
    const-string v0, "EVENT_IMS_SERVICE_STATE_CHANGED"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_277

    .line 1148
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_277

    .line 1149
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_277

    .line 1110
    :sswitch_193
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b0

    .line 1113
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1112
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1114
    .local v0, "subIds":[I
    if-eqz v0, :cond_1b0

    array-length v1, v0

    if-lez v1, :cond_1b0

    .line 1115
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 1119
    .end local v0    # "subIds":[I
    :cond_1b0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 1120
    goto/16 :goto_277

    .line 1187
    :sswitch_1b5
    const-string v0, "EVENT_CHANGE_IMS_STATE: no action"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1188
    goto/16 :goto_277

    .line 1171
    :sswitch_1bc
    const/4 v0, 0x0

    .line 1172
    .local v0, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1d2

    .line 1173
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1176
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1cc

    .line 1177
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    goto :goto_1d2

    .line 1178
    :cond_1cc
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_1d2

    .line 1179
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 1183
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_1d2
    :goto_1d2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 1185
    .end local v0    # "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    goto/16 :goto_277

    .line 993
    :sswitch_1d7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 996
    const-string v0, "Receive EVENT_RUIM_READY"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateInternal(Z)V

    goto :goto_1f0

    .line 999
    :cond_1e8
    const-string v0, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 1003
    :goto_1f0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1004
    goto/16 :goto_277

    .line 974
    :sswitch_1fd
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 975
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->refreshSpn(Landroid/telephony/ServiceState;Z)V

    .line 977
    :cond_20a
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 980
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    if-eqz v0, :cond_277

    .line 981
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    goto :goto_277

    .line 1094
    :sswitch_215
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPhoneGetNitz:I

    .line 1096
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1098
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    .line 1099
    .local v2, "nitzString":Ljava/lang/String;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aget-object v1, v3, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1101
    .local v3, "nitzReceiveTime":J
    new-instance v1, Ljava/lang/Thread;

    new-instance v5, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;-><init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;J)V

    invoke-direct {v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1105
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1106
    goto :goto_277

    .line 1077
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "nitzString":Ljava/lang/String;
    .end local v3    # "nitzReceiveTime":J
    :sswitch_243
    const-string v0, "handle EVENT_RADIO_STATE_CHANGED"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_264

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1079
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-ne v0, v1, :cond_264

    .line 1080
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    .line 1083
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 1088
    :cond_264
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 1090
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateInternal(Z)V

    .line 1091
    nop

    .line 1204
    :cond_277
    :goto_277
    return-void

    :sswitch_data_278
    .sparse-switch
        0x1 -> :sswitch_243
        0xb -> :sswitch_215
        0x10 -> :sswitch_1fd
        0x1a -> :sswitch_1d7
        0x2b -> :sswitch_1bc
        0x2c -> :sswitch_1bc
        0x2d -> :sswitch_1b5
        0x31 -> :sswitch_193
        0x32 -> :sswitch_243
        0x35 -> :sswitch_171
        0x37 -> :sswitch_14d
        0x64 -> :sswitch_144
        0x65 -> :sswitch_133
        0x66 -> :sswitch_12a
        0x67 -> :sswitch_121
        0x68 -> :sswitch_110
        0x69 -> :sswitch_ff
        0x6a -> :sswitch_ad
        0x6b -> :sswitch_9c
        0x77 -> :sswitch_5e
        0x7b -> :sswitch_54
        0x7c -> :sswitch_23
    .end sparse-switch

    :pswitch_data_2d2
    .packed-switch 0x0
        :pswitch_ee
        :pswitch_cf
        :pswitch_cf
        :pswitch_cf
        :pswitch_e4
        :pswitch_ee
        :pswitch_e4
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .registers 26
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1494
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    if-eq v0, v3, :cond_b

    return-void

    .line 1496
    :cond_b
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_97

    .line 1497
    const/4 v0, 0x0

    .line 1498
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Ljava/lang/IllegalStateException;

    if-eqz v6, :cond_2f

    .line 1499
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePollStateResult exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1501
    :cond_2f
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_3d

    .line 1502
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1505
    :cond_3d
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v6, :cond_7c

    .line 1507
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->cancelPollState()V

    .line 1509
    iget-boolean v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    if-eqz v6, :cond_53

    .line 1510
    iput-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    .line 1511
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    .line 1512
    const-string v3, "handlePollStateResult trigger pending pollState()"

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_7b

    .line 1513
    :cond_53
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v6

    if-eq v6, v5, :cond_7b

    .line 1515
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v5

    if-ne v5, v3, :cond_69

    .line 1516
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    goto :goto_6e

    .line 1518
    :cond_69
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1520
    :goto_6e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1521
    iput v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegStateRaw:I

    .line 1523
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateDone()V

    .line 1524
    const-string v3, "Mlog: pollStateDone to notify RADIO_NOT_AVAILABLE"

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1527
    :cond_7b
    :goto_7b
    return-void

    .line 1530
    :cond_7c
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v6, :cond_96

    .line 1531
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RIL implementation has returned an error where it must succeed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1534
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_96
    goto :goto_b2

    .line 1535
    :cond_97
    :try_start_97
    invoke-virtual/range {p0 .. p2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_9a
    .catch Ljava/lang/RuntimeException; {:try_start_97 .. :try_end_9a} :catch_9b

    .line 1538
    goto :goto_b2

    .line 1536
    :catch_9b
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1537
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1540
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_b2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v6, v0, v4

    sub-int/2addr v6, v5

    aput v6, v0, v4

    .line 1542
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v0, v0, v4

    if-nez v0, :cond_479

    .line 1546
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->isInLegacyMode()Z

    move-result v0

    if-eqz v0, :cond_188

    .line 1547
    const/4 v6, 0x0

    .line 1548
    .local v6, "mIwlanState":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1549
    invoke-virtual {v0, v3, v5}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v7

    .line 1552
    .local v7, "wwanPsNri":Landroid/telephony/NetworkRegistrationInfo;
    :try_start_ce
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1553
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    const-string v8, "persist.vendor.radio.wfc_state"

    const-string v9, "0"

    .line 1552
    invoke-static {v0, v8, v9}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    .line 1554
    if-lez v6, :cond_186

    if-eqz v7, :cond_186

    .line 1555
    const-string v0, "isInLegacyMode and IWLAN is actived, overwrite (PS, WWAN)"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1557
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/16 v12, 0x12

    .line 1562
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v13

    .line 1563
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v14

    .line 1564
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object v15

    .line 1565
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v16

    .line 1566
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v17

    .line 1567
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v8

    iget v8, v8, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    .line 1568
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    .line 1569
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v4

    iget-boolean v4, v4, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    .line 1570
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v5

    iget-boolean v5, v5, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 1571
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/DataSpecificRegistrationInfo;->getLteVopsSupportInfo()Landroid/telephony/LteVopsSupportInfo;

    move-result-object v22

    move/from16 v18, v8

    move-object v8, v0

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v8 .. v22}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V

    .line 1572
    .local v0, "nri_wwan":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1574
    new-instance v3, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x1

    .line 1579
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v13

    .line 1580
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v14

    .line 1581
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object v15

    .line 1582
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v16

    .line 1583
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v17

    .line 1584
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v4

    iget v4, v4, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    .line 1585
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v5

    iget-boolean v5, v5, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    .line 1586
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v8

    iget-boolean v8, v8, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    .line 1587
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v12

    iget-boolean v12, v12, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 1588
    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/DataSpecificRegistrationInfo;->getLteVopsSupportInfo()Landroid/telephony/LteVopsSupportInfo;

    move-result-object v22

    move/from16 v20, v8

    move-object v8, v3

    move/from16 v21, v12

    const/16 v12, 0x12

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-direct/range {v8 .. v22}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V

    .line 1589
    .local v3, "nri_wlan":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_186} :catch_187

    .line 1592
    .end local v0    # "nri_wwan":Landroid/telephony/NetworkRegistrationInfo;
    .end local v3    # "nri_wlan":Landroid/telephony/NetworkRegistrationInfo;
    :cond_186
    goto :goto_188

    .line 1591
    :catch_187
    move-exception v0

    .line 1596
    .end local v6    # "mIwlanState":I
    .end local v7    # "wwanPsNri":Landroid/telephony/NetworkRegistrationInfo;
    :cond_188
    :goto_188
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->combinePsRegistrationStates(Landroid/telephony/ServiceState;)V

    .line 1597
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->refreshSpn(Landroid/telephony/ServiceState;Z)V

    .line 1598
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateOperatorNameForServiceState(Landroid/telephony/ServiceState;)V

    .line 1600
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_226

    .line 1604
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_1b3

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1605
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_1b1

    goto :goto_1b3

    :cond_1b1
    const/4 v0, 0x0

    goto :goto_1b4

    :cond_1b3
    :goto_1b3
    const/4 v0, 0x1

    .line 1606
    .local v0, "in_service":Z
    :goto_1b4
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1607
    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v3

    if-nez v3, :cond_1d2

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1608
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_1d0

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v3, Lmediatek/telephony/MtkServiceState;

    .line 1610
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getIwlanRegState()I

    move-result v3

    if-nez v3, :cond_1d2

    :cond_1d0
    const/4 v3, 0x1

    goto :goto_1d3

    :cond_1d2
    const/4 v3, 0x0

    .line 1612
    .local v3, "radioOffwithIwlan":Z
    :goto_1d3
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 1613
    .local v4, "oper":Ljava/lang/String;
    if-nez v0, :cond_1e1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1ea

    :cond_1e1
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1ff

    .line 1614
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1ff

    :cond_1ea
    if-nez v3, :cond_1ff

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    if-eqz v5, :cond_1ff

    .line 1617
    const-string v5, "Temporary service state, need restart PollState"

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1618
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    .line 1619
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->cancelPollState()V

    .line 1620
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    .line 1621
    return-void

    .line 1623
    :cond_1ff
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateRoamingState()V

    .line 1624
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v5, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RIL;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/HalVersion;->lessOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v5

    if-eqz v5, :cond_21d

    .line 1626
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getImsEccOnly()Z

    move-result v5

    .line 1627
    .local v5, "isImsEccOnly":Z
    if-nez v0, :cond_21d

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21d

    .line 1628
    iput-boolean v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    .line 1632
    .end local v5    # "isImsEccOnly":Z
    :cond_21d
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1633
    .end local v0    # "in_service":Z
    .end local v3    # "radioOffwithIwlan":Z
    .end local v4    # "oper":Ljava/lang/String;
    goto/16 :goto_476

    .line 1634
    :cond_226
    const/4 v0, 0x0

    .line 1635
    .local v0, "namMatch":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isSidsAllZeros()Z

    move-result v3

    if-nez v3, :cond_23a

    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isHomeSid(I)Z

    move-result v3

    if-eqz v3, :cond_23a

    .line 1636
    const/4 v0, 0x1

    .line 1640
    :cond_23a
    iget-boolean v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v3, :cond_273

    .line 1641
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1642
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v3

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1641
    invoke-virtual {v1, v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v3

    .line 1643
    .local v3, "isRoamingBetweenOperators":Z
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    if-eq v3, v4, :cond_273

    .line 1644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoamingBetweenOperators="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ". Override CDMA voice roaming to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1646
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1656
    .end local v3    # "isRoamingBetweenOperators":Z
    :cond_273
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v3

    .line 1657
    .local v3, "dataRat":I
    invoke-static {v3}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v4

    if-eqz v4, :cond_323

    .line 1658
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1659
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_289

    const/4 v4, 0x1

    goto :goto_28a

    :cond_289
    const/4 v4, 0x0

    .line 1660
    .local v4, "isVoiceInService":Z
    :goto_28a
    if-eqz v4, :cond_2b4

    .line 1661
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    .line 1662
    .local v5, "isVoiceRoaming":Z
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    if-eq v6, v5, :cond_2b3

    .line 1663
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data roaming != Voice roaming. Override data roaming to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1665
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v5}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1667
    .end local v5    # "isVoiceRoaming":Z
    :cond_2b3
    goto :goto_323

    .line 1673
    :cond_2b4
    iget v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isRoamIndForHomeSystem(I)Z

    move-result v5

    .line 1674
    .local v5, "isRoamIndForHomeSystem":Z
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    .line 1675
    .local v6, "dataRoamingState":Z
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v7

    const-string v8, "isRoamIndForHomeSystem="

    if-ne v7, v5, :cond_2ed

    .line 1676
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", override data roaming to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v9, v5, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1678
    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    xor-int/lit8 v9, v5, 0x1

    invoke-virtual {v7, v9}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1686
    :cond_2ed
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v7

    .line 1687
    .local v7, "config":Landroid/os/PersistableBundle;
    const-string v9, "cdma_enhanced_roaming_indicator_for_home_network_int_array"

    invoke-virtual {v7, v9}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    .line 1689
    .local v9, "homeRoamIndicators":[I
    if-nez v6, :cond_323

    if-nez v5, :cond_323

    if-eqz v9, :cond_323

    array-length v10, v9

    const/4 v11, 0x1

    if-ne v10, v11, :cond_323

    const/4 v10, 0x0

    aget v12, v9, v10

    if-ne v12, v11, :cond_323

    .line 1693
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", override data roaming to false"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1695
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1702
    .end local v4    # "isVoiceInService":Z
    .end local v5    # "isRoamIndForHomeSystem":Z
    .end local v6    # "dataRoamingState":Z
    .end local v7    # "config":Landroid/os/PersistableBundle;
    .end local v9    # "homeRoamIndicators":[I
    :cond_323
    :goto_323
    iget-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    if-nez v4, :cond_34e

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1703
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_34e

    .line 1704
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-ne v4, v5, :cond_346

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1705
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    if-ne v4, v5, :cond_346

    iget-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkExsit:Z

    if-eqz v4, :cond_346

    .line 1707
    iput-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    .line 1709
    :cond_346
    iget-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mergeEmergencyOnlyCdmaIms(Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    .line 1711
    :cond_34e
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1715
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 1716
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 1717
    const/4 v4, 0x1

    .line 1718
    .local v4, "isPrlLoaded":Z
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_36d

    .line 1719
    const/4 v4, 0x0

    .line 1721
    :cond_36d
    if-eqz v4, :cond_3d3

    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    if-nez v5, :cond_378

    goto :goto_3d3

    .line 1725
    :cond_378
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isSidsAllZeros()Z

    move-result v5

    if-nez v5, :cond_3de

    .line 1726
    if-nez v0, :cond_38c

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsInPrl:Z

    if-nez v5, :cond_38c

    .line 1728
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3de

    .line 1729
    :cond_38c
    if-eqz v0, :cond_3b1

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsInPrl:Z

    if-nez v5, :cond_3b1

    .line 1731
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v5

    if-eqz v5, :cond_3aa

    .line 1732
    const-string v5, "Turn off roaming indicator as voice is LTE or NR"

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1733
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3de

    .line 1735
    :cond_3aa
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3de

    .line 1737
    :cond_3b1
    if-nez v0, :cond_3bf

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsInPrl:Z

    if-eqz v5, :cond_3bf

    .line 1739
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3de

    .line 1742
    :cond_3bf
    iget v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    const/4 v6, 0x2

    if-gt v5, v6, :cond_3cb

    .line 1743
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3de

    .line 1746
    :cond_3cb
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_3de

    .line 1723
    :cond_3d3
    :goto_3d3
    const-string v5, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 1724
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 1751
    :cond_3de
    :goto_3de
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v5

    .line 1752
    .local v5, "roamingIndicator":I
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v8, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v7, v5, v8}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 1754
    iget-object v6, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v8, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v7, v5, v8}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 1761
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set CDMA Roaming Indicator to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ". voiceRoaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1762
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ". dataRoaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1763
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isPrlLoaded = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ". namMatch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mIsInPrl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mRoamingIndicator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mDefaultRoamingIndicator= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", set mEmergencyOnly="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mNetworkExsit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkExsit:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1761
    invoke-virtual {v1, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1772
    .end local v0    # "namMatch":Z
    .end local v3    # "dataRat":I
    .end local v4    # "isPrlLoaded":Z
    .end local v5    # "roamingIndicator":I
    :goto_476
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateDone()V

    .line 1775
    :cond_479
    return-void
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .registers 22
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1209
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, ""

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    sparse-switch v1, :sswitch_data_3f4

    .line 1487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePollStateResultMessage: Unexpected RIL response received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_3f3

    .line 1469
    :sswitch_27
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 1470
    .local v3, "ints":[I
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1471
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 1472
    aget v6, v3, v7

    if-ne v6, v8, :cond_3f

    move v6, v8

    goto :goto_40

    :cond_3f
    move v6, v7

    .line 1470
    :goto_40
    invoke-virtual {v4, v6}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 1473
    aget v4, v3, v7

    if-ne v4, v8, :cond_3f3

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->shouldForceAutoNetworkSelect()Z

    move-result v4

    if-eqz v4, :cond_3f3

    .line 1479
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1480
    const-string v4, " Forcing Automatic Network Selection, manual selection is not allowed"

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3f3

    .line 1389
    .end local v3    # "ints":[I
    :sswitch_5b
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v10

    if-eqz v10, :cond_ae

    .line 1390
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 1392
    .local v3, "opNames":[Ljava/lang/String;
    if-eqz v3, :cond_ac

    array-length v4, v3

    if-lt v4, v6, :cond_ac

    .line 1393
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setOperatorAlphaLongRaw(Ljava/lang/String;)V

    .line 1394
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v5, v3, v8

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setOperatorAlphaShortRaw(Ljava/lang/String;)V

    .line 1396
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v4

    .line 1397
    .local v4, "brandOverride":Ljava/lang/String;
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfForBrandOverride(Ljava/lang/String;)V

    .line 1398
    if-eqz v4, :cond_a1

    .line 1399
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1400
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v6, v3, v9

    invoke-virtual {v5, v4, v4, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    .line 1402
    :cond_a1
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v6, v3, v7

    aget-object v7, v3, v8

    aget-object v8, v3, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    .end local v3    # "opNames":[Ljava/lang/String;
    .end local v4    # "brandOverride":Ljava/lang/String;
    :cond_ac
    :goto_ac
    goto/16 :goto_3f3

    .line 1406
    :cond_ae
    iget-object v10, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    .line 1408
    .local v10, "opNames":[Ljava/lang/String;
    if-eqz v10, :cond_1a4

    array-length v11, v10

    if-lt v11, v6, :cond_1a4

    .line 1411
    aget-object v6, v10, v9

    if-eqz v6, :cond_d7

    aget-object v6, v10, v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v4, :cond_d7

    aget-object v4, v10, v9

    .line 1412
    const-string v6, "00000"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d7

    aget-object v4, v10, v9

    .line 1414
    const-string v6, "N/AN/A"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 1415
    :cond_d7
    const-string v4, "ro.cdma.home.operator.numeric"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v9

    .line 1419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL_REQUEST_OPERATOR.response[2], the numeric,  is bad. Using SystemProperties \'ro.cdma.home.operator.numeric\'= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v10, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1426
    :cond_f5
    aget-object v3, v10, v9

    .line 1427
    .local v3, "numeric":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1428
    .local v4, "plusCode":Z
    if-eqz v3, :cond_14d

    const-string v6, "2134"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14d

    .line 1429
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v11, 0x7

    if-ne v6, v11, :cond_14d

    .line 1430
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    invoke-interface {v6, v3}, Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;->checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1431
    .local v6, "tempStr":Ljava/lang/String;
    const-string v11, "0"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14c

    .line 1432
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x4

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    .line 1433
    move-object v3, v6

    .line 1434
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_POLL_STATE_OPERATOR_CDMA: checkMccBySidLtmOff: numeric ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", plmn ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v10, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1437
    :cond_14c
    const/4 v4, 0x1

    .line 1440
    .end local v6    # "tempStr":Ljava/lang/String;
    :cond_14d
    iget-boolean v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v6, :cond_171

    .line 1443
    if-eqz v4, :cond_167

    .line 1444
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1445
    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v11

    aget-object v12, v10, v9

    .line 1444
    invoke-static {v6, v11, v12, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->lookupOperatorName(Landroid/content/Context;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v8

    .line 1447
    :cond_167
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v7, v10, v8

    aget-object v8, v10, v9

    invoke-virtual {v6, v5, v7, v8}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a3

    .line 1450
    :cond_171
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v5

    .line 1451
    .local v5, "brandOverride":Ljava/lang/String;
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfForBrandOverride(Ljava/lang/String;)V

    .line 1452
    if-eqz v5, :cond_198

    .line 1454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_POLL_STATE_OPERATOR_CDMA: use brand="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1456
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v7, v10, v9

    invoke-virtual {v6, v5, v5, v7}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a3

    .line 1458
    :cond_198
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v7, v10, v7

    aget-object v8, v10, v8

    aget-object v9, v10, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "plusCode":Z
    .end local v5    # "brandOverride":Ljava/lang/String;
    :goto_1a3
    goto :goto_1a9

    .line 1462
    :cond_1a4
    const-string v3, "EVENT_POLL_STATE_OPERATOR_CDMA: error parsing opNames"

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1465
    .end local v10    # "opNames":[Ljava/lang/String;
    :goto_1a9
    goto/16 :goto_3f3

    .line 1291
    :sswitch_1ab
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 1292
    .local v3, "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePollStateResultMessage: PS IWLAN. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1296
    goto/16 :goto_3f3

    .line 1299
    .end local v3    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    :sswitch_1ca
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/NetworkRegistrationInfo;

    .line 1300
    .restart local v3    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9, v3}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1301
    nop

    .line 1302
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v9

    .line 1303
    .local v9, "dataSpecificStates":Landroid/telephony/DataSpecificRegistrationInfo;
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v10

    .line 1304
    .local v10, "registrationState":I
    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I

    move-result v11

    .line 1305
    .local v11, "serviceState":I
    nop

    .line 1306
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v12

    .line 1305
    invoke-static {v12}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v12

    .line 1309
    .local v12, "newDataRat":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handlePollStateResultMessage: PS cellular. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1315
    if-ne v11, v8, :cond_201

    .line 1316
    iput-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 1320
    :cond_201
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v5, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v5, v10}, Lmediatek/telephony/MtkServiceState;->setRilDataRegState(I)V

    .line 1323
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v5

    iput-boolean v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPSEmergencyOnly:Z

    .line 1324
    iget-boolean v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCSEmergencyOnly:Z

    if-nez v5, :cond_216

    iget-boolean v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPSEmergencyOnly:Z

    if-eqz v5, :cond_217

    :cond_216
    move v7, v8

    :cond_217
    iput-boolean v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    .line 1325
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_23a

    .line 1326
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v4

    iput v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewReasonDataDenied:I

    .line 1327
    iget v4, v9, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iput v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewMaxDataCalls:I

    .line 1328
    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mGsmDataRoaming:Z

    .line 1331
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mGsmDataRoaming:Z

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    goto/16 :goto_2dd

    .line 1332
    :cond_23a
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v5

    const-string v7, " dataRadioTechnology="

    if-eqz v5, :cond_275

    .line 1333
    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v4

    .line 1334
    .local v4, "isDataRoaming":Z
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v4}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlPollStateResultMessage: cdma dataServiceState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " regState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1342
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v4}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 1343
    .end local v4    # "isDataRoaming":Z
    goto :goto_2dd

    .line 1351
    :cond_275
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v5

    .line 1352
    .local v5, "oldDataRAT":I
    if-nez v5, :cond_27f

    if-nez v12, :cond_297

    .line 1354
    :cond_27f
    invoke-static {v5}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v8

    if-eqz v8, :cond_28b

    .line 1355
    invoke-static {v12}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v8

    if-nez v8, :cond_297

    .line 1356
    :cond_28b
    invoke-static {v5}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v8

    if-eqz v8, :cond_2a0

    .line 1357
    invoke-static {v12}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v8

    if-eqz v8, :cond_2a0

    .line 1358
    :cond_297
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 1361
    :cond_2a0
    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v6

    if-eqz v6, :cond_2ad

    .line 1362
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v6, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v6, v4}, Lmediatek/telephony/MtkServiceState;->setRilDataRegState(I)V

    .line 1367
    :cond_2ad
    invoke-virtual {v0, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v4

    .line 1368
    .restart local v4    # "isDataRoaming":Z
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v4}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 1371
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v4}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 1374
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlPollStateResultMessage: CdmaLteSST dataServiceState="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " registrationState="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1380
    .end local v4    # "isDataRoaming":Z
    .end local v5    # "oldDataRAT":I
    :goto_2dd
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateServiceStateArfcnRsrpBoost(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    .line 1381
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    .line 1382
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v5

    .line 1383
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentity;->getType()I

    move-result v6

    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1384
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getArfcnRsrpBoost()I

    move-result v7

    .line 1381
    invoke-interface {v4, v5, v6, v7}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->modifyRsrpThresholdsForRsrpBoost(Landroid/os/PersistableBundle;II)Z

    .line 1385
    goto/16 :goto_3f3

    .line 1211
    .end local v3    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v9    # "dataSpecificStates":Landroid/telephony/DataSpecificRegistrationInfo;
    .end local v10    # "registrationState":I
    .end local v11    # "serviceState":I
    .end local v12    # "newDataRat":I
    :sswitch_2ff
    iget-object v5, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/NetworkRegistrationInfo;

    .line 1212
    .local v5, "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    nop

    .line 1213
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object v10

    .line 1215
    .local v10, "voiceSpecificStates":Landroid/telephony/VoiceSpecificRegistrationInfo;
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v11

    .line 1216
    .local v11, "registrationState":I
    iget-boolean v12, v10, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    .line 1217
    .local v12, "cssIndicator":I
    nop

    .line 1218
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v13

    .line 1217
    invoke-static {v13}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v13

    .line 1220
    .local v13, "newVoiceRat":I
    iget-object v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeToServiceState(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 1221
    iget-object v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14, v12}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 1222
    iget-object v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14, v5}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 1223
    iget-object v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    .line 1226
    iget-object v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v14, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v14, v11}, Lmediatek/telephony/MtkServiceState;->setRilVoiceRegState(I)V

    .line 1230
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v14

    .line 1231
    .local v14, "reasonForDenial":I
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v15

    iput-boolean v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCSEmergencyOnly:Z

    .line 1232
    iget-boolean v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCSEmergencyOnly:Z

    if-nez v15, :cond_34f

    iget-boolean v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPSEmergencyOnly:Z

    if-eqz v15, :cond_34d

    goto :goto_34f

    :cond_34d
    move v15, v7

    goto :goto_350

    :cond_34f
    :goto_34f
    move v15, v8

    :goto_350
    iput-boolean v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    .line 1233
    iget-object v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v15

    if-eqz v15, :cond_364

    .line 1234
    invoke-virtual {v0, v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mGsmVoiceRoaming:Z

    .line 1235
    iput v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewRejectCode:I

    goto/16 :goto_3f3

    .line 1237
    :cond_364
    iget v15, v10, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    .line 1240
    .local v15, "roamingIndicator":I
    iget v7, v10, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    .line 1243
    .local v7, "systemIsInPrl":I
    iget v6, v10, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    .line 1245
    .local v6, "defaultRoamingIndicator":I
    iput v11, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegistrationState:I

    .line 1249
    nop

    .line 1250
    invoke-virtual {v0, v11}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v17

    if-eqz v17, :cond_37c

    .line 1251
    invoke-virtual {v0, v15}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isRoamIndForHomeSystem(I)Z

    move-result v17

    if-nez v17, :cond_37c

    move/from16 v17, v8

    goto :goto_37e

    :cond_37c
    const/16 v17, 0x0

    :goto_37e
    move/from16 v18, v17

    .line 1252
    .local v18, "cdmaRoaming":Z
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v9, v18

    .end local v18    # "cdmaRoaming":Z
    .local v9, "cdmaRoaming":Z
    invoke-virtual {v8, v9}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 1254
    if-eqz v9, :cond_390

    .line 1255
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v8, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v8, v4}, Lmediatek/telephony/MtkServiceState;->setRilVoiceRegState(I)V

    .line 1259
    :cond_390
    iput v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRoamingIndicator:I

    .line 1260
    if-nez v7, :cond_396

    const/4 v4, 0x0

    goto :goto_397

    :cond_396
    const/4 v4, 0x1

    :goto_397
    iput-boolean v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsInPrl:Z

    .line 1261
    iput v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 1263
    const/4 v4, 0x0

    .line 1264
    .local v4, "systemId":I
    const/4 v8, 0x0

    .line 1265
    .local v8, "networkId":I
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v16

    .line 1266
    .local v16, "cellIdentity":Landroid/telephony/CellIdentity;
    if-eqz v16, :cond_3bd

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/CellIdentity;->getType()I

    move-result v2

    move/from16 v18, v4

    const/4 v4, 0x2

    .end local v4    # "systemId":I
    .local v18, "systemId":I
    if-ne v2, v4, :cond_3bf

    .line 1267
    move-object/from16 v2, v16

    check-cast v2, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v4

    .line 1268
    .end local v18    # "systemId":I
    .restart local v4    # "systemId":I
    move-object/from16 v2, v16

    check-cast v2, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v8

    goto :goto_3c1

    .line 1266
    :cond_3bd
    move/from16 v18, v4

    .line 1270
    .end local v4    # "systemId":I
    .restart local v18    # "systemId":I
    :cond_3bf
    move/from16 v4, v18

    .end local v18    # "systemId":I
    .restart local v4    # "systemId":I
    :goto_3c1
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v4, v8}, Landroid/telephony/ServiceState;->setCdmaSystemAndNetworkId(II)V

    .line 1272
    if-nez v14, :cond_3cd

    .line 1273
    const-string v2, "General"

    iput-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_3d7

    .line 1274
    :cond_3cd
    const/4 v2, 0x1

    if-ne v14, v2, :cond_3d5

    .line 1275
    const-string v2, "Authentication Failure"

    iput-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_3d7

    .line 1277
    :cond_3d5
    iput-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    .line 1280
    :goto_3d7
    iget v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegistrationState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3f2

    .line 1281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registration denied, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1288
    .end local v4    # "systemId":I
    .end local v6    # "defaultRoamingIndicator":I
    .end local v7    # "systemIsInPrl":I
    .end local v8    # "networkId":I
    .end local v9    # "cdmaRoaming":Z
    .end local v15    # "roamingIndicator":I
    .end local v16    # "cellIdentity":Landroid/telephony/CellIdentity;
    :cond_3f2
    nop

    .line 1489
    .end local v5    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v10    # "voiceSpecificStates":Landroid/telephony/VoiceSpecificRegistrationInfo;
    .end local v11    # "registrationState":I
    .end local v12    # "cssIndicator":I
    .end local v13    # "newVoiceRat":I
    .end local v14    # "reasonForDenial":I
    :cond_3f3
    :goto_3f3
    return-void

    :sswitch_data_3f4
    .sparse-switch
        0x4 -> :sswitch_2ff
        0x5 -> :sswitch_1ca
        0x6 -> :sswitch_1ab
        0x7 -> :sswitch_5b
        0xe -> :sswitch_27
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .registers 4

    .line 3383
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3384
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 3385
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 3386
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    .line 3390
    :cond_2b
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHangupAllImsCall()V

    .line 3392
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/RadioManager;->sendRequestBeforeSetRadioPower(ZI)V

    .line 3394
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x36

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3395
    return-void
.end method

.method public hasPendingRadioPowerOff()Z
    .registers 2

    .line 4261
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    return v0
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .registers 5

    .line 3099
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 3101
    return v1

    .line 3102
    :cond_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3104
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isConcurrentVoiceAndDataAllowedForVolte()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3105
    return v1

    .line 3109
    :cond_19
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isConcurrentVoiceAndDataAllowedForIwlan()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3110
    return v1

    .line 3112
    :cond_20
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    return v0

    .line 3113
    :cond_25
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 3117
    return v2

    .line 3123
    :cond_2f
    const-string v0, "ro.vendor.mtk_c2k_lte_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3124
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v3, 0xe

    if-ne v0, v3, :cond_42

    .line 3125
    return v1

    .line 3130
    :cond_42
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isConcurrentVoiceAndDataAllowedForVolte()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 3131
    return v1

    .line 3134
    :cond_49
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v0

    if-ne v0, v1, :cond_52

    goto :goto_53

    :cond_52
    move v1, v2

    :goto_53
    return v1
.end method

.method protected isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z
    .registers 4
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 3958
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 3959
    .local v0, "result":Z
    if-eqz v0, :cond_b

    .line 3960
    const-string v1, "isOperatorConsideredNonRoaming true"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3962
    :cond_b
    return v0
.end method

.method protected isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z
    .registers 11
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 3967
    const/4 v0, 0x0

    .line 3970
    .local v0, "result":Z
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;

    move-result-object v1

    .line 3971
    .local v1, "opeartors":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_15

    aget-object v3, v1, v2

    goto :goto_17

    :cond_15
    const-string v3, ""

    .line 3972
    .local v3, "simNumeric":Ljava/lang/String;
    :goto_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOperatorConsideredRoaming simNumeric  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3974
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 3976
    .local v4, "operatorNumeric":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 3977
    const/4 v5, 0x3

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "404"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "405"

    if-nez v6, :cond_4e

    .line 3978
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 3979
    :cond_4e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6a

    .line 3980
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    .line 3981
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 3982
    :cond_68
    const/4 v0, 0x1

    goto :goto_6e

    .line 3984
    :cond_6a
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 3986
    :goto_6e
    if-eqz v0, :cond_75

    .line 3987
    const-string v2, "isOperatorConsideredRoaming true"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3989
    :cond_75
    return v0
.end method

.method public isTurboSSAlive()Z
    .registers 2

    .line 745
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsTurboSSAlive:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .line 2164
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "] "

    const-string v2, "MTKSST"

    if-eqz v0, :cond_2d

    .line 2165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GsmSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 2166
    :cond_2d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 2169
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaLteSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :goto_76
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .line 2175
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "] "

    const-string v2, "MTKSST"

    if-eqz v0, :cond_2d

    .line 2176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GsmSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 2177
    :cond_2d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 2180
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaLteSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    :goto_76
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .line 2185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "] "

    const-string v2, "MTKSST"

    if-eqz v0, :cond_2d

    .line 2186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GsmSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 2187
    :cond_2d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 2190
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaLteSST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :goto_76
    return-void
.end method

.method protected mtkHangupAllImsCall()V
    .registers 6

    .line 4391
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4392
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_71

    .line 4393
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v1, :cond_71

    .line 4394
    :cond_12
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 4395
    .local v1, "bundle":Landroid/os/PersistableBundle;
    const/4 v2, 0x0

    .line 4396
    .local v2, "sendNetworkCoverage":Z
    nop

    .line 4397
    const-string v3, "mtk_send_network_coverage_lost"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 4398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupAndPowerOff: sendNetworkCoverage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4399
    if-eqz v2, :cond_57

    .line 4400
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    const/16 v4, 0x3f1

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;->hangupIfAlive(I)V

    .line 4402
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;->hangupIfAlive(I)V

    .line 4404
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCall;->hangupIfAlive(I)V

    .line 4406
    const-string v3, "hangupAndPowerOff: RJIO: hangup VoLTE call."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_71

    .line 4408
    :cond_57
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 4409
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 4410
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 4411
    const-string v3, "hangupAndPowerOff: hangup VoLTE call."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4414
    .end local v1    # "bundle":Landroid/os/PersistableBundle;
    .end local v2    # "sendNetworkCoverage":Z
    :cond_71
    :goto_71
    return-void
.end method

.method protected mtkPowerOffNonDdsPhone()Z
    .registers 5

    .line 4241
    nop

    .line 4242
    const-string v0, "persist.radio.airplane_mode_on"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4241
    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 4243
    .local v0, "isAirplaneModeOn":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->areAllDataDisconnected()Z

    move-result v1

    .line 4245
    .local v1, "allDataDisconnected":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powerOffRadioSafely: apm:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", allDataDisconnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mSubId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4247
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", shutdown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4248
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isDeviceShuttingDown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4245
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4250
    const/4 v2, 0x0

    if-eqz v1, :cond_62

    if-nez v0, :cond_62

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isDeviceShuttingDown()Z

    move-result v3

    if-nez v3, :cond_62

    .line 4251
    const-string v3, "Non-dds data disconnected, turn off radio right away."

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4252
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hangupAndPowerOff()V

    .line 4253
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 4254
    const/4 v2, 0x1

    return v2

    .line 4256
    :cond_62
    return v2
.end method

.method protected notifySpnDisplayUpdate(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)V
    .registers 9
    .param p1, "data"    # Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    .line 4502
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v0

    .line 4504
    .local v0, "subId":I
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSubId:I

    if-ne v1, v0, :cond_3e

    .line 4505
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowPlmn()Z

    move-result v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowPlmn:Z

    if-ne v1, v2, :cond_3e

    .line 4506
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowSpn()Z

    move-result v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowSpn:Z

    if-ne v1, v2, :cond_3e

    .line 4507
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 4508
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getDataSpn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 4509
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_120

    .line 4511
    :cond_3e
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4514
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierNameDisplayBitmask(Landroid/telephony/ServiceState;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4515
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowPlmn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    .line 4516
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 4517
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowSpn()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    .line 4518
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    .line 4519
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getDataSpn()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x6

    .line 4520
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 4511
    const-string v2, "updateSpnDisplay: changed sending intent, rule=%d, showPlmn=\'%b\', plmn=\'%s\', showSpn=\'%b\', spn=\'%s\', dataSpn=\'%s\', subId=\'%d\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4522
    .local v1, "log":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSpnDisplay: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4524
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4525
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowSpn()Z

    move-result v4

    const-string v5, "android.telephony.extra.SHOW_SPN"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4526
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.telephony.extra.SPN"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4527
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getDataSpn()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.telephony.extra.DATA_SPN"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4528
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowPlmn()Z

    move-result v4

    const-string v5, "android.telephony.extra.SHOW_PLMN"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4529
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.telephony.extra.PLMN"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4531
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHhbName:Ljava/lang/String;

    const-string v5, "hnbName"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4532
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCsgId:Ljava/lang/String;

    const-string v5, "csgId"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4533
    iget v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mFemtocellDomain:I

    const-string v5, "domain"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4535
    iget v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsFemtocell:I

    const-string v5, "femtocell"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4538
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ne v4, v3, :cond_f9

    .line 4539
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4541
    :cond_f9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4542
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4549
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowPlmn()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowSpn()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updatePLMN(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 4553
    .end local v1    # "log":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_120
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowSpn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowSpn:Z

    .line 4554
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowPlmn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurShowPlmn:Z

    .line 4555
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 4556
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getDataSpn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 4557
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 4558
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;)Z
    .registers 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4327
    const-string v0, ""

    .line 4328
    .local v0, "mlog":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 4329
    invoke-interface {v1}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkRsrpOnly()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_11

    :cond_10
    move-object v1, v2

    .line 4328
    :goto_11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 4330
    .local v1, "mtkRsrpOnly":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    if-eqz v3, :cond_1e

    .line 4331
    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkLteRsrpThreshold()[I

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, v2

    .line 4332
    .local v3, "mtkLteRsrpThreshold":[I
    :goto_1f
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    if-eqz v4, :cond_28

    .line 4333
    invoke-interface {v4}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkLteRssnrThreshold()[I

    move-result-object v2

    goto :goto_29

    :cond_28
    nop

    .line 4335
    .local v2, "mtkLteRssnrThreshold":[I
    :goto_29
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-string v5, ", raw:"

    if-eqz v4, :cond_57

    .line 4336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "old:{level:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4337
    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4344
    :cond_57
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_97

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_97

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4345
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_97

    .line 4346
    new-instance v4, Lmediatek/telephony/MtkSignalStrength;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4347
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v6

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Landroid/telephony/SignalStrength;

    invoke-direct {v4, v6, v7}, Lmediatek/telephony/MtkSignalStrength;-><init>(ILandroid/telephony/SignalStrength;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4349
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 4350
    .local v4, "config":Landroid/os/PersistableBundle;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v4, v7}, Landroid/telephony/SignalStrength;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 4353
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    check-cast v6, Lmediatek/telephony/MtkSignalStrength;

    .line 4354
    .local v6, "mtkSignal":Lmediatek/telephony/MtkSignalStrength;
    invoke-virtual {v6, v1}, Lmediatek/telephony/MtkSignalStrength;->setMtkRsrpOnly(Z)V

    .line 4355
    invoke-virtual {v6, v3}, Lmediatek/telephony/MtkSignalStrength;->setMtkLteRsrpThreshold([I)V

    .line 4356
    invoke-virtual {v6, v2}, Lmediatek/telephony/MtkSignalStrength;->setMtkLteRssnrThreshold([I)V

    .line 4357
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v4, v7}, Lmediatek/telephony/MtkSignalStrength;->updateMtkLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 4358
    .end local v4    # "config":Landroid/os/PersistableBundle;
    .end local v6    # "mtkSignal":Lmediatek/telephony/MtkSignalStrength;
    goto :goto_ba

    .line 4359
    :cond_97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4360
    new-instance v4, Lmediatek/telephony/MtkSignalStrength;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v6

    invoke-direct {v4, v6}, Lmediatek/telephony/MtkSignalStrength;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4363
    :goto_ba
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v4, :cond_e9

    .line 4364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new:{level:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4365
    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "}, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4367
    :cond_e9
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrengthUpdatedTime:J

    .line 4371
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifySignalStrength()Z

    move-result v4

    .line 4372
    .local v4, "ssChanged":Z
    return v4
.end method

.method protected onUpdateIccAvailability()V
    .registers 5

    .line 3994
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_5

    .line 3995
    return-void

    .line 3998
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 4000
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 4001
    :cond_19
    if-eqz v0, :cond_62

    .line 4002
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    .line 4003
    .local v1, "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v1, v2, :cond_27

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v1, v2, :cond_2f

    :cond_27
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkExsit:Z

    if-eqz v2, :cond_2f

    .line 4005
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    goto :goto_32

    .line 4007
    :cond_2f
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    .line 4009
    :goto_32
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mergeEmergencyOnlyCdmaIms(Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    .line 4010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CDMA]onUpdateIccAvailability, appstate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mNetworkExsit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkExsit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mEmergencyOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4016
    .end local v1    # "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :cond_62
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_ef

    .line 4019
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v1, v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v2, 0x0

    if-eqz v1, :cond_73

    .line 4020
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfFromUsim(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    goto :goto_7e

    .line 4021
    :cond_73
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v1, v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v1, :cond_7e

    .line 4022
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfFromRuim(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    .line 4025
    :cond_7e
    :goto_7e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_a6

    .line 4026
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4027
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 4028
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_a2

    .line 4029
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 4030
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 4031
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 4034
    :cond_a2
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4035
    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 4037
    :cond_a6
    if-eqz v0, :cond_ef

    .line 4038
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 4039
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 4040
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4041
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 4042
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v3, 0x11

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4043
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_ef

    .line 4044
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0x10

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4045
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0x77

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_ef

    .line 4047
    :cond_d9
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v1, :cond_ef

    .line 4048
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v3, 0x1a

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4049
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_ef

    .line 4050
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0x1b

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4055
    :cond_ef
    :goto_ef
    return-void
.end method

.method protected pollStateDone()V
    .registers 62

    .line 2482
    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->once_pollState_done:Z

    .line 2484
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    check-cast v2, Lmediatek/telephony/MtkServiceState;

    .line 2485
    .local v2, "mMtkSS":Lmediatek/telephony/MtkServiceState;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v3, Lmediatek/telephony/MtkServiceState;

    .line 2487
    .local v3, "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_18

    .line 2488
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateRoamingState()V

    .line 2491
    :cond_18
    sget-boolean v4, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2a

    .line 2492
    const-string v4, "telephony.test.forceRoaming"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2493
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 2495
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 2496
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->processIwlanRegistrationInfo()V

    .line 2502
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 2504
    .local v4, "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v7, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateNrFrequencyRangeFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    .line 2505
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v7, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    .line 2506
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    .line 2510
    new-instance v7, Lmediatek/telephony/MtkServiceState;

    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v8, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v7, v8}, Lmediatek/telephony/MtkServiceState;-><init>(Lmediatek/telephony/MtkServiceState;)V

    .line 2511
    .local v7, "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    invoke-virtual {v0, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 2515
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Poll ServiceState done: oldSS=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2517
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Poll ServiceState done: newSS=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "] oldMaxDataCalls="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mNewMaxDataCalls="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " oldReasonDataDenied="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mNewReasonDataDenied="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isImsEccOnly= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2522
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getImsEccOnly()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2517
    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2525
    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2526
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-eqz v8, :cond_cf

    iget-object v8, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2527
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_cf

    move v8, v1

    goto :goto_d0

    :cond_cf
    move v8, v5

    .line 2529
    .local v8, "hasRegistered":Z
    :goto_d0
    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2530
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-nez v9, :cond_e2

    iget-object v9, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2531
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-eqz v9, :cond_e2

    move v9, v1

    goto :goto_e3

    :cond_e2
    move v9, v5

    .line 2533
    .local v9, "hasDeregistered":Z
    :goto_e3
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2534
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_f6

    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2535
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-ne v10, v11, :cond_f6

    move v10, v1

    goto :goto_f7

    :cond_f6
    move v10, v5

    .line 2536
    .local v10, "hasAirplaneModeOnChanged":Z
    :goto_f7
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2537
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    if-ne v12, v11, :cond_109

    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2538
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    if-eq v12, v11, :cond_109

    move v12, v1

    goto :goto_10a

    :cond_109
    move v12, v5

    .line 2540
    .local v12, "hasAirplaneModeOffChanged":Z
    :goto_10a
    new-instance v13, Landroid/util/SparseBooleanArray;

    iget-object v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 2541
    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v14

    array-length v14, v14

    invoke-direct {v13, v14}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 2542
    .local v13, "hasDataAttached":Landroid/util/SparseBooleanArray;
    new-instance v14, Landroid/util/SparseBooleanArray;

    iget-object v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 2543
    invoke-virtual {v15}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v15

    array-length v15, v15

    invoke-direct {v14, v15}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 2544
    .local v14, "hasDataDetached":Landroid/util/SparseBooleanArray;
    new-instance v15, Landroid/util/SparseBooleanArray;

    iget-object v11, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 2545
    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v11

    array-length v11, v11

    invoke-direct {v15, v11}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v11, v15

    .line 2546
    .local v11, "hasRilDataRadioTechnologyChanged":Landroid/util/SparseBooleanArray;
    new-instance v15, Landroid/util/SparseBooleanArray;

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 2547
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v15, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v1, v15

    .line 2548
    .local v1, "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    const/4 v15, 0x0

    .line 2549
    .local v15, "anyDataRegChanged":Z
    const/16 v18, 0x0

    .line 2550
    .local v18, "anyDataRatChanged":Z
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2551
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaLongRaw()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaLongRaw()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_166

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2552
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaShortRaw()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2553
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaShortRaw()Ljava/lang/String;

    move-result-object v6

    .line 2552
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_164

    goto :goto_166

    :cond_164
    const/4 v5, 0x0

    goto :goto_167

    :cond_166
    :goto_166
    const/4 v5, 0x1

    .line 2554
    .local v5, "hasAlphaRawChanged":Z
    :goto_167
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v6

    move-object/from16 v21, v2

    .end local v2    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    .local v21, "mMtkSS":Lmediatek/telephony/MtkServiceState;
    array-length v2, v6

    move-object/from16 v22, v4

    const/4 v4, 0x0

    .end local v4    # "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    .local v22, "networkRegState":Landroid/telephony/NetworkRegistrationInfo;
    :goto_173
    move/from16 v23, v12

    .end local v12    # "hasAirplaneModeOffChanged":Z
    .local v23, "hasAirplaneModeOffChanged":Z
    if-ge v4, v2, :cond_253

    aget v12, v6, v4

    .line 2555
    .local v12, "transport":I
    move/from16 v25, v2

    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v26, v6

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v12}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 2557
    .local v2, "oldNrs":Landroid/telephony/NetworkRegistrationInfo;
    move/from16 v27, v15

    .end local v15    # "anyDataRegChanged":Z
    .local v27, "anyDataRegChanged":Z
    iget-object v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15, v6, v12}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v15

    .line 2565
    .local v15, "newNrs":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v2, :cond_196

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v6

    if-eqz v6, :cond_196

    if-eqz v10, :cond_1a0

    :cond_196
    if-eqz v15, :cond_1a0

    .line 2566
    invoke-virtual {v15}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v6

    if-eqz v6, :cond_1a0

    const/4 v6, 0x1

    goto :goto_1a1

    :cond_1a0
    const/4 v6, 0x0

    .line 2567
    .local v6, "changed":Z
    :goto_1a1
    invoke-virtual {v13, v12, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2568
    if-eqz v2, :cond_1b7

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v28

    if-eqz v28, :cond_1b7

    if-eqz v15, :cond_1b4

    .line 2569
    invoke-virtual {v15}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v28

    if-nez v28, :cond_1b7

    :cond_1b4
    const/16 v28, 0x1

    goto :goto_1b9

    :cond_1b7
    const/16 v28, 0x0

    :goto_1b9
    move/from16 v6, v28

    .line 2570
    invoke-virtual {v14, v12, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2571
    if-eqz v2, :cond_1c5

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v28

    goto :goto_1c7

    .line 2572
    :cond_1c5
    const/16 v28, 0x0

    :goto_1c7
    move/from16 v29, v28

    .line 2573
    .local v29, "oldRAT":I
    if-eqz v15, :cond_1d0

    invoke-virtual {v15}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v28

    goto :goto_1d2

    .line 2574
    :cond_1d0
    const/16 v28, 0x0

    :goto_1d2
    move/from16 v30, v28

    .line 2575
    .local v30, "newRAT":I
    if-eqz v2, :cond_1db

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v28

    goto :goto_1dd

    :cond_1db
    const/16 v28, 0x0

    :goto_1dd
    move/from16 v31, v28

    .line 2576
    .local v31, "isOldCA":Z
    if-eqz v15, :cond_1e6

    invoke-virtual {v15}, Landroid/telephony/NetworkRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v28

    goto :goto_1e8

    :cond_1e6
    const/16 v28, 0x0

    :goto_1e8
    move/from16 v32, v28

    .line 2580
    .local v32, "isNewCA":Z
    move/from16 v28, v6

    move/from16 v6, v29

    move/from16 v29, v10

    move/from16 v10, v30

    .end local v30    # "newRAT":I
    .local v6, "oldRAT":I
    .local v10, "newRAT":I
    .local v28, "changed":Z
    .local v29, "hasAirplaneModeOnChanged":Z
    if-ne v6, v10, :cond_205

    move-object/from16 v30, v14

    move/from16 v14, v31

    move-object/from16 v31, v13

    move/from16 v13, v32

    .end local v32    # "isNewCA":Z
    .local v13, "isNewCA":Z
    .local v14, "isOldCA":Z
    .local v30, "hasDataDetached":Landroid/util/SparseBooleanArray;
    .local v31, "hasDataAttached":Landroid/util/SparseBooleanArray;
    if-ne v14, v13, :cond_20d

    if-eqz v5, :cond_201

    goto :goto_20d

    :cond_201
    move/from16 v32, v5

    const/4 v5, 0x0

    goto :goto_210

    .end local v30    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .local v13, "hasDataAttached":Landroid/util/SparseBooleanArray;
    .local v14, "hasDataDetached":Landroid/util/SparseBooleanArray;
    .local v31, "isOldCA":Z
    .restart local v32    # "isNewCA":Z
    :cond_205
    move-object/from16 v30, v14

    move/from16 v14, v31

    move-object/from16 v31, v13

    move/from16 v13, v32

    .end local v32    # "isNewCA":Z
    .local v13, "isNewCA":Z
    .local v14, "isOldCA":Z
    .restart local v30    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .local v31, "hasDataAttached":Landroid/util/SparseBooleanArray;
    :cond_20d
    :goto_20d
    move/from16 v32, v5

    const/4 v5, 0x1

    .end local v5    # "hasAlphaRawChanged":Z
    .local v32, "hasAlphaRawChanged":Z
    :goto_210
    invoke-virtual {v11, v12, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2582
    if-eq v6, v10, :cond_218

    .line 2583
    const/4 v5, 0x1

    move/from16 v18, v5

    .line 2585
    :cond_218
    if-eqz v2, :cond_21f

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v5

    goto :goto_220

    .line 2586
    :cond_21f
    const/4 v5, 0x4

    :goto_220
    nop

    .line 2587
    .local v5, "oldRegState":I
    if-eqz v15, :cond_228

    invoke-virtual {v15}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v24

    goto :goto_22a

    .line 2588
    :cond_228
    const/16 v24, 0x4

    :goto_22a
    move/from16 v33, v24

    .line 2589
    .local v33, "newRegState":I
    move-object/from16 v34, v2

    move/from16 v2, v33

    .end local v33    # "newRegState":I
    .local v2, "newRegState":I
    .local v34, "oldNrs":Landroid/telephony/NetworkRegistrationInfo;
    move/from16 v33, v6

    if-eq v5, v2, :cond_236

    const/4 v6, 0x1

    goto :goto_237

    :cond_236
    const/4 v6, 0x0

    .end local v6    # "oldRAT":I
    .local v33, "oldRAT":I
    :goto_237
    invoke-virtual {v1, v12, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2590
    if-eq v5, v2, :cond_23f

    .line 2591
    const/4 v6, 0x1

    move v15, v6

    .end local v27    # "anyDataRegChanged":Z
    .local v6, "anyDataRegChanged":Z
    goto :goto_241

    .line 2590
    .end local v6    # "anyDataRegChanged":Z
    .restart local v27    # "anyDataRegChanged":Z
    :cond_23f
    move/from16 v15, v27

    .line 2554
    .end local v2    # "newRegState":I
    .end local v5    # "oldRegState":I
    .end local v10    # "newRAT":I
    .end local v12    # "transport":I
    .end local v13    # "isNewCA":Z
    .end local v14    # "isOldCA":Z
    .end local v27    # "anyDataRegChanged":Z
    .end local v28    # "changed":Z
    .end local v33    # "oldRAT":I
    .end local v34    # "oldNrs":Landroid/telephony/NetworkRegistrationInfo;
    .local v15, "anyDataRegChanged":Z
    :goto_241
    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v23

    move/from16 v2, v25

    move-object/from16 v6, v26

    move/from16 v10, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v31

    move/from16 v5, v32

    goto/16 :goto_173

    .line 2597
    .end local v29    # "hasAirplaneModeOnChanged":Z
    .end local v30    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .end local v31    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .end local v32    # "hasAlphaRawChanged":Z
    .local v5, "hasAlphaRawChanged":Z
    .local v10, "hasAirplaneModeOnChanged":Z
    .local v13, "hasDataAttached":Landroid/util/SparseBooleanArray;
    .local v14, "hasDataDetached":Landroid/util/SparseBooleanArray;
    :cond_253
    move/from16 v32, v5

    move/from16 v29, v10

    move-object/from16 v31, v13

    move-object/from16 v30, v14

    move/from16 v27, v15

    .end local v5    # "hasAlphaRawChanged":Z
    .end local v10    # "hasAirplaneModeOnChanged":Z
    .end local v13    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .end local v14    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .end local v15    # "anyDataRegChanged":Z
    .restart local v27    # "anyDataRegChanged":Z
    .restart local v29    # "hasAirplaneModeOnChanged":Z
    .restart local v30    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .restart local v31    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .restart local v32    # "hasAlphaRawChanged":Z
    if-nez v18, :cond_26f

    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2598
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    if-eq v2, v4, :cond_26f

    const/4 v2, 0x1

    goto :goto_270

    :cond_26f
    const/4 v2, 0x0

    .line 2600
    .local v2, "hasDataTransportPreferenceChanged":Z
    :goto_270
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2601
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-eq v4, v5, :cond_280

    const/4 v4, 0x1

    goto :goto_281

    :cond_280
    const/4 v4, 0x0

    .line 2603
    .local v4, "hasVoiceRegStateChanged":Z
    :goto_281
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2604
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v5

    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v6

    if-eq v5, v6, :cond_291

    const/4 v5, 0x1

    goto :goto_292

    :cond_291
    const/4 v5, 0x0

    .line 2605
    .local v5, "hasNrFrequencyRangeChanged":Z
    :goto_292
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v6

    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v10

    if-eq v6, v10, :cond_2a2

    const/4 v6, 0x1

    goto :goto_2a3

    :cond_2a2
    const/4 v6, 0x0

    .line 2606
    .local v6, "hasNrStateChanged":Z
    :goto_2a3
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPrioritizedCellIdentities(Landroid/telephony/ServiceState;)Ljava/util/List;

    move-result-object v10

    .line 2607
    .local v10, "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2b1

    .line 2608
    const/4 v12, 0x0

    goto :goto_2b9

    :cond_2b1
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v12, v13

    check-cast v12, Landroid/telephony/CellIdentity;

    .line 2609
    .local v12, "primaryCellIdentity":Landroid/telephony/CellIdentity;
    :goto_2b9
    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-nez v13, :cond_2c0

    .line 2610
    if-eqz v12, :cond_2ca

    goto :goto_2c8

    :cond_2c0
    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v13, v12}, Landroid/telephony/CellIdentity;->isSameCell(Landroid/telephony/CellIdentity;)Z

    move-result v13

    if-nez v13, :cond_2ca

    :goto_2c8
    const/4 v13, 0x1

    goto :goto_2cb

    :cond_2ca
    const/4 v13, 0x0

    .line 2612
    .local v13, "hasLocationChanged":Z
    :goto_2cb
    const/4 v14, 0x0

    .line 2613
    .local v14, "isRegisteredOnWwan":Z
    iget-object v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v25, v14

    const/4 v14, 0x1

    .end local v14    # "isRegisteredOnWwan":Z
    .local v25, "isRegisteredOnWwan":Z
    invoke-virtual {v15, v14}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2d9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2ec

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/NetworkRegistrationInfo;

    .line 2615
    .local v15, "nri":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v15}, Landroid/telephony/NetworkRegistrationInfo;->isRegistered()Z

    move-result v26

    or-int v25, v25, v26

    .line 2616
    .end local v15    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    goto :goto_2d9

    .line 2619
    :cond_2ec
    if-eqz v25, :cond_311

    if-nez v13, :cond_311

    .line 2621
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getIwlanRegState()I

    move-result v14

    if-eqz v14, :cond_30e

    iget-object v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    iget-object v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v26, v10

    .end local v10    # "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    .local v26, "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2622
    invoke-interface {v14, v15, v10}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->needRatchet(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v10

    if-eqz v10, :cond_313

    .line 2623
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

    iget-object v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10, v14, v15}, Lcom/android/internal/telephony/RatRatcheter;->ratchet(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V

    goto :goto_313

    .line 2621
    .end local v26    # "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    .restart local v10    # "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    :cond_30e
    move-object/from16 v26, v10

    .end local v10    # "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    .restart local v26    # "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    goto :goto_313

    .line 2619
    .end local v26    # "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    .restart local v10    # "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    :cond_311
    move-object/from16 v26, v10

    .line 2626
    .end local v10    # "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    .restart local v26    # "prioritizedCids":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellIdentity;>;"
    :cond_313
    :goto_313
    iget-object v10, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2627
    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v10

    iget-object v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v14

    if-eq v10, v14, :cond_323

    const/4 v10, 0x1

    goto :goto_324

    :cond_323
    const/4 v10, 0x0

    .line 2631
    .local v10, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_324
    iget-object v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7, v14}, Lmediatek/telephony/MtkServiceState;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_333

    iget-boolean v14, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    if-eqz v14, :cond_331

    goto :goto_333

    :cond_331
    const/4 v14, 0x0

    goto :goto_334

    :cond_333
    :goto_333
    const/4 v14, 0x1

    .line 2633
    .local v14, "hasChanged":Z
    :goto_334
    iget-object v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v15

    if-nez v15, :cond_346

    iget-object v15, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v15

    if-eqz v15, :cond_346

    const/4 v15, 0x1

    goto :goto_347

    :cond_346
    const/4 v15, 0x0

    .line 2635
    .local v15, "hasVoiceRoamingOn":Z
    :goto_347
    move-object/from16 v28, v12

    .end local v12    # "primaryCellIdentity":Landroid/telephony/CellIdentity;
    .local v28, "primaryCellIdentity":Landroid/telephony/CellIdentity;
    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v12

    if-eqz v12, :cond_35b

    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v12

    if-nez v12, :cond_35b

    const/4 v12, 0x1

    goto :goto_35c

    :cond_35b
    const/4 v12, 0x0

    .line 2639
    .local v12, "hasVoiceRoamingOff":Z
    :goto_35c
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getIwlanRegState()I

    move-result v33

    if-nez v33, :cond_366

    .line 2640
    move/from16 v33, v4

    const/4 v4, 0x0

    goto :goto_37b

    .line 2641
    :cond_366
    move/from16 v33, v4

    .end local v4    # "hasVoiceRegStateChanged":Z
    .local v33, "hasVoiceRegStateChanged":Z
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    if-nez v4, :cond_37a

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_37a

    const/4 v4, 0x1

    goto :goto_37b

    :cond_37a
    const/4 v4, 0x0

    :goto_37b
    nop

    .line 2645
    .local v4, "hasDataRoamingOn":Z
    invoke-virtual {v3}, Lmediatek/telephony/MtkServiceState;->getIwlanRegState()I

    move-result v34

    if-nez v34, :cond_38b

    .line 2646
    move-object/from16 v34, v3

    .end local v3    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .local v34, "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    goto :goto_3a0

    .line 2647
    .end local v34    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .restart local v3    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    :cond_38b
    move-object/from16 v34, v3

    .end local v3    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .restart local v34    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_39f

    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-nez v3, :cond_39f

    const/4 v3, 0x1

    goto :goto_3a0

    :cond_39f
    const/4 v3, 0x0

    :goto_3a0
    nop

    .line 2649
    .local v3, "hasDataRoamingOff":Z
    move/from16 v35, v6

    .end local v6    # "hasNrStateChanged":Z
    .local v35, "hasNrStateChanged":Z
    iget v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRejectCode:I

    move/from16 v36, v5

    .end local v5    # "hasNrFrequencyRangeChanged":Z
    .local v36, "hasNrFrequencyRangeChanged":Z
    iget v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewRejectCode:I

    if-eq v6, v5, :cond_3ad

    const/4 v5, 0x1

    goto :goto_3ae

    :cond_3ad
    const/4 v5, 0x0

    .line 2651
    .local v5, "hasRejectCauseChanged":Z
    :goto_3ae
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v6

    move/from16 v37, v5

    .end local v5    # "hasRejectCauseChanged":Z
    .local v37, "hasRejectCauseChanged":Z
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v5

    if-eq v6, v5, :cond_3c0

    const/4 v5, 0x1

    goto :goto_3c1

    :cond_3c0
    const/4 v5, 0x0

    .line 2653
    .local v5, "hasCssIndicatorChanged":Z
    :goto_3c1
    const/4 v6, 0x0

    .line 2654
    .local v6, "has4gHandoff":Z
    const/16 v38, 0x0

    .line 2655
    .local v38, "hasMultiApnSupport":Z
    const/16 v39, 0x0

    .line 2656
    .local v39, "hasLostMultiApnSupport":Z
    move/from16 v40, v6

    .end local v6    # "has4gHandoff":Z
    .local v40, "has4gHandoff":Z
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v6

    if-eqz v6, :cond_426

    .line 2657
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v6

    .line 2658
    .local v6, "wwanDataRat":I
    move/from16 v41, v5

    .end local v5    # "hasCssIndicatorChanged":Z
    .local v41, "hasCssIndicatorChanged":Z
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v5

    .line 2659
    .local v5, "newWwanDataRat":I
    move/from16 v42, v13

    .end local v13    # "hasLocationChanged":Z
    .local v42, "hasLocationChanged":Z
    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v13

    move/from16 v43, v3

    .end local v3    # "hasDataRoamingOff":Z
    .local v43, "hasDataRoamingOff":Z
    const/16 v3, 0xd

    if-nez v13, :cond_3fe

    .line 2660
    invoke-static {v6}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v13

    if-eqz v13, :cond_3f4

    if-eq v5, v3, :cond_3fc

    :cond_3f4
    if-ne v6, v3, :cond_3fe

    .line 2663
    invoke-static {v5}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v13

    if-eqz v13, :cond_3fe

    :cond_3fc
    const/4 v13, 0x1

    goto :goto_3ff

    :cond_3fe
    const/4 v13, 0x0

    .line 2664
    .end local v40    # "has4gHandoff":Z
    .local v13, "has4gHandoff":Z
    :goto_3ff
    invoke-static {v5}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v40

    if-nez v40, :cond_407

    if-ne v5, v3, :cond_411

    .line 2666
    :cond_407
    invoke-static {v6}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v40

    if-nez v40, :cond_411

    if-eq v6, v3, :cond_411

    const/4 v3, 0x1

    goto :goto_412

    :cond_411
    const/4 v3, 0x0

    :goto_412
    move/from16 v38, v3

    .line 2668
    const/4 v3, 0x4

    if-lt v5, v3, :cond_41d

    const/16 v3, 0x8

    if-gt v5, v3, :cond_41d

    const/4 v3, 0x1

    goto :goto_41e

    :cond_41d
    const/4 v3, 0x0

    :goto_41e
    move/from16 v39, v3

    move v6, v13

    move/from16 v3, v38

    move/from16 v5, v39

    goto :goto_432

    .line 2656
    .end local v6    # "wwanDataRat":I
    .end local v41    # "hasCssIndicatorChanged":Z
    .end local v42    # "hasLocationChanged":Z
    .end local v43    # "hasDataRoamingOff":Z
    .restart local v3    # "hasDataRoamingOff":Z
    .local v5, "hasCssIndicatorChanged":Z
    .local v13, "hasLocationChanged":Z
    .restart local v40    # "has4gHandoff":Z
    :cond_426
    move/from16 v43, v3

    move/from16 v41, v5

    move/from16 v42, v13

    .end local v3    # "hasDataRoamingOff":Z
    .end local v5    # "hasCssIndicatorChanged":Z
    .end local v13    # "hasLocationChanged":Z
    .restart local v41    # "hasCssIndicatorChanged":Z
    .restart local v42    # "hasLocationChanged":Z
    .restart local v43    # "hasDataRoamingOff":Z
    move/from16 v3, v38

    move/from16 v5, v39

    move/from16 v6, v40

    .line 2673
    .end local v38    # "hasMultiApnSupport":Z
    .end local v39    # "hasLostMultiApnSupport":Z
    .end local v40    # "has4gHandoff":Z
    .local v3, "hasMultiApnSupport":Z
    .local v5, "hasLostMultiApnSupport":Z
    .local v6, "has4gHandoff":Z
    :goto_432
    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2674
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v13

    if-eqz v13, :cond_450

    invoke-virtual {v7}, Lmediatek/telephony/MtkServiceState;->getVoiceRoaming()Z

    move-result v13

    if-eqz v13, :cond_450

    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2675
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v13

    move/from16 v38, v5

    .end local v5    # "hasLostMultiApnSupport":Z
    .local v38, "hasLostMultiApnSupport":Z
    invoke-virtual {v7}, Lmediatek/telephony/MtkServiceState;->getVoiceRoamingType()I

    move-result v5

    if-eq v13, v5, :cond_452

    const/4 v5, 0x1

    goto :goto_453

    .line 2674
    .end local v38    # "hasLostMultiApnSupport":Z
    .restart local v5    # "hasLostMultiApnSupport":Z
    :cond_450
    move/from16 v38, v5

    .line 2675
    .end local v5    # "hasLostMultiApnSupport":Z
    .restart local v38    # "hasLostMultiApnSupport":Z
    :cond_452
    const/4 v5, 0x0

    .line 2677
    .local v5, "hasVoiceRoamingTypeChange":Z
    :goto_453
    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2678
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v13

    if-eqz v13, :cond_471

    invoke-virtual {v7}, Lmediatek/telephony/MtkServiceState;->getDataRoaming()Z

    move-result v13

    if-eqz v13, :cond_471

    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2679
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v13

    move/from16 v39, v5

    .end local v5    # "hasVoiceRoamingTypeChange":Z
    .local v39, "hasVoiceRoamingTypeChange":Z
    invoke-virtual {v7}, Lmediatek/telephony/MtkServiceState;->getDataRoamingType()I

    move-result v5

    if-eq v13, v5, :cond_473

    const/4 v5, 0x1

    goto :goto_474

    .line 2678
    .end local v39    # "hasVoiceRoamingTypeChange":Z
    .restart local v5    # "hasVoiceRoamingTypeChange":Z
    :cond_471
    move/from16 v39, v5

    .line 2679
    .end local v5    # "hasVoiceRoamingTypeChange":Z
    .restart local v39    # "hasVoiceRoamingTypeChange":Z
    :cond_473
    const/4 v5, 0x0

    .line 2681
    .local v5, "hasDataRoamingTypeChange":Z
    :goto_474
    const/4 v13, 0x0

    .line 2682
    .local v13, "hasPlmnChange":Z
    move/from16 v40, v13

    .end local v13    # "hasPlmnChange":Z
    .local v40, "hasPlmnChange":Z
    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_485

    invoke-virtual {v7}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4b3

    :cond_485
    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2684
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_493

    invoke-virtual {v7}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4b1

    :cond_493
    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2686
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4a1

    invoke-virtual {v7}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4b1

    :cond_4a1
    iget-object v13, v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2688
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b3

    .line 2689
    :cond_4b1
    const/4 v13, 0x1

    .end local v40    # "hasPlmnChange":Z
    .restart local v13    # "hasPlmnChange":Z
    goto :goto_4b5

    .line 2693
    .end local v13    # "hasPlmnChange":Z
    .restart local v40    # "hasPlmnChange":Z
    :cond_4b3
    move/from16 v13, v40

    .end local v40    # "hasPlmnChange":Z
    .restart local v13    # "hasPlmnChange":Z
    :goto_4b5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v40, v7

    .end local v7    # "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .local v40, "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    const-string v7, "pollStateDone: hasRegistered = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasDeregistered = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasDataAttached = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v31

    .end local v31    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .local v7, "hasDataAttached":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local v7    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .restart local v31    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    const-string v7, " hasDataDetached = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v30

    .end local v30    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .local v7, "hasDataDetached":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local v7    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .restart local v30    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    const-string v7, " hasDataRegStateChanged = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " hasRilVoiceRadioTechnologyChanged = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasRilDataRadioTechnologyChanged = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " hasDataTransportPreferenceChanged = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasChanged = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasVoiceRoamingOn = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasVoiceRoamingOff = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasDataRoamingOn ="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasDataRoamingOff = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v43

    .end local v43    # "hasDataRoamingOff":Z
    .local v7, "hasDataRoamingOff":Z
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v43, v14

    .end local v14    # "hasChanged":Z
    .local v43, "hasChanged":Z
    const-string v14, " hasLocationChanged = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v42

    .end local v42    # "hasLocationChanged":Z
    .local v14, "hasLocationChanged":Z
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v14    # "hasLocationChanged":Z
    .restart local v42    # "hasLocationChanged":Z
    const-string v14, " has4gHandoff = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " hasMultiApnSupport = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " hasLostMultiApnSupport = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v38

    .end local v38    # "hasLostMultiApnSupport":Z
    .local v14, "hasLostMultiApnSupport":Z
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v38, v3

    .end local v3    # "hasMultiApnSupport":Z
    .local v38, "hasMultiApnSupport":Z
    const-string v3, " hasCssIndicatorChanged = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v41

    .end local v41    # "hasCssIndicatorChanged":Z
    .local v3, "hasCssIndicatorChanged":Z
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v41, v14

    .end local v14    # "hasLostMultiApnSupport":Z
    .local v41, "hasLostMultiApnSupport":Z
    const-string v14, " hasNrFrequencyRangeChanged = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v36

    .end local v36    # "hasNrFrequencyRangeChanged":Z
    .local v14, "hasNrFrequencyRangeChanged":Z
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v14    # "hasNrFrequencyRangeChanged":Z
    .restart local v36    # "hasNrFrequencyRangeChanged":Z
    const-string v14, " hasNrStateChanged = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v35

    .end local v35    # "hasNrStateChanged":Z
    .local v14, "hasNrStateChanged":Z
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v14    # "hasNrStateChanged":Z
    .restart local v35    # "hasNrStateChanged":Z
    const-string v14, " hasVoiceRoamingTypeChange = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v39

    .end local v39    # "hasVoiceRoamingTypeChange":Z
    .local v14, "hasVoiceRoamingTypeChange":Z
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v14    # "hasVoiceRoamingTypeChange":Z
    .restart local v39    # "hasVoiceRoamingTypeChange":Z
    const-string v14, " hasDataRoamingTypeChange = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " hasAirplaneModeOnlChanged = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v29

    .end local v29    # "hasAirplaneModeOnChanged":Z
    .local v14, "hasAirplaneModeOnChanged":Z
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v14    # "hasAirplaneModeOnChanged":Z
    .restart local v29    # "hasAirplaneModeOnChanged":Z
    const-string v14, " hasPlmnChange = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, p0

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2721
    if-nez v33, :cond_5a9

    if-eqz v27, :cond_5a4

    goto :goto_5a9

    :cond_5a4
    move/from16 v24, v5

    move/from16 v44, v13

    goto :goto_5fa

    .line 2722
    :cond_5a9
    :goto_5a9
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_5b5

    const v0, 0xc3c2

    goto :goto_5b8

    .line 2723
    :cond_5b5
    const v0, 0xc3c4

    :goto_5b8
    move/from16 v44, v13

    const/4 v13, 0x4

    .end local v13    # "hasPlmnChange":Z
    .local v44, "hasPlmnChange":Z
    new-array v13, v13, [Ljava/lang/Object;

    move/from16 v24, v5

    .end local v5    # "hasDataRoamingTypeChange":Z
    .local v24, "hasDataRoamingTypeChange":Z
    iget-object v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2724
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v19, 0x0

    aput-object v5, v13, v19

    iget-object v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v17, 0x1

    aput-object v5, v13, v17

    iget-object v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2725
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v20, 0x2

    aput-object v5, v13, v20

    iget-object v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v16, 0x3

    aput-object v5, v13, v16

    .line 2722
    invoke-static {v0, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2728
    :goto_5fa
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_681

    .line 2732
    if-eqz v10, :cond_671

    .line 2733
    move v0, v4

    .end local v4    # "hasDataRoamingOn":Z
    .local v0, "hasDataRoamingOn":Z
    invoke-static/range {v28 .. v28}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J

    move-result-wide v4

    .line 2738
    .local v4, "cid":J
    move/from16 v46, v7

    const/4 v13, 0x3

    .end local v7    # "hasDataRoamingOff":Z
    .local v46, "hasDataRoamingOff":Z
    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v19, 0x0

    aput-object v13, v7, v19

    iget-object v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2739
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v17, 0x1

    aput-object v13, v7, v17

    iget-object v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2740
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v20, 0x2

    aput-object v13, v7, v20

    .line 2738
    const v13, 0xc3cb

    invoke-static {v13, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2742
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RAT switched "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2744
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v13

    .line 2743
    invoke-static {v13}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2747
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v13

    .line 2746
    invoke-static {v13}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " at cell "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2742
    invoke-virtual {v14, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_674

    .line 2732
    .end local v0    # "hasDataRoamingOn":Z
    .end local v46    # "hasDataRoamingOff":Z
    .local v4, "hasDataRoamingOn":Z
    .restart local v7    # "hasDataRoamingOff":Z
    :cond_671
    move v0, v4

    move/from16 v46, v7

    .line 2751
    .end local v4    # "hasDataRoamingOn":Z
    .end local v7    # "hasDataRoamingOff":Z
    .restart local v0    # "hasDataRoamingOn":Z
    .restart local v46    # "hasDataRoamingOff":Z
    :goto_674
    iget v4, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewReasonDataDenied:I

    iput v4, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mReasonDataDenied:I

    .line 2752
    iget v4, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewMaxDataCalls:I

    iput v4, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMaxDataCalls:I

    .line 2753
    iget v4, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewRejectCode:I

    iput v4, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRejectCode:I

    goto :goto_684

    .line 2728
    .end local v0    # "hasDataRoamingOn":Z
    .end local v46    # "hasDataRoamingOff":Z
    .restart local v4    # "hasDataRoamingOn":Z
    .restart local v7    # "hasDataRoamingOff":Z
    :cond_681
    move v0, v4

    move/from16 v46, v7

    .line 2756
    .end local v4    # "hasDataRoamingOn":Z
    .end local v7    # "hasDataRoamingOff":Z
    .restart local v0    # "hasDataRoamingOn":Z
    .restart local v46    # "hasDataRoamingOff":Z
    :goto_684
    new-instance v4, Landroid/telephony/ServiceState;

    iget-object v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 2759
    .local v4, "oldMergedSS":Landroid/telephony/ServiceState;
    iget-object v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    .line 2763
    .local v5, "oldRilDataRadioTechnology":I
    iget-object v7, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2764
    .local v7, "tss":Landroid/telephony/ServiceState;
    iget-object v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iput-object v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2765
    iput-object v7, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2772
    iget-boolean v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsTurboSSAlive:Z

    if-eqz v13, :cond_6ab

    .line 2773
    const/4 v13, 0x0

    iput-boolean v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsTurboSSAlive:Z

    .line 2774
    new-instance v13, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v13}, Lmediatek/telephony/MtkServiceState;-><init>()V

    iput-object v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;

    .line 2776
    :cond_6ab
    iget-object v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    check-cast v13, Lmediatek/telephony/MtkServiceState;

    .line 2777
    .end local v21    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    .local v13, "mMtkSS":Lmediatek/telephony/MtkServiceState;
    move-object/from16 v21, v7

    .end local v7    # "tss":Landroid/telephony/ServiceState;
    .local v21, "tss":Landroid/telephony/ServiceState;
    iget-object v7, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    check-cast v7, Lmediatek/telephony/MtkServiceState;

    .line 2778
    .end local v34    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .local v7, "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    move-object/from16 v34, v7

    move-object/from16 v7, v28

    .end local v28    # "primaryCellIdentity":Landroid/telephony/CellIdentity;
    .local v7, "primaryCellIdentity":Landroid/telephony/CellIdentity;
    .restart local v34    # "mMtkNewSS":Lmediatek/telephony/MtkServiceState;
    iput-object v7, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 2780
    if-eqz v10, :cond_6c0

    .line 2781
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updatePhoneObject()V

    .line 2784
    :cond_6c0
    move-object/from16 v28, v7

    .end local v7    # "primaryCellIdentity":Landroid/telephony/CellIdentity;
    .restart local v28    # "primaryCellIdentity":Landroid/telephony/CellIdentity;
    iget-object v7, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2785
    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v45, v13

    .end local v13    # "mMtkSS":Lmediatek/telephony/MtkServiceState;
    .local v45, "mMtkSS":Lmediatek/telephony/MtkServiceState;
    const-string v13, "phone"

    invoke-virtual {v7, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 2787
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v18, :cond_708

    .line 2788
    iget-object v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v13

    move/from16 v47, v0

    .end local v0    # "hasDataRoamingOn":Z
    .local v47, "hasDataRoamingOn":Z
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-virtual {v7, v13, v0}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 2798
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_70a

    .line 2799
    const/16 v0, 0xe

    if-eq v5, v0, :cond_6f9

    iget-object v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2800
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v13

    if-ne v13, v0, :cond_70a

    .line 2801
    :cond_6f9
    const-string v0, "[CDMALTE]pollStateDone: update signal for RAT switch between diff group"

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2802
    const/16 v0, 0xa

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_70a

    .line 2787
    .end local v47    # "hasDataRoamingOn":Z
    .restart local v0    # "hasDataRoamingOn":Z
    :cond_708
    move/from16 v47, v0

    .line 2808
    .end local v0    # "hasDataRoamingOn":Z
    .restart local v47    # "hasDataRoamingOn":Z
    :cond_70a
    :goto_70a
    if-eqz v8, :cond_719

    .line 2809
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2811
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 2814
    :cond_719
    if-eqz v9, :cond_720

    .line 2815
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkDetachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2818
    :cond_720
    if-eqz v3, :cond_727

    .line 2819
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCssIndicatorChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2822
    :cond_727
    if-eqz v37, :cond_72e

    .line 2823
    const/16 v0, 0x7d1

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setNotification(I)V

    .line 2828
    :cond_72e
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_73f

    .line 2829
    iget-boolean v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriTriggeredPollState:Z

    if-eqz v0, :cond_73f

    .line 2830
    const/4 v0, 0x1

    .line 2831
    .end local v43    # "hasChanged":Z
    .local v0, "hasChanged":Z
    const/4 v13, 0x0

    iput-boolean v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriTriggeredPollState:Z

    goto :goto_741

    .line 2836
    .end local v0    # "hasChanged":Z
    .restart local v43    # "hasChanged":Z
    :cond_73f
    move/from16 v0, v43

    .end local v43    # "hasChanged":Z
    .restart local v0    # "hasChanged":Z
    :goto_741
    iget-object v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v13

    .line 2837
    .local v13, "eriText":Ljava/lang/String;
    move/from16 v43, v3

    .end local v3    # "hasCssIndicatorChanged":Z
    .local v43, "hasCssIndicatorChanged":Z
    iget-object v3, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriText:Ljava/lang/String;

    invoke-static {v3, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v17, 0x1

    xor-int/lit8 v3, v3, 0x1

    .line 2838
    .local v3, "hasEriChanged":Z
    iput-object v13, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEriText:Ljava/lang/String;

    .line 2842
    if-nez v0, :cond_764

    move/from16 v48, v5

    .end local v5    # "oldRilDataRadioTechnology":I
    .local v48, "oldRilDataRadioTechnology":I
    iget-object v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-nez v5, :cond_769

    if-eqz v3, :cond_769

    goto :goto_766

    .end local v48    # "oldRilDataRadioTechnology":I
    .restart local v5    # "oldRilDataRadioTechnology":I
    :cond_764
    move/from16 v48, v5

    .line 2843
    .end local v5    # "oldRilDataRadioTechnology":I
    .restart local v48    # "oldRilDataRadioTechnology":I
    :goto_766
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateSpnDisplay()V

    .line 2846
    :cond_769
    if-eqz v0, :cond_8f3

    .line 2848
    const/4 v5, 0x0

    iput-boolean v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    .line 2850
    iget-object v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    move/from16 v49, v0

    .end local v0    # "hasChanged":Z
    .local v49, "hasChanged":Z
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 2852
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2854
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget-object v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-nez v5, :cond_79d

    .line 2856
    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79d

    .line 2857
    iget-object v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v5

    .line 2858
    .local v5, "sid":I
    invoke-virtual {v14, v0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2862
    .end local v5    # "sid":I
    :cond_79d
    iget-object v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v7, v5, v0}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 2870
    move-object v5, v0

    .line 2871
    .local v5, "localeOperator":Ljava/lang/String;
    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v50

    if-nez v50, :cond_7bc

    move-object/from16 v50, v0

    .end local v0    # "operatorNumeric":Ljava/lang/String;
    .local v50, "operatorNumeric":Ljava/lang/String;
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2872
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    move/from16 v51, v3

    .end local v3    # "hasEriChanged":Z
    .local v51, "hasEriChanged":Z
    const/16 v3, 0x12

    if-ne v0, v3, :cond_7e0

    goto :goto_7c0

    .line 2871
    .end local v50    # "operatorNumeric":Ljava/lang/String;
    .end local v51    # "hasEriChanged":Z
    .restart local v0    # "operatorNumeric":Ljava/lang/String;
    .restart local v3    # "hasEriChanged":Z
    :cond_7bc
    move-object/from16 v50, v0

    move/from16 v51, v3

    .line 2873
    .end local v0    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "hasEriChanged":Z
    .restart local v50    # "operatorNumeric":Ljava/lang/String;
    .restart local v51    # "hasEriChanged":Z
    :goto_7c0
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7c4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellIdentity;

    .line 2874
    .local v3, "cid":Landroid/telephony/CellIdentity;
    invoke-virtual {v3}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v52 .. v52}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v52

    if-nez v52, :cond_7df

    .line 2875
    invoke-virtual {v3}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v5

    .line 2876
    goto :goto_7e0

    .line 2878
    .end local v3    # "cid":Landroid/telephony/CellIdentity;
    :cond_7df
    goto :goto_7c4

    .line 2881
    :cond_7e0
    :goto_7e0
    invoke-virtual {v14, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_807

    .line 2882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localeOperator "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is invalid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2886
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumeric(Ljava/lang/String;)V

    goto :goto_817

    .line 2888
    :cond_807
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_812

    .line 2889
    invoke-virtual {v14, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 2891
    :cond_812
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumeric(Ljava/lang/String;)V

    .line 2894
    :goto_817
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    .line 2895
    iget-object v3, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_82c

    iget-object v3, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v3

    goto :goto_840

    .line 2896
    :cond_82c
    iget-object v3, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v3

    if-nez v3, :cond_83f

    iget-object v3, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_83d

    goto :goto_83f

    :cond_83d
    const/4 v3, 0x0

    goto :goto_840

    :cond_83f
    :goto_83f
    const/4 v3, 0x1

    .line 2894
    :goto_840
    invoke-virtual {v7, v0, v3}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 2898
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 2899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting ServiceState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2902
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_875

    .line 2903
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v3, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 2907
    :cond_875
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v52, v0

    check-cast v52, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2908
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v53

    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v54

    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2909
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v55

    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v56

    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2910
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 2912
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v57

    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2913
    move-object/from16 v60, v4

    const/4 v4, 0x2

    .end local v4    # "oldMergedSS":Landroid/telephony/ServiceState;
    .local v60, "oldMergedSS":Landroid/telephony/ServiceState;
    invoke-virtual {v0, v4, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 2915
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v58

    const/16 v59, 0x0

    .line 2907
    invoke-virtual/range {v52 .. v59}, Lcom/mediatek/internal/telephony/MtkRIL;->setServiceStateToModem(IIIIIILandroid/os/Message;)V

    .line 2919
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2920
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-static {v3}, Landroid/provider/Telephony$ServiceStateTable;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2921
    invoke-virtual {v14, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getContentValuesForServiceState(Landroid/telephony/ServiceState;)Landroid/content/ContentValues;

    move-result-object v4

    .line 2920
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2922
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v3, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    iget-object v4, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeServiceStateChanged(ILandroid/telephony/ServiceState;)V

    .line 2923
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v0

    iget-object v3, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 2924
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getServiceStateStats()Lcom/android/internal/telephony/metrics/ServiceStateStats;

    move-result-object v0

    iget-object v3, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 2925
    .end local v5    # "localeOperator":Ljava/lang/String;
    .end local v50    # "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, v40

    goto :goto_8fd

    .line 2927
    .end local v49    # "hasChanged":Z
    .end local v51    # "hasEriChanged":Z
    .end local v60    # "oldMergedSS":Landroid/telephony/ServiceState;
    .local v0, "hasChanged":Z
    .local v3, "hasEriChanged":Z
    .restart local v4    # "oldMergedSS":Landroid/telephony/ServiceState;
    :cond_8f3
    move/from16 v49, v0

    move/from16 v51, v3

    move-object/from16 v60, v4

    .end local v0    # "hasChanged":Z
    .end local v3    # "hasEriChanged":Z
    .end local v4    # "oldMergedSS":Landroid/telephony/ServiceState;
    .restart local v49    # "hasChanged":Z
    .restart local v51    # "hasEriChanged":Z
    .restart local v60    # "oldMergedSS":Landroid/telephony/ServiceState;
    move-object/from16 v0, v40

    .end local v40    # "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .local v0, "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    iput-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2930
    :goto_8fd
    const/4 v3, 0x0

    .line 2931
    .local v3, "shouldLogAttachedChange":Z
    const/4 v4, 0x0

    .line 2933
    .local v4, "shouldLogRatChange":Z
    if-nez v8, :cond_903

    if-eqz v9, :cond_904

    .line 2934
    :cond_903
    const/4 v3, 0x1

    .line 2937
    :cond_904
    if-eqz v6, :cond_91e

    .line 2938
    iget-object v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    const/4 v0, 0x1

    .end local v0    # "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .restart local v40    # "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/RegistrantList;

    .line 2939
    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2940
    const/4 v3, 0x1

    .line 2942
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    goto :goto_920

    .line 2937
    .end local v40    # "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .restart local v0    # "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    :cond_91e
    move-object/from16 v40, v0

    .line 2945
    .end local v0    # "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    .restart local v40    # "mFinalMtkNewSS":Lmediatek/telephony/MtkServiceState;
    :goto_920
    if-eqz v10, :cond_928

    .line 2946
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logRatChange()V

    .line 2947
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifySignalStrength()Z

    .line 2950
    :cond_928
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v5, v0

    move/from16 v20, v6

    const/4 v6, 0x0

    .end local v6    # "has4gHandoff":Z
    .local v20, "has4gHandoff":Z
    :goto_932
    if-ge v6, v5, :cond_9ab

    move/from16 v50, v5

    aget v5, v0, v6

    .line 2951
    .local v5, "transport":I
    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v52

    if-eqz v52, :cond_942

    .line 2952
    const/4 v4, 0x1

    .line 2953
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifySignalStrength()Z

    .line 2956
    :cond_942
    invoke-virtual {v1, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v52

    if-nez v52, :cond_954

    .line 2957
    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v52

    if-nez v52, :cond_954

    if-eqz v2, :cond_951

    goto :goto_954

    :cond_951
    move-object/from16 v52, v0

    goto :goto_962

    .line 2961
    :cond_954
    :goto_954
    move-object/from16 v52, v0

    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setDataNetworkTypeForPhone(I)V

    .line 2962
    invoke-virtual {v14, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged(I)V

    .line 2965
    :goto_962
    move-object/from16 v0, v31

    .end local v31    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .local v0, "hasDataAttached":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v31

    if-eqz v31, :cond_981

    .line 2966
    const/4 v3, 0x1

    .line 2967
    move-object/from16 v31, v0

    .end local v0    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .restart local v31    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_983

    .line 2968
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_983

    .line 2965
    .end local v31    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .restart local v0    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    :cond_981
    move-object/from16 v31, v0

    .line 2971
    .end local v0    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    .restart local v31    # "hasDataAttached":Landroid/util/SparseBooleanArray;
    :cond_983
    :goto_983
    move-object/from16 v0, v30

    .end local v30    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .local v0, "hasDataDetached":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v30

    if-eqz v30, :cond_9a2

    .line 2972
    const/4 v3, 0x1

    .line 2973
    move-object/from16 v30, v0

    .end local v0    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .restart local v30    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9a4

    .line 2974
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_9a4

    .line 2971
    .end local v30    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .restart local v0    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    :cond_9a2
    move-object/from16 v30, v0

    .line 2950
    .end local v0    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    .end local v5    # "transport":I
    .restart local v30    # "hasDataDetached":Landroid/util/SparseBooleanArray;
    :cond_9a4
    :goto_9a4
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v50

    move-object/from16 v0, v52

    goto :goto_932

    .line 2983
    :cond_9ab
    if-eqz v23, :cond_9b7

    .line 2984
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    invoke-virtual {v14, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 2987
    :cond_9b7
    if-eqz v3, :cond_9bc

    .line 2988
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logAttachChange()V

    .line 2991
    :cond_9bc
    if-eqz v4, :cond_9c1

    .line 2992
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logRatChange()V

    .line 2995
    :cond_9c1
    if-nez v33, :cond_9c5

    if-eqz v10, :cond_9c8

    .line 2996
    :cond_9c5
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifyVoiceRegStateRilRadioTechnologyChanged()V

    .line 2999
    :cond_9c8
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    iput v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegState:I

    .line 3001
    if-nez v15, :cond_9d8

    if-nez v12, :cond_9d8

    if-nez v47, :cond_9d8

    if-eqz v46, :cond_9db

    .line 3002
    :cond_9d8
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logRoamingChange()V

    .line 3005
    :cond_9db
    if-eqz v15, :cond_9e2

    .line 3006
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mVoiceRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3009
    :cond_9e2
    if-eqz v12, :cond_9e9

    .line 3010
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mVoiceRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3013
    :cond_9e9
    if-eqz v47, :cond_9f0

    .line 3014
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3017
    :cond_9f0
    if-eqz v46, :cond_9f7

    .line 3018
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3022
    :cond_9f7
    if-eqz v24, :cond_a03

    .line 3026
    const-string v0, "notify roaming type change."

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3028
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3032
    :cond_a03
    invoke-virtual/range {v45 .. v45}, Lmediatek/telephony/MtkServiceState;->getCellularRegState()I

    move-result v0

    if-nez v0, :cond_a1e

    .line 3033
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-eqz v0, :cond_a17

    .line 3034
    invoke-virtual/range {v45 .. v45}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1e

    .line 3035
    :cond_a17
    invoke-virtual/range {v45 .. v45}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateLocatedPlmn(Ljava/lang/String;)V

    .line 3040
    :cond_a1e
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 3041
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getPendingDataCallFlag()Z

    move-result v0

    if-eqz v0, :cond_a38

    .line 3042
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 3043
    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->processPendingSetupData(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)V

    .line 3046
    :cond_a38
    if-eqz v42, :cond_a43

    .line 3047
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged(Landroid/telephony/CellIdentity;)V

    .line 3049
    :cond_a43
    if-eqz v35, :cond_a4a

    .line 3050
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNrStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3052
    :cond_a4a
    if-eqz v36, :cond_a51

    .line 3053
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNrFrequencyChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3056
    :cond_a51
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_aa4

    .line 3057
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    iget-object v5, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v14, v0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isGprsConsistent(II)Z

    move-result v0

    if-nez v0, :cond_a9d

    .line 3058
    iget-boolean v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mStartedGprsRegCheck:Z

    if-nez v0, :cond_a98

    iget-boolean v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mReportedGprsNoReg:Z

    if-nez v0, :cond_a98

    .line 3059
    const/4 v0, 0x1

    iput-boolean v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 3061
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3062
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v5, 0xea60

    .line 3061
    const-string v6, "gprs_register_check_period_ms"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3065
    .local v0, "check_period":I
    const/16 v5, 0x16

    invoke-virtual {v14, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object v6, v1

    move/from16 v16, v2

    .end local v1    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .end local v2    # "hasDataTransportPreferenceChanged":Z
    .local v6, "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .local v16, "hasDataTransportPreferenceChanged":Z
    int-to-long v1, v0

    invoke-virtual {v14, v5, v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3067
    .end local v0    # "check_period":I
    const/4 v0, 0x0

    goto :goto_aa8

    .line 3058
    .end local v6    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .end local v16    # "hasDataTransportPreferenceChanged":Z
    .restart local v1    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .restart local v2    # "hasDataTransportPreferenceChanged":Z
    :cond_a98
    move-object v6, v1

    move/from16 v16, v2

    .end local v1    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .end local v2    # "hasDataTransportPreferenceChanged":Z
    .restart local v6    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .restart local v16    # "hasDataTransportPreferenceChanged":Z
    const/4 v0, 0x0

    goto :goto_aa8

    .line 3069
    .end local v6    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .end local v16    # "hasDataTransportPreferenceChanged":Z
    .restart local v1    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .restart local v2    # "hasDataTransportPreferenceChanged":Z
    :cond_a9d
    move-object v6, v1

    move/from16 v16, v2

    .end local v1    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .end local v2    # "hasDataTransportPreferenceChanged":Z
    .restart local v6    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .restart local v16    # "hasDataTransportPreferenceChanged":Z
    const/4 v0, 0x0

    iput-boolean v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mReportedGprsNoReg:Z

    goto :goto_aa8

    .line 3056
    .end local v6    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .end local v16    # "hasDataTransportPreferenceChanged":Z
    .restart local v1    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .restart local v2    # "hasDataTransportPreferenceChanged":Z
    :cond_aa4
    move-object v6, v1

    move/from16 v16, v2

    const/4 v0, 0x0

    .line 3073
    .end local v1    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .end local v2    # "hasDataTransportPreferenceChanged":Z
    .restart local v6    # "hasDataRegStateChanged":Landroid/util/SparseBooleanArray;
    .restart local v16    # "hasDataTransportPreferenceChanged":Z
    :goto_aa8
    iget-boolean v1, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    if-eqz v1, :cond_ab1

    .line 3074
    iput-boolean v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    .line 3075
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollState()V

    .line 3078
    :cond_ab1
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 3080
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifySignalStrength()Z

    move-result v0

    if-eqz v0, :cond_ad6

    .line 3081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PollStateDone with signal notification, level ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3082
    :cond_ad6
    return-void
.end method

.method protected pollStateInternal(Z)V
    .registers 10
    .param p1, "modemTriggered"    # Z

    .line 2375
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    .line 2376
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 2377
    invoke-virtual {v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->isServiceConnected()Z

    move-result v0

    .line 2379
    .local v0, "connected":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_19

    move v2, v1

    goto :goto_1a

    :cond_19
    move v2, v4

    .line 2380
    .local v2, "support_ap_iwlan":I
    :goto_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pollState: modemTriggered="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mPollingContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2381
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    if-eqz v6, :cond_35

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v6, v6, v4

    goto :goto_36

    :cond_35
    const/4 v6, -0x1

    :goto_36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", RadioState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2382
    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", connected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", support_ap_iwlan="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2380
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2386
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    if-eqz v5, :cond_8d

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2387
    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v5

    if-eq v5, v3, :cond_8d

    .line 2389
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_7a

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v5, v5, v4

    add-int/lit8 v6, v2, 0x4

    if-eq v5, v6, :cond_8a

    :cond_7a
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2390
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-nez v5, :cond_8d

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v5, v5, v4

    add-int/lit8 v6, v2, 0x3

    if-ne v5, v6, :cond_8d

    .line 2391
    :cond_8a
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasPendingPollState:Z

    .line 2392
    return-void

    .line 2396
    :cond_8d
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    .line 2397
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aput v4, v5, v4

    .line 2399
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v5

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_182

    :pswitch_9f
    goto :goto_e8

    .line 2401
    :pswitch_a0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 2402
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2403
    iput-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastNitzData:Lcom/android/internal/telephony/NitzData;

    .line 2404
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v1}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 2406
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 2407
    iput v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegStateRaw:I

    .line 2411
    :cond_b9
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateDone()V

    .line 2412
    goto/16 :goto_180

    .line 2415
    :pswitch_be
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2416
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2417
    iput-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastNitzData:Lcom/android/internal/telephony/NitzData;

    .line 2418
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v5}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 2424
    if-nez p1, :cond_e8

    const/16 v5, 0x12

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2425
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    if-eq v5, v6, :cond_e8

    .line 2427
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 2428
    iput v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRegStateRaw:I

    .line 2432
    :cond_e3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->pollStateDone()V

    .line 2433
    goto/16 :goto_180

    .line 2438
    :cond_e8
    :goto_e8
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2440
    if-nez v0, :cond_fe

    .line 2441
    const-string v1, "Skip pollState due to disconnection of service"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2443
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mtkHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2444
    return-void

    .line 2449
    :cond_fe
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v6, v5, v4

    add-int/2addr v6, v1

    aput v6, v5, v4

    .line 2450
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 2452
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v6, v5, v4

    add-int/2addr v6, v1

    aput v6, v5, v4

    .line 2453
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    .line 2455
    invoke-virtual {p0, v6, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2454
    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    .line 2458
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v6, v5, v4

    add-int/2addr v6, v1

    aput v6, v5, v4

    .line 2459
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/NetworkRegistrationManager;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    .line 2461
    const/4 v7, 0x4

    invoke-virtual {p0, v7, v6}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2460
    invoke-virtual {v5, v1, v6}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    .line 2463
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_164

    .line 2464
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v6, v5, v4

    add-int/2addr v6, v1

    aput v6, v5, v4

    .line 2465
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    .line 2467
    invoke-virtual {p0, v6, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2466
    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    .line 2471
    :cond_164
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_180

    .line 2472
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    aget v5, v3, v4

    add-int/2addr v5, v1

    aput v5, v3, v4

    .line 2473
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xe

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 2478
    :cond_180
    :goto_180
    return-void

    nop

    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_be
        :pswitch_9f
        :pswitch_a0
    .end packed-switch
.end method

.method protected refreshSpn(Landroid/telephony/ServiceState;Z)V
    .registers 13
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "fromPollState"    # Z

    .line 3277
    const-string v0, ""

    .line 3278
    .local v0, "strOperatorLong":Ljava/lang/String;
    const-string v1, ""

    .line 3279
    .local v1, "strOperatorShort":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 3280
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 3281
    .local v2, "brandOverride":Ljava/lang/String;
    :goto_20
    if-eqz v2, :cond_39

    .line 3282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSpn: use brandOverride"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3283
    move-object v0, v2

    .line 3284
    move-object v1, v2

    goto :goto_65

    .line 3286
    :cond_39
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getLacFromServiceState(Landroid/telephony/ServiceState;)I

    move-result v9

    .line 3287
    .local v9, "lac":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3288
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    .line 3289
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 3287
    move v7, v9

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZILandroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v0

    .line 3290
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3291
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    .line 3292
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 3290
    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/internal/telephony/MtkRIL;->lookupOperatorName(ILjava/lang/String;ZILandroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v1

    .line 3295
    .end local v9    # "lac":I
    :goto_65
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 3296
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 3297
    :cond_79
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    .line 3300
    if-eqz p2, :cond_85

    .line 3301
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateSsOperatorName(Landroid/telephony/ServiceState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    :cond_85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSpn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fromPollState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mForceBroadcastServiceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mForceBroadcastServiceState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3308
    return-void
.end method

.method public registerForDataRoamingTypeChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 928
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 929
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 930
    return-void
.end method

.method protected setPowerStateToDesired(ZZZ)V
    .registers 14
    .param p1, "forEmergencyCall"    # Z
    .param p2, "isSelectedPhoneForEmergencyCall"    # Z
    .param p3, "forceApply"    # Z

    .line 3314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPowerStateToDesired: mDeviceShuttingDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDesiredPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getRadioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3316
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRadioDisabledByCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioDisabledByCarrier:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IMS reg state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mImsRegistrationOnOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pending radio off="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3319
    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->hasMessages(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3320
    .local v0, "tmpLog":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3321
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioPowerLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3324
    .end local v0    # "tmpLog":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f4

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioDisabledByCarrier:Z

    if-nez v0, :cond_f4

    if-nez p3, :cond_69

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3325
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-nez v0, :cond_f4

    .line 3326
    :cond_69
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/RadioManager;->sendRequestBeforeSetRadioPower(ZI)V

    .line 3328
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v0, :cond_ee

    .line 3329
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getEccRadioOnStatus()Z

    move-result v0

    .line 3330
    .local v0, "currEccRadioOnStatus":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isEccSelectedPhone()Z

    move-result v3

    .line 3331
    .local v3, "currEccSelectedPhone":Z
    if-nez v0, :cond_97

    if-eqz p1, :cond_97

    .line 3332
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, p1, p2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setEccRadioOnStatus(ZZ)V

    goto :goto_ee

    .line 3334
    :cond_97
    if-eqz v0, :cond_bc

    if-nez p1, :cond_bc

    if-eqz p3, :cond_bc

    .line 3335
    const-string v4, "reset all phone radio ecc adjusts to false"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3336
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_a9
    if-ge v7, v5, :cond_ee

    aget-object v8, v4, v7

    .line 3337
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v8, :cond_b9

    instance-of v9, v8, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    if-eqz v9, :cond_b9

    .line 3338
    move-object v9, v8

    check-cast v9, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v9, v6, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setEccRadioOnStatus(ZZ)V

    .line 3336
    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_b9
    add-int/lit8 v7, v7, 0x1

    goto :goto_a9

    .line 3341
    :cond_bc
    if-eq v0, p1, :cond_ee

    .line 3342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjust forEcc, preEcc ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3343
    const-string v5, "t"

    const-string v6, "f"

    if-eqz v0, :cond_d0

    move-object v7, v5

    goto :goto_d1

    :cond_d0
    move-object v7, v6

    :goto_d1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3344
    if-eqz v0, :cond_dc

    goto :goto_dd

    :cond_dc
    move-object v5, v6

    :goto_dd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3342
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3345
    move p1, v0

    .line 3346
    move p2, v3

    .line 3350
    .end local v0    # "currEccRadioOnStatus":Z
    .end local v3    # "currEccSelectedPhone":Z
    :cond_ee
    :goto_ee
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZZZLandroid/os/Message;)V

    goto :goto_11f

    .line 3351
    :cond_f4
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v0, :cond_fc

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioDisabledByCarrier:Z

    if-eqz v0, :cond_10d

    :cond_fc
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-ne v0, v2, :cond_10d

    .line 3363
    const-string v0, "setPowerStateToDesired: powering off"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3364
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->powerOffRadioSafely()V

    goto :goto_11f

    .line 3366
    :cond_10d
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v0, :cond_11f

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3367
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11f

    .line 3371
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    .line 3374
    :cond_11f
    :goto_11f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->cancelDelayRadioOffWaitingForImsDeregTimeout()V

    .line 3375
    return-void
.end method

.method public setRadioPowerForReason(ZZZZI)V
    .registers 9
    .param p1, "power"    # Z
    .param p2, "forEmergencyCall"    # Z
    .param p3, "isSelectedPhoneForEmergencyCall"    # Z
    .param p4, "forceApply"    # Z
    .param p5, "reason"    # I

    .line 4179
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    .line 4180
    .local v0, "radioState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPowerForReason power:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDesiredPowerState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", forEmergencyCall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSelectedPhoneForEmergencyCall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", forceApply:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", radioState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4188
    if-eqz p1, :cond_60

    .line 4189
    if-eqz p2, :cond_56

    .line 4190
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_69

    .line 4192
    :cond_56
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_69

    .line 4195
    :cond_60
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4198
    :goto_69
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6e

    if-eq v0, v1, :cond_76

    :cond_6e
    if-nez p1, :cond_94

    if-nez v0, :cond_94

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDeviceShuttingDown:Z

    if-nez v2, :cond_94

    :cond_76
    if-nez p4, :cond_94

    .line 4201
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    .line 4202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPowerForReason mDesiredPowerState is already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Do nothing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4203
    return-void

    .line 4205
    :cond_94
    if-eqz p1, :cond_e2

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e2

    .line 4206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPowerForReason power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " forEmergencyCall= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSelectedPhoneForEmergencyCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " forceApply "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " will not power on the radio as it is powered off for the following reasons: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4211
    return-void

    .line 4214
    :cond_e2
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDesiredPowerState:Z

    .line 4215
    invoke-virtual {p0, p2, p3, p4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setPowerStateToDesired(ZZZ)V

    .line 4216
    if-ne p2, v1, :cond_f6

    .line 4217
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->forceRefreshSimState(ZI)V

    .line 4219
    :cond_f6
    return-void
.end method

.method public setRadioPowerFromCarrier(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 4165
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRadioDisabledByCarrier:Z

    .line 4168
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 4169
    return-void
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .registers 13
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    .line 3740
    nop

    .line 3741
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v1

    .line 3742
    .local v0, "isVoiceInService":Z
    :goto_c
    const/4 v3, 0x0

    .line 3743
    .local v3, "isInternationalRoaming":Z
    const-string v4, " is in operator defined international roaming list"

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v0, :cond_99

    .line 3744
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v7

    if-eqz v7, :cond_96

    .line 3745
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v7

    if-eqz v7, :cond_57

    .line 3747
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 3748
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_32

    .line 3751
    :cond_2f
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 3756
    :goto_32
    nop

    .line 3757
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 3756
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->IsInternationalRoamingException(Ljava/lang/String;)Z

    move-result v3

    .line 3759
    if-eqz v3, :cond_99

    .line 3760
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3762
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_99

    .line 3767
    :cond_57
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 3770
    .local v7, "intRoamingIndicators":[I
    if-eqz v7, :cond_84

    array-length v8, v7

    if-lez v8, :cond_84

    .line 3772
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 3773
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v8

    .line 3774
    .local v8, "curRoamingIndicator":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_75
    array-length v10, v7

    if-ge v9, v10, :cond_83

    .line 3775
    aget v10, v7, v9

    if-ne v8, v10, :cond_80

    .line 3776
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 3778
    goto :goto_83

    .line 3774
    :cond_80
    add-int/lit8 v9, v9, 0x1

    goto :goto_75

    .line 3781
    .end local v8    # "curRoamingIndicator":I
    .end local v9    # "i":I
    :cond_83
    :goto_83
    goto :goto_95

    .line 3783
    :cond_84
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 3784
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_95

    .line 3787
    :cond_92
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 3791
    .end local v7    # "intRoamingIndicators":[I
    :goto_95
    goto :goto_99

    .line 3793
    :cond_96
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 3796
    :cond_99
    :goto_99
    nop

    .line 3797
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v7

    if-nez v7, :cond_a2

    move v7, v2

    goto :goto_a3

    :cond_a2
    move v7, v1

    .line 3798
    .local v7, "isDataInService":Z
    :goto_a3
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v8

    .line 3799
    .local v8, "dataRegType":I
    if-eqz v7, :cond_12d

    .line 3800
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v9

    if-nez v9, :cond_b4

    .line 3801
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto/16 :goto_12d

    .line 3803
    :cond_b4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_107

    .line 3804
    invoke-static {v8}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 3805
    if-eqz v0, :cond_cd

    .line 3807
    nop

    .line 3808
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    .line 3807
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_12d

    .line 3815
    :cond_cd
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 3816
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_de

    .line 3819
    :cond_db
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 3824
    :goto_de
    nop

    .line 3825
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3824
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->IsInternationalRoamingException(Ljava/lang/String;)Z

    move-result v3

    .line 3827
    if-eqz v3, :cond_12d

    .line 3828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3830
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_12d

    .line 3836
    :cond_103
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_12d

    .line 3839
    :cond_107
    invoke-static {v8}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 3840
    if-eqz v0, :cond_118

    .line 3842
    nop

    .line 3843
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    .line 3842
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_12d

    .line 3847
    :cond_118
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_12d

    .line 3852
    :cond_11c
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 3853
    invoke-virtual {p1, v5}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    goto :goto_12d

    .line 3856
    :cond_12a
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 3863
    :cond_12d
    :goto_12d
    return-void
.end method

.method protected setSignalStrengthDefaultValues()V
    .registers 3

    .line 4385
    new-instance v0, Lmediatek/telephony/MtkSignalStrength;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-direct {v0, v1}, Lmediatek/telephony/MtkSignalStrength;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 4386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrengthUpdatedTime:J

    .line 4387
    return-void
.end method

.method public unregisterForDataRoamingTypeChange(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 933
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 934
    return-void
.end method

.method protected updateNrFrequencyRangeFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z
    .registers 15
    .param p2, "ss"    # Landroid/telephony/ServiceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;",
            "Landroid/telephony/ServiceState;",
            ")Z"
        }
    .end annotation

    .line 4563
    .local p1, "physicalChannelConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    const/4 v0, 0x0

    .line 4564
    .local v0, "hasChanged":Z
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 4565
    :cond_9
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_6e

    .line 4566
    const/4 v1, 0x0

    .line 4567
    .local v1, "newFrequencyRange":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 4570
    .local v2, "nri":Landroid/telephony/NetworkRegistrationInfo;
    const/4 v4, 0x0

    if-eqz v2, :cond_61

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    if-eqz v5, :cond_61

    .line 4571
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    .line 4572
    .local v5, "cellIdentity":Landroid/telephony/CellIdentity;
    invoke-virtual {v5}, Landroid/telephony/CellIdentity;->getType()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_61

    .line 4573
    move-object v6, v5

    check-cast v6, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v6}, Landroid/telephony/CellIdentityNr;->getBands()[I

    move-result-object v6

    .line 4574
    .local v6, "bands":[I
    array-length v7, v6

    move v8, v4

    :goto_35
    if-ge v8, v7, :cond_61

    aget v9, v6, v8

    .line 4575
    .local v9, "band":I
    nop

    .line 4576
    invoke-static {v9}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromNrBand(I)I

    move-result v10

    .line 4575
    invoke-static {v1, v10}, Landroid/telephony/ServiceState;->getBetterNRFrequencyRange(II)I

    move-result v1

    .line 4577
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NR IDLE state, use ps band["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] update FrequencyRange to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4574
    .end local v9    # "band":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 4581
    .end local v5    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local v6    # "bands":[I
    :cond_61
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v5

    if-eq v1, v5, :cond_68

    goto :goto_69

    :cond_68
    move v3, v4

    :goto_69
    move v0, v3

    .line 4582
    invoke-virtual {p2, v1}, Landroid/telephony/ServiceState;->setNrFrequencyRange(I)V

    .line 4583
    .end local v1    # "newFrequencyRange":I
    .end local v2    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    goto :goto_72

    .line 4584
    :cond_6e
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->updateNrFrequencyRangeFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 4586
    :goto_72
    return v0
.end method

.method public updatePhoneType()V
    .registers 10

    .line 752
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 753
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mVoiceRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 758
    :cond_11
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 759
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDataRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 763
    :cond_22
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_33

    .line 764
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNetworkDetachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 768
    :cond_33
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 769
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    const-string v1, "vendor.ril.mtk_hvolte_indicator"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 771
    .local v0, "skipDetachNotify":Z
    const/4 v2, 0x0

    if-nez v0, :cond_7f

    .line 774
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_52
    if-ge v5, v4, :cond_84

    aget v6, v3, v5

    .line 775
    .local v6, "transport":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v7, :cond_7c

    .line 776
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v6}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v7

    .line 778
    .local v7, "nrs":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v7, :cond_7c

    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v8

    if-eqz v8, :cond_7c

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    .line 779
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7c

    .line 780
    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v8}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 774
    .end local v6    # "transport":I
    .end local v7    # "nrs":Landroid/telephony/NetworkRegistrationInfo;
    :cond_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 786
    :cond_7f
    const-string v3, "hvolte register, skip notify detach registrants"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 790
    :cond_84
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->once_pollState_done:Z

    .line 792
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_97

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_97

    if-nez v0, :cond_91

    goto :goto_97

    .line 799
    :cond_91
    const-string v3, "updatePhoneType, not reset mSS"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_aa

    .line 794
    :cond_97
    :goto_97
    new-instance v3, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v3}, Lmediatek/telephony/MtkServiceState;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 795
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 796
    new-instance v3, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v3}, Lmediatek/telephony/MtkServiceState;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 802
    :goto_aa
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastCellInfoReqTime:J

    .line 804
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 805
    new-instance v4, Lmediatek/telephony/MtkSignalStrength;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-direct {v4, v5}, Lmediatek/telephony/MtkSignalStrength;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 806
    new-instance v4, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v4}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 807
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 808
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mReportedGprsNoReg:Z

    .line 809
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 810
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mMin:Ljava/lang/String;

    .line 811
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 812
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsMinInfoReady:Z

    .line 813
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLastNitzData:Lcom/android/internal/telephony/NitzData;

    .line 814
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v4}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 815
    iput-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSignalStrengthUpdatedTime:J

    .line 819
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->cancelPollState()V

    .line 821
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    const-string v5, "No isImeiLocked"

    if-eqz v4, :cond_158

    .line 823
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v4, :cond_f6

    .line 824
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 827
    :cond_f6
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    .line 828
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 829
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 832
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x65

    invoke-virtual {v4, p0, v6, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 833
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x6a

    invoke-virtual {v4, p0, v6, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 834
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x68

    invoke-virtual {v4, p0, v6, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForNetworkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 835
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0x69

    invoke-virtual {v4, p0, v6, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForModulation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 837
    const-string v4, "ro.vendor.mtk_femto_cell_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 838
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x66

    invoke-virtual {v1, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForFemtoCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 842
    :cond_13e
    :try_start_13e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    if-eqz v1, :cond_156

    .line 843
    invoke-interface {v1}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->isImeiLocked()Z

    move-result v1

    if-eqz v1, :cond_156

    .line 844
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x6b

    invoke-virtual {v1, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForIMEILock(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_151
    .catch Ljava/lang/RuntimeException; {:try_start_13e .. :try_end_151} :catch_152

    goto :goto_156

    .line 845
    :catch_152
    move-exception v1

    .line 847
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 848
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_156
    :goto_156
    goto/16 :goto_1f2

    .line 852
    :cond_158
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 853
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 855
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPsRestrictDisabledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 858
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    .line 859
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 860
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 863
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 864
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unSetInvalidSimInfo(Landroid/os/Handler;)V

    .line 865
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForNetworkEvent(Landroid/os/Handler;)V

    .line 866
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForModulation(Landroid/os/Handler;)V

    .line 869
    :try_start_192
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    if-eqz v1, :cond_1a3

    .line 870
    invoke-interface {v1}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->isImeiLocked()Z

    move-result v1

    if-eqz v1, :cond_1a3

    .line 871
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForIMEILock(Landroid/os/Handler;)V
    :try_end_1a3
    .catch Ljava/lang/RuntimeException; {:try_start_192 .. :try_end_1a3} :catch_1a4

    .line 875
    :cond_1a3
    goto :goto_1a8

    .line 872
    :catch_1a4
    move-exception v1

    .line 874
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 877
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1a8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 878
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v4, 0x10

    invoke-virtual {v1, p0, v4, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 881
    :cond_1b7
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x27

    invoke-static {v1, v4, p0, v5, v3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 883
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v1

    if-nez v1, :cond_1d1

    const/4 v1, 0x1

    goto :goto_1d2

    :cond_1d1
    move v1, v2

    :goto_1d2
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 886
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x28

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 887
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x25

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 889
    new-instance v1, Lcom/android/internal/telephony/HbpcdUtils;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/HbpcdUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 891
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateOtaspState()V

    .line 896
    :goto_1f2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->onUpdateIccAvailability()V

    .line 898
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setDataNetworkTypeForPhone(I)V

    .line 903
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 904
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 906
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logPhoneTypeChange()V

    .line 909
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifyVoiceRegStateRilRadioTechnologyChanged()V

    .line 911
    if-nez v0, :cond_224

    .line 913
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v3, v1

    :goto_21a
    if-ge v2, v3, :cond_224

    aget v4, v1, v2

    .line 914
    .local v4, "transport":I
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged(I)V

    .line 913
    .end local v4    # "transport":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_21a

    .line 917
    :cond_224
    return-void
.end method

.method protected updateReportingCriteria(Landroid/os/PersistableBundle;)V
    .registers 13
    .param p1, "config"    # Landroid/os/PersistableBundle;

    .line 4418
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 4419
    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkLteRsrpThreshold()[I

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    .line 4420
    .local v0, "lteRsrpThresholds":[I
    :goto_b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    if-eqz v2, :cond_14

    .line 4421
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->getMtkLteRssnrThreshold()[I

    move-result-object v1

    goto :goto_15

    :cond_14
    nop

    .line 4423
    .local v1, "lteRssnrThresholds":[I
    :goto_15
    const-string v2, "parameters_used_for_lte_signal_bar_int"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4425
    .local v2, "lteMeasurementEnabled":I
    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v0, :cond_2d

    .line 4426
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_28

    move v7, v3

    goto :goto_29

    :cond_28
    move v7, v5

    :goto_29
    invoke-virtual {v6, v4, v0, v4, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria(I[IIZ)V

    goto :goto_3f

    .line 4431
    :cond_2d
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4432
    const-string v7, "lte_rsrp_thresholds_int_array"

    invoke-virtual {p1, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_3b

    move v8, v3

    goto :goto_3c

    :cond_3b
    move v8, v5

    .line 4431
    :goto_3c
    invoke-virtual {v6, v4, v7, v4, v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria(I[IIZ)V

    .line 4436
    :goto_3f
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4437
    const-string v7, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {p1, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 4436
    const/4 v8, 0x2

    invoke-virtual {v6, v8, v7, v8, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria(I[IIZ)V

    .line 4439
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4440
    const-string v7, "gsm_rssi_thresholds_int_array"

    invoke-virtual {p1, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 4439
    invoke-virtual {v6, v3, v7, v3, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria(I[IIZ)V

    .line 4443
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 4444
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4445
    const-string v7, "lte_rsrq_thresholds_int_array"

    invoke-virtual {p1, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_72

    move v8, v3

    goto :goto_73

    :cond_72
    move v8, v5

    .line 4444
    :goto_73
    const/4 v9, 0x4

    invoke-virtual {v6, v9, v7, v4, v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria(I[IIZ)V

    .line 4448
    const/4 v6, 0x5

    if-eqz v1, :cond_87

    .line 4449
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_82

    move v8, v3

    goto :goto_83

    :cond_82
    move v8, v5

    :goto_83
    invoke-virtual {v7, v6, v1, v4, v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria(I[IIZ)V

    goto :goto_99

    .line 4454
    :cond_87
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4455
    const-string v8, "lte_rssnr_thresholds_int_array"

    invoke-virtual {p1, v8}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    and-int/lit8 v9, v2, 0x4

    if-eqz v9, :cond_95

    move v9, v3

    goto :goto_96

    :cond_95
    move v9, v5

    .line 4454
    :goto_96
    invoke-virtual {v7, v6, v8, v4, v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria(I[IIZ)V

    .line 4460
    :goto_99
    const-string v4, "parameters_use_for_5g_nr_signal_bar_int"

    invoke-virtual {p1, v4, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 4462
    .local v4, "measurementEnabled":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4463
    const-string v7, "5g_nr_ssrsrp_thresholds_int_array"

    invoke-virtual {p1, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_ad

    move v8, v3

    goto :goto_ae

    :cond_ad
    move v8, v5

    .line 4462
    :goto_ae
    const/4 v9, 0x6

    invoke-virtual {v6, v9, v7, v9, v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria(I[IIZ)V

    .line 4466
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v7, 0x7

    .line 4467
    const-string v8, "5g_nr_ssrsrq_thresholds_int_array"

    invoke-virtual {p1, v8}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    and-int/lit8 v10, v4, 0x2

    if-eqz v10, :cond_c1

    move v10, v3

    goto :goto_c2

    :cond_c1
    move v10, v5

    .line 4466
    :goto_c2
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria(I[IIZ)V

    .line 4470
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v7, 0x8

    .line 4471
    const-string v8, "5g_nr_sssinr_thresholds_int_array"

    invoke-virtual {p1, v8}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    and-int/lit8 v10, v4, 0x4

    if-eqz v10, :cond_d4

    goto :goto_d5

    :cond_d4
    move v3, v5

    .line 4470
    :goto_d5
    invoke-virtual {v6, v7, v8, v9, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSignalStrengthReportingCriteria(I[IIZ)V

    .line 4475
    .end local v4    # "measurementEnabled":I
    :cond_d8
    return-void
.end method

.method protected updateSpnDisplayLegacy()V
    .registers 23

    .line 1779
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1780
    .local v2, "spn":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1781
    .local v3, "dataSpn":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1782
    .local v4, "showSpn":Z
    const/4 v0, 0x0

    .line 1783
    .local v0, "plmn":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1785
    .local v5, "showPlmn":Z
    const/4 v6, 0x0

    .line 1786
    .local v6, "wfcVoiceSpnFormat":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1787
    .local v7, "wfcDataSpnFormat":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1788
    .local v8, "wfcFlightSpnFormat":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->isTurboSSAlive()Z

    move-result v9

    if-eqz v9, :cond_45

    iget v9, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPrevSubId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_45

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1790
    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_45

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;

    .line 1791
    invoke-virtual {v9}, Lmediatek/telephony/MtkServiceState;->getVoiceRegState()I

    move-result v9

    if-nez v9, :cond_31

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;

    .line 1792
    invoke-virtual {v9}, Lmediatek/telephony/MtkServiceState;->getVoiceRoaming()Z

    move-result v9

    if-eqz v9, :cond_41

    :cond_31
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;

    .line 1793
    invoke-virtual {v9}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v9

    if-nez v9, :cond_45

    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->turboSS:Lmediatek/telephony/MtkServiceState;

    .line 1794
    invoke-virtual {v9}, Lmediatek/telephony/MtkServiceState;->getDataRoaming()Z

    move-result v9

    if-nez v9, :cond_45

    .line 1795
    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateTurboPLMN()V

    .line 1797
    return-void

    .line 1800
    :cond_45
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCombinedRegState(Landroid/telephony/ServiceState;)I

    move-result v9

    .line 1801
    .local v9, "combinedRegState":I
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    const-string v11, "wfc_spn_use_root_locale"

    if-eqz v10, :cond_e4

    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v10

    if-eqz v10, :cond_e4

    if-nez v9, :cond_e4

    .line 1810
    const/4 v10, 0x0

    .line 1811
    .local v10, "voiceIdx":I
    const/4 v12, 0x0

    .line 1812
    .local v12, "dataIdx":I
    const/4 v13, -0x1

    .line 1813
    .local v13, "flightModeIdx":I
    const/4 v14, 0x0

    .line 1814
    .local v14, "useRootLocale":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v15

    .line 1815
    .local v15, "bundle":Landroid/os/PersistableBundle;
    move-object/from16 v16, v0

    .end local v0    # "plmn":Ljava/lang/String;
    .local v16, "plmn":Ljava/lang/String;
    const-string v0, "wfc_spn_format_idx_int"

    invoke-virtual {v15, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1816
    .end local v10    # "voiceIdx":I
    .local v0, "voiceIdx":I
    const-string v10, "wfc_data_spn_format_idx_int"

    invoke-virtual {v15, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1818
    .end local v12    # "dataIdx":I
    .local v10, "dataIdx":I
    const-string v12, "wfc_flight_mode_spn_format_idx_int"

    invoke-virtual {v15, v12}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1820
    .end local v13    # "flightModeIdx":I
    .local v12, "flightModeIdx":I
    nop

    .line 1821
    invoke-virtual {v15, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 1822
    .end local v14    # "useRootLocale":Z
    .local v13, "useRootLocale":Z
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v17, v2

    .end local v2    # "spn":Ljava/lang/String;
    .local v17, "spn":Ljava/lang/String;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1823
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v2

    .line 1822
    invoke-static {v14, v2, v13}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v2

    const v14, 0x10700bd

    .line 1824
    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1826
    .local v2, "wfcSpnFormats":[Ljava/lang/String;
    if-ltz v0, :cond_a6

    array-length v14, v2

    if-lt v0, v14, :cond_a3

    goto :goto_a6

    :cond_a3
    move-object/from16 v18, v3

    goto :goto_bd

    .line 1827
    :cond_a6
    :goto_a6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    .end local v3    # "dataSpn":Ljava/lang/String;
    .local v18, "dataSpn":Ljava/lang/String;
    const-string v3, "updateSpnDisplay: KEY_WFC_SPN_FORMAT_IDX_INT out of bounds: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1828
    const/4 v0, 0x0

    .line 1830
    :goto_bd
    if-ltz v10, :cond_c2

    array-length v3, v2

    if-lt v10, v3, :cond_d7

    .line 1831
    :cond_c2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSpnDisplay: KEY_WFC_DATA_SPN_FORMAT_IDX_INT out of bounds: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1833
    const/4 v10, 0x0

    .line 1835
    :cond_d7
    if-ltz v12, :cond_dc

    array-length v3, v2

    if-lt v12, v3, :cond_dd

    .line 1838
    :cond_dc
    move v12, v0

    .line 1841
    :cond_dd
    aget-object v6, v2, v0

    .line 1842
    aget-object v7, v2, v10

    .line 1843
    aget-object v8, v2, v12

    goto :goto_ea

    .line 1801
    .end local v10    # "dataIdx":I
    .end local v12    # "flightModeIdx":I
    .end local v13    # "useRootLocale":Z
    .end local v15    # "bundle":Landroid/os/PersistableBundle;
    .end local v16    # "plmn":Ljava/lang/String;
    .end local v17    # "spn":Ljava/lang/String;
    .end local v18    # "dataSpn":Ljava/lang/String;
    .local v0, "plmn":Ljava/lang/String;
    .local v2, "spn":Ljava/lang/String;
    .restart local v3    # "dataSpn":Ljava/lang/String;
    :cond_e4
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 1847
    .end local v0    # "plmn":Ljava/lang/String;
    .end local v2    # "spn":Ljava/lang/String;
    .end local v3    # "dataSpn":Ljava/lang/String;
    .restart local v16    # "plmn":Ljava/lang/String;
    .restart local v17    # "spn":Ljava/lang/String;
    .restart local v18    # "dataSpn":Ljava/lang/String;
    :goto_ea
    const/4 v0, 0x0

    .line 1848
    .local v0, "crossSimSpnFormat":Ljava/lang/String;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_145

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1849
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result v2

    if-ne v2, v3, :cond_145

    .line 1857
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1858
    .local v2, "bundle":Landroid/os/PersistableBundle;
    nop

    .line 1859
    const-string v10, "cross_sim_spn_format_int"

    invoke-virtual {v2, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1860
    .local v10, "crossSimSpnFormatIdx":I
    nop

    .line 1861
    invoke-virtual {v2, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1863
    .local v11, "useRootLocale":Z
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1864
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1865
    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v13

    .line 1863
    invoke-static {v12, v13, v11}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1070090

    .line 1866
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 1868
    .local v12, "crossSimSpnFormats":[Ljava/lang/String;
    if-ltz v10, :cond_12c

    array-length v13, v12

    if-lt v10, v13, :cond_141

    .line 1869
    :cond_12c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSpnDisplay: KEY_CROSS_SIM_SPN_FORMAT_INT out of bounds: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1871
    const/4 v10, 0x0

    .line 1873
    :cond_141
    aget-object v0, v12, v10

    move-object v2, v0

    goto :goto_146

    .line 1876
    .end local v2    # "bundle":Landroid/os/PersistableBundle;
    .end local v10    # "crossSimSpnFormatIdx":I
    .end local v11    # "useRootLocale":Z
    .end local v12    # "crossSimSpnFormats":[Ljava/lang/String;
    :cond_145
    move-object v2, v0

    .end local v0    # "crossSimSpnFormat":Ljava/lang/String;
    .local v2, "crossSimSpnFormat":Ljava/lang/String;
    :goto_146
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v10, "\'"

    const v11, 0x1040490

    const v12, 0x104030c

    const/4 v15, 0x1

    if-eqz v0, :cond_40a

    .line 1895
    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1896
    .local v13, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierNameDisplayBitmask(Landroid/telephony/ServiceState;)I

    move-result v14

    .line 1897
    .local v14, "rule":I
    const/4 v0, 0x0

    .line 1898
    .local v0, "noService":Z
    if-eq v9, v15, :cond_1b3

    if-ne v9, v3, :cond_165

    goto :goto_1b3

    .line 1918
    :cond_165
    if-nez v9, :cond_192

    .line 1920
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v10

    .line 1921
    .end local v16    # "plmn":Ljava/lang/String;
    .local v10, "plmn":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_179

    and-int/lit8 v11, v14, 0x2

    if-ne v11, v3, :cond_179

    move v3, v15

    goto :goto_17a

    :cond_179
    const/4 v3, 0x0

    .line 1924
    .end local v5    # "showPlmn":Z
    .local v3, "showPlmn":Z
    :goto_17a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSpnDisplay: rawPlmn = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    move v5, v3

    move v3, v0

    goto/16 :goto_1fd

    .line 1927
    .end local v3    # "showPlmn":Z
    .end local v10    # "plmn":Ljava/lang/String;
    .restart local v5    # "showPlmn":Z
    .restart local v16    # "plmn":Ljava/lang/String;
    :cond_192
    const/4 v3, 0x1

    .line 1928
    .end local v5    # "showPlmn":Z
    .restart local v3    # "showPlmn":Z
    const/4 v10, 0x0

    .line 1929
    .end local v16    # "plmn":Ljava/lang/String;
    .restart local v10    # "plmn":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSpnDisplay: radio is off w/ showPlmn="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " plmn="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    move v5, v3

    move v3, v0

    goto :goto_1fd

    .line 1900
    .end local v3    # "showPlmn":Z
    .end local v10    # "plmn":Ljava/lang/String;
    .restart local v5    # "showPlmn":Z
    .restart local v16    # "plmn":Ljava/lang/String;
    :cond_1b3
    :goto_1b3
    const/4 v3, 0x1

    .line 1903
    .end local v5    # "showPlmn":Z
    .restart local v3    # "showPlmn":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->shouldForceDisplayNoService()Z

    move-result v5

    if-eqz v5, :cond_1c0

    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsSimReady:Z

    if-nez v5, :cond_1c0

    move v5, v15

    goto :goto_1c1

    :cond_1c0
    const/4 v5, 0x0

    .line 1904
    .local v5, "forceDisplayNoService":Z
    :goto_1c1
    if-nez v5, :cond_1d6

    invoke-static {}, Lcom/android/internal/telephony/Phone;->isEmergencyCallOnly()Z

    move-result v19

    if-eqz v19, :cond_1d6

    .line 1906
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 1907
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v16    # "plmn":Ljava/lang/String;
    .local v11, "plmn":Ljava/lang/String;
    goto :goto_1e3

    .line 1910
    .end local v11    # "plmn":Ljava/lang/String;
    .restart local v16    # "plmn":Ljava/lang/String;
    :cond_1d6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    .line 1911
    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1913
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1914
    .end local v16    # "plmn":Ljava/lang/String;
    .restart local v11    # "plmn":Ljava/lang/String;
    const/4 v0, 0x1

    .line 1916
    :goto_1e3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1918
    .end local v5    # "forceDisplayNoService":Z
    move v5, v3

    move-object v10, v11

    move v3, v0

    .line 1934
    .end local v0    # "noService":Z
    .end local v11    # "plmn":Ljava/lang/String;
    .local v3, "noService":Z
    .local v5, "showPlmn":Z
    .restart local v10    # "plmn":Ljava/lang/String;
    :goto_1fd
    :try_start_1fd
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    check-cast v11, Lmediatek/telephony/MtkServiceState;

    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1935
    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v12

    .line 1934
    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->onUpdateSpnDisplay(Ljava/lang/String;Lmediatek/telephony/MtkServiceState;I)Ljava/lang/String;

    move-result-object v0
    :try_end_20d
    .catch Ljava/lang/RuntimeException; {:try_start_1fd .. :try_end_20d} :catch_20f

    move-object v10, v0

    .line 1938
    goto :goto_213

    .line 1936
    :catch_20f
    move-exception v0

    .line 1937
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1940
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_213
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_289

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1941
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_286

    .line 1944
    if-eqz v10, :cond_27e

    .line 1946
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->showEccForIms()Z

    move-result v0

    .line 1947
    .local v0, "eccForIms":Z
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getImsEccOnly()Z

    move-result v11

    .line 1948
    .local v11, "imsEccOnly":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CS OOS/PS In service, check eccForIms="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " imsEccOnly="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1950
    if-eqz v0, :cond_27b

    if-eqz v11, :cond_27b

    .line 1951
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "("

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    .line 1952
    move/from16 v20, v4

    const v4, 0x104030c

    .end local v4    # "showSpn":Z
    .local v20, "showSpn":Z
    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1953
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .end local v10    # "plmn":Ljava/lang/String;
    .local v4, "plmn":Ljava/lang/String;
    goto :goto_27d

    .line 1950
    .end local v20    # "showSpn":Z
    .local v4, "showSpn":Z
    .restart local v10    # "plmn":Ljava/lang/String;
    :cond_27b
    move/from16 v20, v4

    .line 1955
    .end local v0    # "eccForIms":Z
    .end local v4    # "showSpn":Z
    .end local v11    # "imsEccOnly":Z
    .restart local v20    # "showSpn":Z
    :goto_27d
    goto :goto_28b

    .line 1956
    .end local v20    # "showSpn":Z
    .restart local v4    # "showSpn":Z
    :cond_27e
    move/from16 v20, v4

    .end local v4    # "showSpn":Z
    .restart local v20    # "showSpn":Z
    const-string v0, "PLMN name is null when CS not registered and PS registered"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_28b

    .line 1941
    .end local v20    # "showSpn":Z
    .restart local v4    # "showSpn":Z
    :cond_286
    move/from16 v20, v4

    .end local v4    # "showSpn":Z
    .restart local v20    # "showSpn":Z
    goto :goto_28b

    .line 1940
    .end local v20    # "showSpn":Z
    .restart local v4    # "showSpn":Z
    :cond_289
    move/from16 v20, v4

    .line 1961
    .end local v4    # "showSpn":Z
    .restart local v20    # "showSpn":Z
    :goto_28b
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIsImeiLock:Z

    if-eqz v0, :cond_291

    .line 1962
    const-string v10, ""

    .line 1970
    :cond_291
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 1971
    .end local v17    # "spn":Ljava/lang/String;
    .local v0, "spn":Ljava/lang/String;
    move-object v4, v0

    .line 1972
    .end local v18    # "dataSpn":Ljava/lang/String;
    .local v4, "dataSpn":Ljava/lang/String;
    if-nez v3, :cond_2a5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2a5

    and-int/lit8 v11, v14, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2a5

    const/4 v11, 0x1

    goto :goto_2a6

    :cond_2a5
    const/4 v11, 0x0

    .line 1975
    .end local v20    # "showSpn":Z
    .local v11, "showSpn":Z
    :goto_2a6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateSpnDisplay: rawSpn = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1976
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v15, "wfc_carrier_name_override_by_pnn_bool"

    if-nez v12, :cond_315

    .line 1977
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2df

    .line 1980
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1981
    .local v12, "originalSpn":Ljava/lang/String;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v2, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1982
    move-object v4, v0

    .line 1983
    const/4 v11, 0x1

    .line 1984
    const/4 v5, 0x0

    .line 1985
    .end local v12    # "originalSpn":Ljava/lang/String;
    move/from16 v16, v3

    move-object v3, v4

    goto/16 :goto_399

    :cond_2df
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_30f

    .line 1987
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1988
    .local v12, "originalPlmn":Ljava/lang/String;
    move/from16 v16, v3

    .end local v3    # "noService":Z
    .local v16, "noService":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1989
    .local v3, "config":Landroid/os/PersistableBundle;
    move-object/from16 v17, v4

    .end local v4    # "dataSpn":Ljava/lang/String;
    .local v17, "dataSpn":Ljava/lang/String;
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_301

    invoke-virtual {v3, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_301

    .line 1991
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object v12

    .line 1993
    :cond_301
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v4, v15

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1994
    .end local v3    # "config":Landroid/os/PersistableBundle;
    .end local v12    # "originalPlmn":Ljava/lang/String;
    move-object/from16 v3, v17

    goto/16 :goto_399

    .line 1985
    .end local v16    # "noService":Z
    .end local v17    # "dataSpn":Ljava/lang/String;
    .local v3, "noService":Z
    .restart local v4    # "dataSpn":Ljava/lang/String;
    :cond_30f
    move/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "noService":Z
    .end local v4    # "dataSpn":Ljava/lang/String;
    .restart local v16    # "noService":Z
    .restart local v17    # "dataSpn":Ljava/lang/String;
    goto/16 :goto_392

    .line 1995
    .end local v16    # "noService":Z
    .end local v17    # "dataSpn":Ljava/lang/String;
    .restart local v3    # "noService":Z
    .restart local v4    # "dataSpn":Ljava/lang/String;
    :cond_315
    move/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "noService":Z
    .end local v4    # "dataSpn":Ljava/lang/String;
    .restart local v16    # "noService":Z
    .restart local v17    # "dataSpn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34f

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34f

    .line 1996
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34f

    .line 2001
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_335

    .line 2002
    move-object v6, v8

    .line 2005
    :cond_335
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2006
    .local v3, "originalSpn":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v12, v15

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2007
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v15

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2008
    .end local v17    # "dataSpn":Ljava/lang/String;
    .restart local v4    # "dataSpn":Ljava/lang/String;
    const/4 v11, 0x1

    .line 2009
    const/4 v5, 0x0

    .line 2010
    .end local v3    # "originalSpn":Ljava/lang/String;
    move-object v3, v4

    goto :goto_399

    .end local v4    # "dataSpn":Ljava/lang/String;
    .restart local v17    # "dataSpn":Ljava/lang/String;
    :cond_34f
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_380

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_380

    .line 2012
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2013
    .local v3, "originalPlmn":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 2014
    .local v4, "config":Landroid/os/PersistableBundle;
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v12, :cond_373

    invoke-virtual {v4, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_373

    .line 2016
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/IccRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object v3

    .line 2019
    :cond_373
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v12, v15

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2020
    .end local v3    # "originalPlmn":Ljava/lang/String;
    .end local v4    # "config":Landroid/os/PersistableBundle;
    move-object/from16 v3, v17

    goto :goto_399

    :cond_380
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_395

    if-eqz v5, :cond_392

    .line 2021
    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_392

    goto :goto_395

    .line 2028
    :cond_392
    :goto_392
    move-object/from16 v3, v17

    goto :goto_399

    .line 2023
    :cond_395
    :goto_395
    const/4 v0, 0x0

    .line 2024
    const/4 v11, 0x0

    move-object/from16 v3, v17

    .line 2028
    .end local v17    # "dataSpn":Ljava/lang/String;
    .local v3, "dataSpn":Ljava/lang/String;
    :goto_399
    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-eqz v4, :cond_3ad

    iget-object v4, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2029
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    if-eqz v4, :cond_3ad

    .line 2030
    const/4 v0, 0x0

    .line 2031
    const/4 v11, 0x0

    move-object v4, v0

    goto :goto_3ae

    .line 2035
    :cond_3ad
    move-object v4, v0

    .end local v0    # "spn":Ljava/lang/String;
    .local v4, "spn":Ljava/lang/String;
    :goto_3ae
    :try_start_3ae
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->needSpnRuleShowPlmnOnly()Z

    move-result v0

    if-eqz v0, :cond_3e5

    .line 2036
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e5

    .line 2037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "origin showSpn:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " showPlmn:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " rule:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3e0
    .catch Ljava/lang/RuntimeException; {:try_start_3ae .. :try_end_3e0} :catch_3e6

    .line 2038
    const/4 v0, 0x0

    .line 2039
    .end local v11    # "showSpn":Z
    .local v0, "showSpn":Z
    const/4 v5, 0x1

    .line 2040
    const/4 v11, 0x2

    move v14, v11

    move v11, v0

    .line 2044
    .end local v0    # "showSpn":Z
    .restart local v11    # "showSpn":Z
    :cond_3e5
    goto :goto_3ea

    .line 2042
    :catch_3e6
    move-exception v0

    .line 2043
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 2048
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3ea
    :try_start_3ea
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->allowSpnDisplayed()Z

    move-result v0
    :try_end_3f0
    .catch Ljava/lang/RuntimeException; {:try_start_3ea .. :try_end_3f0} :catch_3f9

    if-nez v0, :cond_3f8

    .line 2049
    const/4 v12, 0x3

    if-ne v14, v12, :cond_3f8

    .line 2051
    const/4 v0, 0x0

    .line 2052
    .end local v11    # "showSpn":Z
    .local v0, "showSpn":Z
    const/4 v4, 0x0

    move v11, v0

    .line 2057
    .end local v0    # "showSpn":Z
    .restart local v11    # "showSpn":Z
    :cond_3f8
    goto :goto_3fd

    .line 2055
    :catch_3f9
    move-exception v0

    .line 2056
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 2061
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3fd
    if-nez v5, :cond_408

    if-nez v11, :cond_408

    .line 2062
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_408

    .line 2063
    const/4 v5, 0x1

    .line 2066
    .end local v13    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v14    # "rule":I
    .end local v16    # "noService":Z
    :cond_408
    goto/16 :goto_571

    .line 2067
    .end local v3    # "dataSpn":Ljava/lang/String;
    .end local v10    # "plmn":Ljava/lang/String;
    .end local v11    # "showSpn":Z
    .local v4, "showSpn":Z
    .local v16, "plmn":Ljava/lang/String;
    .local v17, "spn":Ljava/lang/String;
    .restart local v18    # "dataSpn":Ljava/lang/String;
    :cond_40a
    move/from16 v20, v4

    .end local v4    # "showSpn":Z
    .restart local v20    # "showSpn":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getOperatorNameFromEri()Ljava/lang/String;

    move-result-object v3

    .line 2068
    .local v3, "eriText":Ljava/lang/String;
    if-eqz v3, :cond_417

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 2071
    :cond_417
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->updateOperatorNameFromCarrierConfig()V

    .line 2074
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v0

    .line 2075
    .end local v16    # "plmn":Ljava/lang/String;
    .local v0, "plmn":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateSpnDisplay: cdma rawPlmn = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2077
    if-eqz v0, :cond_438

    const/4 v4, 0x1

    goto :goto_439

    :cond_438
    const/4 v4, 0x0

    .line 2079
    .end local v5    # "showPlmn":Z
    .local v4, "showPlmn":Z
    :goto_439
    if-eqz v0, :cond_444

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_444

    .line 2080
    const/4 v0, 0x0

    .line 2084
    :cond_444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45f

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45f

    .line 2086
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2087
    .local v5, "originalPlmn":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v13, v12

    invoke-static {v6, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v5    # "originalPlmn":Ljava/lang/String;
    goto :goto_483

    .line 2084
    :cond_45f
    const/4 v12, 0x0

    .line 2088
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v5

    if-nez v5, :cond_483

    .line 2092
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateSpnDisplay: overwriting plmn from "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " to null as radio state is off"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 2094
    const/4 v0, 0x0

    goto :goto_484

    .line 2088
    :cond_483
    :goto_483
    nop

    .line 2097
    :goto_484
    const/4 v5, 0x1

    if-ne v9, v5, :cond_4aa

    .line 2098
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2099
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSpnDisplay: radio is on but out of svc, set plmn=\'"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 2106
    :cond_4aa
    iget-boolean v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v5, :cond_4cd

    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_4cd

    .line 2107
    const-string v5, "updateSpnDisplay:phone show emergency call only, mEmergencyOnly = true"

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 2108
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 2109
    const v10, 0x104030c

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_4ce

    .line 2113
    :cond_4cd
    move-object v10, v0

    .end local v0    # "plmn":Ljava/lang/String;
    .restart local v10    # "plmn":Ljava/lang/String;
    :goto_4ce
    const-string v5, ""

    .line 2114
    .end local v17    # "spn":Ljava/lang/String;
    .local v5, "spn":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2117
    .end local v20    # "showSpn":Z
    .restart local v11    # "showSpn":Z
    :try_start_4d1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->allowSpnDisplayed()Z

    move-result v0

    if-eqz v0, :cond_528

    .line 2118
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getCarrierNameDisplayBitmask(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 2119
    .local v0, "rule":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 2120
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_502

    and-int/lit8 v13, v0, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_502

    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2123
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_502

    iget-object v13, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2124
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v13

    if-nez v13, :cond_502

    const/4 v13, 0x1

    goto :goto_503

    :cond_502
    move v13, v12

    :goto_503
    move v11, v13

    .line 2125
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[CDMA]updateSpnDisplay: rule="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", spn="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", showSpn="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 2131
    .end local v0    # "rule":I
    :cond_528
    if-eqz v10, :cond_52c

    const/4 v14, 0x1

    goto :goto_52d

    :cond_52c
    move v14, v12

    :goto_52d
    move v4, v14

    .line 2134
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mServiceStateTrackerExt:Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;->allowSpnDisplayed()Z

    move-result v0

    if-eqz v0, :cond_55e

    .line 2135
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v12, 0x3

    if-eq v0, v12, :cond_55b

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2136
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v12, 0x1

    if-eq v0, v12, :cond_55b

    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2137
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-nez v0, :cond_55b

    .line 2138
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_554
    .catch Ljava/lang/RuntimeException; {:try_start_4d1 .. :try_end_554} :catch_566

    if-eqz v0, :cond_557

    goto :goto_55b

    .line 2142
    :cond_557
    const/4 v0, 0x1

    .line 2143
    .end local v11    # "showSpn":Z
    .local v0, "showSpn":Z
    const/4 v4, 0x0

    move v11, v0

    goto :goto_55e

    .line 2139
    .end local v0    # "showSpn":Z
    .restart local v11    # "showSpn":Z
    :cond_55b
    :goto_55b
    const/4 v0, 0x0

    .line 2140
    .end local v11    # "showSpn":Z
    .restart local v0    # "showSpn":Z
    const/4 v4, 0x1

    move v11, v0

    .line 2149
    .end local v0    # "showSpn":Z
    .restart local v11    # "showSpn":Z
    :cond_55e
    :goto_55e
    move-object/from16 v3, v18

    move-object/from16 v21, v5

    move v5, v4

    move-object/from16 v4, v21

    goto :goto_571

    .line 2147
    :catch_566
    move-exception v0

    move-object/from16 v21, v5

    move v5, v4

    move-object/from16 v4, v21

    .line 2148
    .local v0, "e":Ljava/lang/RuntimeException;
    .local v4, "spn":Ljava/lang/String;
    .local v5, "showPlmn":Z
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object/from16 v3, v18

    .line 2152
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v18    # "dataSpn":Ljava/lang/String;
    .local v3, "dataSpn":Ljava/lang/String;
    :goto_571
    new-instance v0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;-><init>()V

    .line 2153
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v0

    .line 2154
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setDataSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v0

    .line 2155
    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowSpn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v0

    .line 2156
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setPlmn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v0

    .line 2157
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowPlmn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v0

    .line 2158
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->build()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object v0

    .line 2152
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->notifySpnDisplayUpdate(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)V

    .line 2159
    const-string v0, "updateSpnDisplayLegacy-"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 2160
    return-void
.end method

.method public willLocatedPlmnChange()Z
    .registers 5

    .line 3144
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    .line 3145
    .local v0, "mMtkSS":Lmediatek/telephony/MtkServiceState;
    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    if-nez v2, :cond_c

    goto :goto_22

    .line 3146
    :cond_c
    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getCellularRegState()I

    move-result v2

    if-nez v2, :cond_21

    .line 3147
    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->mLocatedPlmn:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 3149
    const/4 v1, 0x1

    return v1

    .line 3151
    :cond_20
    return v1

    .line 3154
    :cond_21
    return v1

    .line 3145
    :cond_22
    :goto_22
    return v1
.end method

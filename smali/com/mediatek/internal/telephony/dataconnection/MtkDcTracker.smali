.class public Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
.super Lcom/android/internal/telephony/dataconnection/DcTracker;
.source "MtkDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$WorkerHandler;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;,
        Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final FDN_CONTENT_URI:Ljava/lang/String; = "content://icc/fdn"

.field private static final FDN_CONTENT_URI_WITH_SUB_ID:Ljava/lang/String; = "content://icc/fdn/subId/"

.field private static final FDN_FOR_ALLOW_DATA:Ljava/lang/String; = "*99#"

.field private static final KDDI_OPERATOR:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "MtkDct"

.field private static final SKIP_DATA_STALL_ALARM:Ljava/lang/String; = "persist.vendor.skip.data.stall.alarm"

.field private static final VDBG:Z

.field private static final VZW_OPERATOR:[Ljava/lang/String;

.field private static final mImpiList:[Ljava/lang/String;


# instance fields
.field private MCCMNC_EE:[Ljava/lang/String;

.field private MCCMNC_OP18:[Ljava/lang/String;

.field private MCCMNC_TELCEL:[Ljava/lang/String;

.field private MCCMNC_TELSTRA:[Ljava/lang/String;

.field private mCcDomesticRoamingEnabled:Z

.field private mCcDomesticRoamingSpecifiedNw:[Ljava/lang/String;

.field private mCcIntlRoamingEnabled:Z

.field private mCcOneSettingForRoaming:Z

.field private mCcUniqueSettingsForRoaming:Z

.field mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

.field mCpaDctCallback:Landroid/os/Handler;

.field private mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

.field private mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

.field private mFastRetryAfterDisconnecting:Z

.field private mHandoverApnType:I

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private final mIntentReceiverEx:Landroid/content/BroadcastReceiver;

.field private mIsAddMnoApnsIntoAllApnList:Z

.field private mIsFdnChecked:Z

.field private mIsMatchFdnForAllowData:Z

.field private mIsNotifyDataAttached:Z

.field private mIsPhbStateChangedIntentRegistered:Z

.field private mIsRecordsOverride:Z

.field private mIsSimNotReady:Z

.field private mIsSupportConcurrent:Z

.field private volatile mMobileDataUsage:Landroid/net/NetworkStats;

.field private final mMobileDataUsageProvider:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;

.field private mMtuFromResource:I

.field private mOldOperatorNumeric:Ljava/lang/String;

.field private final mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;

.field private mPendingDataCall:Z

.field private mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneType:I

.field private mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

.field private mRilRat:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

.field private mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

.field private mTurboSS:Lmediatek/telephony/MtkServiceState;

.field private mUiccCardApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 47

    .line 160
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    .line 222
    const-string v1, "405840"

    const-string v2, "405854"

    const-string v3, "405855"

    const-string v4, "405856"

    const-string v5, "405857"

    const-string v6, "405858"

    const-string v7, "405859"

    const-string v8, "405860"

    const-string v9, "405861"

    const-string v10, "405862"

    const-string v11, "405863"

    const-string v12, "405864"

    const-string v13, "405865"

    const-string v14, "405866"

    const-string v15, "405867"

    const-string v16, "405868"

    const-string v17, "405869"

    const-string v18, "405870"

    const-string v19, "405871"

    const-string v20, "405872"

    const-string v21, "405873"

    const-string v22, "405874"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mImpiList:[Ljava/lang/String;

    .line 238
    const-string v1, "44007"

    const-string v2, "44008"

    const-string v3, "44050"

    const-string v4, "44051"

    const-string v5, "44052"

    const-string v6, "44053"

    const-string v7, "44054"

    const-string v8, "44055"

    const-string v9, "44056"

    const-string v10, "44070"

    const-string v11, "44071"

    const-string v12, "44072"

    const-string v13, "44073"

    const-string v14, "44074"

    const-string v15, "44075"

    const-string v16, "44076"

    const-string v17, "44077"

    const-string v18, "44078"

    const-string v19, "44079"

    const-string v20, "44088"

    const-string v21, "44089"

    const-string v22, "44170"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->KDDI_OPERATOR:[Ljava/lang/String;

    .line 247
    const-string v1, "310004"

    const-string v2, "310005"

    const-string v3, "310006"

    const-string v4, "310010"

    const-string v5, "310012"

    const-string v6, "310013"

    const-string v7, "310350"

    const-string v8, "310590"

    const-string v9, "310820"

    const-string v10, "310890"

    const-string v11, "310910"

    const-string v12, "311012"

    const-string v13, "311110"

    const-string v14, "311270"

    const-string v15, "311271"

    const-string v16, "311272"

    const-string v17, "311273"

    const-string v18, "311274"

    const-string v19, "311275"

    const-string v20, "311276"

    const-string v21, "311277"

    const-string v22, "311278"

    const-string v23, "311279"

    const-string v24, "311280"

    const-string v25, "311281"

    const-string v26, "311282"

    const-string v27, "311283"

    const-string v28, "311284"

    const-string v29, "311285"

    const-string v30, "311286"

    const-string v31, "311287"

    const-string v32, "311288"

    const-string v33, "311289"

    const-string v34, "311390"

    const-string v35, "311480"

    const-string v36, "311481"

    const-string v37, "311482"

    const-string v38, "311483"

    const-string v39, "311484"

    const-string v40, "311485"

    const-string v41, "311486"

    const-string v42, "311487"

    const-string v43, "311488"

    const-string v44, "311489"

    const-string v45, "311590"

    const-string v46, "312770"

    filled-new-array/range {v1 .. v46}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VZW_OPERATOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;I)V
    .registers 29
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "transportType"    # I

    .line 323
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/Phone;I)V

    .line 166
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 167
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    .line 174
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    .line 178
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 182
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingEnabled:Z

    .line 183
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingSpecifiedNw:[Ljava/lang/String;

    .line 184
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    .line 185
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcUniqueSettingsForRoaming:Z

    .line 186
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    .line 188
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsAddMnoApnsIntoAllApnList:Z

    .line 191
    iput v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    .line 192
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mOldOperatorNumeric:Ljava/lang/String;

    .line 193
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    .line 194
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSimNotReady:Z

    .line 195
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsNotifyDataAttached:Z

    .line 196
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTurboSS:Lmediatek/telephony/MtkServiceState;

    .line 197
    iput v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMtuFromResource:I

    .line 198
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 199
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsRecordsOverride:Z

    .line 201
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;

    invoke-direct {v3, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;)V

    iput-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;

    .line 229
    const-string v4, "405840"

    const-string v5, "405854"

    const-string v6, "405855"

    const-string v7, "405856"

    const-string v8, "405857"

    const-string v9, "405858"

    const-string v10, "405859"

    const-string v11, "405860"

    const-string v12, "405861"

    const-string v13, "405862"

    const-string v14, "405863"

    const-string v15, "405864"

    const-string v16, "405865"

    const-string v17, "405866"

    const-string v18, "405867"

    const-string v19, "405868"

    const-string v20, "405869"

    const-string v21, "405870"

    const-string v22, "405871"

    const-string v23, "405872"

    const-string v24, "405873"

    const-string v25, "405874"

    filled-new-array/range {v4 .. v25}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_OP18:[Ljava/lang/String;

    .line 271
    const-string v4, "33402"

    const-string v5, "334020"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_TELCEL:[Ljava/lang/String;

    .line 272
    const-string v4, "50501"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_TELSTRA:[Ljava/lang/String;

    .line 273
    const-string v4, "23430"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_EE:[Ljava/lang/String;

    .line 274
    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->UNKNOWN:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    iput-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 277
    iput v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRilRat:I

    .line 278
    iput v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHandoverApnType:I

    .line 281
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;

    .line 282
    new-instance v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;

    invoke-direct {v4, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    iput-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsageProvider:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;

    .line 286
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    .line 287
    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 290
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mFastRetryAfterDisconnecting:Z

    .line 292
    new-instance v5, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;

    invoke-direct {v5, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    iput-object v5, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    .line 2402
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsFdnChecked:Z

    .line 2403
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    .line 2404
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    .line 2405
    new-instance v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$2;

    invoke-direct {v6, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$2;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    iput-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2887
    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPendingDataCall:Z

    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->reloadOpCustomizationFactory()V

    .line 327
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 329
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.mediatek.common.carrierexpress.operator_config_changed"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v6, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6, v5, v2, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 337
    .local v5, "currentTime":J
    new-instance v1, Landroid/net/NetworkStats;

    const/4 v7, 0x1

    invoke-direct {v1, v5, v6, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;

    .line 338
    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 339
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v7, "netstats"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/NetworkStatsManager;

    .line 341
    .local v1, "statsManager":Landroid/app/usage/NetworkStatsManager;
    iget-object v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    invoke-virtual {v1, v7, v4}, Landroid/app/usage/NetworkStatsManager;->registerNetworkStatsProvider(Ljava/lang/String;Landroid/net/netstats/provider/NetworkStatsProvider;)V

    .line 345
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createWorkerHandler()V

    .line 349
    iget-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 350
    invoke-virtual {v4, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 352
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 157
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 157
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanOrSetupDataConnByCheckFdn()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Landroid/net/NetworkStats;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 157
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 157
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onSubIdReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    .param p1, "x1"    # Z

    .line 157
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onWifiStateChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 157
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->reloadOpCustomizationFactory()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 157
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 157
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mOldOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 157
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onFdnChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 157
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
    .param p1, "x1"    # Landroid/os/Handler;

    .line 157
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private addVsimApnTypeToDefaultApnSetting()V
    .registers 36

    .line 3129
    move-object/from16 v0, p0

    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->isNonDsdaRemoteSimSupport()Z

    move-result v1

    if-eqz v1, :cond_b7

    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v1, :cond_b7

    .line 3130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b6

    .line 3131
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/ApnSetting;

    .line 3132
    .local v2, "apnSetting":Landroid/telephony/data/ApnSetting;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 3133
    new-instance v3, Lmediatek/telephony/data/MtkApnSetting;

    move-object v4, v3

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v5

    .line 3134
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v7

    .line 3135
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v9

    .line 3136
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v10

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v11

    .line 3137
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v13

    .line 3138
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v15

    .line 3139
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v16

    .line 3140
    move/from16 v34, v1

    .end local v1    # "i":I
    .local v34, "i":I
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    or-int/lit16 v1, v1, 0x1000

    move/from16 v17, v1

    .line 3141
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v18

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v19

    .line 3142
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v20

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v21

    .line 3143
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v22

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v23

    .line 3144
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result v24

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result v25

    .line 3145
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result v26

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v27

    .line 3146
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v28

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v29

    .line 3147
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v30

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getCarrierId()I

    move-result v31

    .line 3148
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result v32

    move-object v1, v2

    check-cast v1, Lmediatek/telephony/data/MtkApnSetting;

    iget v1, v1, Lmediatek/telephony/data/MtkApnSetting;->inactiveTimer:I

    move/from16 v33, v1

    invoke-direct/range {v4 .. v33}, Lmediatek/telephony/data/MtkApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;IIII)V

    move-object v1, v3

    .line 3150
    .end local v2    # "apnSetting":Landroid/telephony/data/ApnSetting;
    .local v1, "apnSetting":Landroid/telephony/data/ApnSetting;
    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    move/from16 v3, v34

    .end local v34    # "i":I
    .local v3, "i":I
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2

    .line 3132
    .end local v3    # "i":I
    .local v1, "i":I
    .restart local v2    # "apnSetting":Landroid/telephony/data/ApnSetting;
    :cond_b1
    move v3, v1

    .line 3130
    .end local v1    # "i":I
    .end local v2    # "apnSetting":Landroid/telephony/data/ApnSetting;
    .restart local v3    # "i":I
    :goto_b2
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_d

    :cond_b6
    move v3, v1

    .line 3154
    .end local v1    # "i":I
    :cond_b7
    return-void
.end method

.method private areAllDataDisconnectedExceptIms()Z
    .registers 10

    .line 1155
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 1156
    .local v1, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnContexts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1157
    .local v2, "aryApnType":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1158
    .local v3, "i":I
    array-length v4, v2

    if-lez v4, :cond_62

    .line 1159
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnContexts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1160
    .local v5, "apncontext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    .line 1161
    .local v6, "apnType":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApnType: apnType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1162
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v2, v3

    .line 1163
    nop

    .end local v5    # "apncontext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v6    # "apnType":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 1164
    goto :goto_2c

    .line 1165
    :cond_5b
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isImsOrEmergencyApn([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1166
    goto :goto_a

    .line 1169
    :cond_62
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isInactive()Z

    move-result v4

    if-nez v4, :cond_82

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "areAllDataDisconnectedExceptIms false due to DC: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1171
    const/4 v0, 0x0

    return v0

    .line 1173
    .end local v1    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v2    # "aryApnType":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_82
    goto :goto_a

    .line 1174
    :cond_83
    const/4 v0, 0x1

    return v0
.end method

.method private buildImsEimsApnSetting(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/data/ApnSetting;
    .registers 7
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "apnTypeBitmask"    # I

    .line 3978
    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    .line 3979
    invoke-virtual {v0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 3980
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 3981
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 3982
    invoke-virtual {v0, p2}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 3983
    invoke-virtual {v0, p3}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 3984
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 3985
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 3986
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 3987
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->buildWithoutCheck()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    .line 3978
    return-object v0
.end method

.method private checkDomesticDataRoamingEnabled()Z
    .registers 3

    .line 3050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDomesticDataRoamingEnabled: getDomesticDataRoamingFromSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3051
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticDataRoamingEnabledFromSettings()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDomesticRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3052
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDomesticRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3050
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3055
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticDataRoamingEnabledFromSettings()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDomesticRoaming()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0
.end method

.method private checkInternationalDataRoamingEnabled()Z
    .registers 3

    .line 3060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkInternationalDataRoamingEnabled: getInternationalDataRoamingFromSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3061
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getInternationalDataRoamingEnabledFromSettings()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isIntlRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3062
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3060
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3065
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getInternationalDataRoamingEnabledFromSettings()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0
.end method

.method private cleanOrSetupDataConnByCheckFdn()V
    .registers 10

    .line 2529
    const-string v0, "cleanOrSetupDataConnByCheckFdn()"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2532
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://icc/fdn/subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uriFdn":Landroid/net/Uri;
    goto :goto_33

    .line 2535
    .end local v0    # "uriFdn":Landroid/net/Uri;
    :cond_2d
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2537
    .restart local v0    # "uriFdn":Landroid/net/Uri;
    :goto_33
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2538
    .local v7, "cr":Landroid/content/ContentResolver;
    const-string v8, "number"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2540
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    .line 2541
    const/4 v2, 0x1

    if-eqz v1, :cond_91

    .line 2542
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsFdnChecked:Z

    .line 2543
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8e

    .line 2544
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 2546
    :cond_60
    nop

    .line 2547
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2546
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2548
    .local v3, "strFdnNumber":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strFdnNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2549
    const-string v4, "*99#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 2550
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    .line 2551
    goto :goto_8e

    .line 2553
    .end local v3    # "strFdnNumber":Ljava/lang/String;
    :cond_88
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_60

    .line 2556
    :cond_8e
    :goto_8e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2559
    :cond_91
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    if-eqz v3, :cond_a2

    .line 2560
    const-string v2, "match FDN for allow data, call setupDataOnAllConnectableApns()"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2561
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v3, "FdnDisabled"

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto :goto_ac

    .line 2564
    :cond_a2
    const-string v3, "not match FDN for allow data, call cleanUpAllConnections(REASON_FDN_ENABLED)"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2565
    const-string v3, "FdnEnabled"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    .line 2567
    :goto_ac
    return-void
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 1561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    .local v0, "mnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1563
    .local v1, "mvnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1564
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 1563
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 1566
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 1569
    :cond_1f
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v3

    .line 1571
    .local v3, "apn":Landroid/telephony/data/ApnSetting;
    if-nez v3, :cond_26

    .line 1572
    goto :goto_5b

    .line 1575
    :cond_26
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->hasMvnoParams()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1577
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1579
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v4

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isMvnoMatches(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1580
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 1583
    :cond_44
    if-eqz v2, :cond_5b

    .line 1584
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v4

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v5

    .line 1583
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1585
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 1590
    :cond_58
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    .end local v3    # "apn":Landroid/telephony/data/ApnSetting;
    :cond_5b
    :goto_5b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1596
    :cond_61
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1597
    move-object v3, v0

    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    goto :goto_85

    .line 1599
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    :cond_69
    move-object v3, v1

    .line 1601
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsAddMnoApnsIntoAllApnList:Z

    if-eqz v4, :cond_85

    .line 1602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnoApns="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1607
    :cond_85
    :goto_85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createApnList: X result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1608
    return-object v3
.end method

.method private createWorkerHandler()V
    .registers 2

    .line 2572
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    .line 2573
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$3;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$3;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;)V

    .line 2581
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2583
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_c
    return-void
.end method

.method private encodeInactiveTimer(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/ApnSetting;
    .registers 35
    .param p1, "apn"    # Landroid/telephony/data/ApnSetting;

    .line 3313
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_d

    .line 3314
    const-string v2, "encodeInactiveTimer apn is null"

    invoke-direct {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 3315
    const/4 v2, 0x0

    return-object v2

    .line 3318
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v2

    const/4 v3, 0x7

    if-gt v2, v3, :cond_c9

    .line 3319
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v2

    const/4 v3, -0x1

    if-ge v2, v3, :cond_1d

    goto/16 :goto_c9

    .line 3321
    :cond_1d
    instance-of v2, v1, Lmediatek/telephony/data/MtkApnSetting;

    if-eqz v2, :cond_e1

    .line 3322
    move-object v2, v1

    check-cast v2, Lmediatek/telephony/data/MtkApnSetting;

    iget v2, v2, Lmediatek/telephony/data/MtkApnSetting;->inactiveTimer:I

    const/4 v4, 0x0

    const v5, 0x1fffffff

    if-gez v2, :cond_2e

    move v5, v4

    goto :goto_3b

    .line 3323
    :cond_2e
    move-object v2, v1

    check-cast v2, Lmediatek/telephony/data/MtkApnSetting;

    iget v2, v2, Lmediatek/telephony/data/MtkApnSetting;->inactiveTimer:I

    if-le v2, v5, :cond_36

    .line 3324
    goto :goto_3b

    :cond_36
    move-object v2, v1

    check-cast v2, Lmediatek/telephony/data/MtkApnSetting;

    iget v5, v2, Lmediatek/telephony/data/MtkApnSetting;->inactiveTimer:I

    :goto_3b
    move v2, v5

    .line 3325
    .local v2, "inactTimer":I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v5

    if-ne v5, v3, :cond_4f

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 3326
    goto :goto_53

    :cond_4d
    const/4 v4, 0x3

    goto :goto_53

    .line 3327
    :cond_4f
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v4

    :goto_53
    shl-int/lit8 v3, v2, 0x3

    add-int/2addr v4, v3

    .local v4, "authType":I
    move/from16 v16, v4

    .line 3329
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v5

    .line 3330
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v7

    .line 3331
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v9

    .line 3332
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v11

    .line 3333
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v13

    .line 3334
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v15

    .line 3335
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v17

    .line 3336
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v19

    .line 3337
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v21

    .line 3338
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v23

    .line 3339
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result v25

    .line 3340
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result v26

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v27

    .line 3341
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v29

    .line 3342
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v30

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getCarrierId()I

    move-result v31

    .line 3343
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result v32

    .line 3329
    invoke-static/range {v5 .. v32}, Landroid/telephony/data/ApnSetting;->makeApnSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;III)Landroid/telephony/data/ApnSetting;

    move-result-object v3

    return-object v3

    .line 3320
    .end local v2    # "inactTimer":I
    .end local v4    # "authType":I
    :cond_c9
    :goto_c9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encodeInactiveTimer invalid authType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 3346
    :cond_e1
    return-object v1
.end method

.method private getDataRetryOperator()Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;
    .registers 5

    .line 3499
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3501
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3502
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 3505
    :cond_18
    if-eqz v0, :cond_7e

    .line 3506
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_TELCEL:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2e

    .line 3507
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3508
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELCEL:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v2

    .line 3506
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 3511
    .end local v1    # "i":I
    :cond_2e
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2f
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_TELSTRA:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_42

    .line 3512
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3513
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELSTRA:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v2

    .line 3511
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 3516
    .end local v1    # "i":I
    :cond_42
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_43
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_EE:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_56

    .line 3517
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 3518
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->EE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v2

    .line 3516
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 3521
    .end local v1    # "i":I
    :cond_56
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_57
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->KDDI_OPERATOR:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_6a

    .line 3522
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 3523
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->KDDI:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v2

    .line 3521
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 3526
    .end local v1    # "i":I
    :cond_6a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6b
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VZW_OPERATOR:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_7e

    .line 3527
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 3528
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->VZW:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v2

    .line 3526
    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 3533
    .end local v1    # "i":I
    :cond_7e
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->UNKNOWN:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v1
.end method

.method private getDomesticDataRoamingEnabledFromSettings()Z
    .registers 6

    .line 2823
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 2825
    .local v0, "phoneId":I
    const/4 v1, 0x0

    .line 2827
    .local v1, "isDomDataRoamingEnabled":Z
    :try_start_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "domestic_data_roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2828
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2827
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_24
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_24} :catch_2b

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    move v1, v2

    .line 2831
    goto :goto_40

    .line 2829
    :catch_2b
    move-exception v2

    .line 2830
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDomesticDataRoamingEnabled: SettingNofFoundException snfe="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2833
    .end local v2    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :goto_40
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    if-eqz v2, :cond_60

    .line 2834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDomesticDataRoamingEnabled: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isDomDataRoamingEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2837
    :cond_60
    return v1
.end method

.method private getDomesticRoamingEnabled()Z
    .registers 3

    .line 2678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDomesticRoamingEnabled: isDomesticRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDomesticRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bDomesticRoamingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2679
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticRoamingEnabledBySim()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2678
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2681
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDomesticRoaming()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticRoamingEnabledBySim()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0
.end method

.method private getDomesticRoamingEnabledBySim()Z
    .registers 4

    .line 3034
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingEnabled:Z

    if-eqz v0, :cond_1e

    .line 3035
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingSpecifiedNw:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 3036
    nop

    .line 3037
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3038
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 3037
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 3036
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3040
    :cond_1c
    const/4 v0, 0x1

    return v0

    .line 3042
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private getInternationalDataRoamingEnabledFromSettings()Z
    .registers 6

    .line 2841
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 2843
    .local v0, "phoneId":I
    const/4 v1, 0x1

    .line 2845
    .local v1, "isIntDataRoamingEnabled":Z
    :try_start_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "international_data_roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2846
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2845
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_24
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_24} :catch_2b

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    move v1, v2

    .line 2850
    goto :goto_40

    .line 2847
    :catch_2b
    move-exception v2

    .line 2848
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInternationalDataRoamingEnabled: SettingNofFoundException snfe="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2851
    .end local v2    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :goto_40
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    if-eqz v2, :cond_60

    .line 2852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInternationalDataRoamingEnabled: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isIntDataRoamingEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2855
    :cond_60
    return v1
.end method

.method private getIntlRoamingEnabled()Z
    .registers 3

    .line 2687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntlRoamingEnabled: isIntlRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bIntlRoamingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2690
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0
.end method

.method private getIsPcoAllowedDefault()Z
    .registers 2

    .line 3661
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v0, :cond_9

    .line 3662
    invoke-interface {v0}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->getIsPcoAllowedDefault()Z

    move-result v0

    return v0

    .line 3664
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method private getMtuFromResource()V
    .registers 8

    .line 2333
    const/4 v0, 0x0

    .line 2334
    .local v0, "resource":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2335
    .local v1, "operator":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2336
    .local v2, "mcc":I
    const/4 v3, 0x0

    .line 2338
    .local v3, "mnc":I
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_31

    .line 2340
    const/4 v4, 0x0

    :try_start_11
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 2341
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_26} :catch_28

    move v3, v4

    .line 2345
    goto :goto_31

    .line 2342
    :catch_28
    move-exception v4

    .line 2343
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2344
    const-string v5, "operator numeric is invalid"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2349
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_31
    :goto_31
    :try_start_31
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 2350
    .local v4, "configuration":Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    move-object v4, v5

    .line 2351
    iput v2, v4, Landroid/content/res/Configuration;->mcc:I

    .line 2354
    if-nez v3, :cond_4d

    const v5, 0xffff

    goto :goto_4e

    :cond_4d
    move v5, v3

    :goto_4e
    iput v5, v4, Landroid/content/res/Configuration;->mnc:I

    .line 2355
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v5

    .line 2356
    .local v5, "resc":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5e} :catch_60

    move-object v0, v6

    .line 2360
    .end local v4    # "configuration":Landroid/content/res/Configuration;
    .end local v5    # "resc":Landroid/content/Context;
    goto :goto_69

    .line 2357
    :catch_60
    move-exception v4

    .line 2358
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2359
    const-string v5, "getMtuFromResource fail"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2362
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_69
    if-eqz v0, :cond_9a

    .line 2363
    const v4, 0x10e008c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMtuFromResource:I

    .line 2365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMtuFromResource: mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mtu = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMtuFromResource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2368
    :cond_9a
    return-void
.end method

.method private getOperatorNumericFromImpi(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 3350
    const-string v0, "mcc"

    .line 3351
    .local v0, "mccTag":Ljava/lang/String;
    const-string v1, "mnc"

    .line 3352
    .local v1, "mncTag":Ljava/lang/String;
    const/4 v2, 0x3

    .line 3353
    .local v2, "mccLength":I
    const/4 v3, 0x3

    .line 3355
    .local v3, "mncLength":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getImpi()Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    :cond_f
    const-string v4, ""

    .line 3356
    .local v4, "strHexImpi":Ljava/lang/String;
    :goto_11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "getOperatorNumericFromImpi: no impi"

    if-nez v5, :cond_1d

    .line 3357
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3358
    return-object p1

    .line 3360
    :cond_1d
    const/4 v5, 0x0

    .line 3361
    .local v5, "impi":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->parseImpiToString([B)Ljava/lang/String;

    move-result-object v5

    .line 3362
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOperatorNumericFromImpi: impi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Landroid/os/Build;->IS_USER:Z

    if-eqz v8, :cond_37

    const-string v8, "xxx"

    goto :goto_38

    :cond_37
    move-object v8, v5

    :goto_38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3363
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 3364
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3365
    return-object p1

    .line 3367
    :cond_4c
    const-string v7, "mcc"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 3368
    .local v8, "mccPosition":I
    const-string v9, "mnc"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 3369
    .local v10, "mncPosition":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_c3

    if-ne v10, v11, :cond_5e

    goto :goto_c3

    .line 3373
    :cond_5e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v8

    .line 3374
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    .line 3373
    invoke-virtual {v5, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3374
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v10

    .line 3375
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x3

    .line 3374
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3376
    .local v7, "masterMccMnc":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getOperatorNumericFromImpi: masterMccMnc: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3377
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_ab

    .line 3378
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3379
    return-object p1

    .line 3381
    :cond_ab
    sget-object v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mImpiList:[Ljava/lang/String;

    array-length v9, v6

    const/4 v11, 0x0

    :goto_af
    if-ge v11, v9, :cond_c2

    aget-object v12, v6, v11

    .line 3382
    .local v12, "mccMnc":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_bf

    .line 3383
    const-string v6, "getOperatorNumericFromImpi: get operator from impi"

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3384
    return-object v7

    .line 3381
    .end local v12    # "mccMnc":Ljava/lang/String;
    :cond_bf
    add-int/lit8 v11, v11, 0x1

    goto :goto_af

    .line 3387
    :cond_c2
    return-object p1

    .line 3370
    .end local v7    # "masterMccMnc":Ljava/lang/String;
    :cond_c3
    :goto_c3
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3371
    return-object p1
.end method

.method private handlePcoDataAfterAttached(Landroid/os/AsyncResult;)V
    .registers 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2245
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v0, :cond_b

    .line 2246
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->handlePcoDataAfterAttached(Landroid/os/AsyncResult;Lcom/android/internal/telephony/Phone;Ljava/util/ArrayList;)V

    .line 2248
    :cond_b
    return-void
.end method

.method private hasOperatorIaCapability()Z
    .registers 4

    .line 2927
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 2928
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 2929
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    .line 2930
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasOperatorIaCapability()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    .line 2931
    const-string v0, "hasOpIaCapability: true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2932
    return v2

    .line 2934
    :cond_20
    return v1
.end method

.method private ignoreDataAllow(Ljava/lang/String;)Z
    .registers 4
    .param p1, "apnType"    # Ljava/lang/String;

    .line 2660
    const/4 v0, 0x0

    .line 2661
    .local v0, "ignoreDataAllow":Z
    const-string v1, "ims"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2662
    const/4 v0, 0x1

    .line 2666
    :cond_a
    if-nez v0, :cond_1a

    const-string v1, "vsim"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2667
    const-string v1, "Vsim is enabled, set ignoreDataAllow as true"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2668
    const/4 v0, 0x1

    .line 2671
    :cond_1a
    return v0
.end method

.method private ignoreDataRoaming(Ljava/lang/String;)Z
    .registers 8
    .param p1, "apnType"    # Ljava/lang/String;

    .line 2598
    const/4 v0, 0x0

    .line 2599
    .local v0, "ignoreDataRoaming":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v1

    .line 2602
    .local v1, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    :try_start_5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->ignoreDataRoaming(Ljava/lang/String;)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_d

    move v0, v2

    .line 2606
    goto :goto_16

    .line 2603
    :catch_d
    move-exception v2

    .line 2604
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "get ignoreDataRoaming fail!"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2605
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2608
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_16
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP156:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2609
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    check-cast v2, Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v2}, Lmediatek/telephony/MtkServiceState;->getIwlanRegState()I

    move-result v2

    .line 2610
    .local v2, "iwlanRegState":I
    if-nez v2, :cond_34

    const/4 v3, 0x1

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    .line 2611
    .local v3, "isOverEpdg":Z
    :goto_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignoreDataRoaming: OP156 check apnType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Epdg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2612
    if-eqz v3, :cond_64

    const-string v4, "mms"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 2613
    const-string v4, "xcap"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 2614
    :cond_63
    const/4 v0, 0x1

    .line 2618
    .end local v2    # "iwlanRegState":I
    .end local v3    # "isOverEpdg":Z
    :cond_64
    if-eqz v0, :cond_83

    .line 2619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoreDataRoaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", apnType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_aa

    .line 2621
    :cond_83
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2622
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getVsimCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    move-result-object v2

    .line 2623
    .local v2, "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    sget-object v3, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->REMOTE_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-ne v2, v3, :cond_98

    .line 2624
    const/4 v0, 0x1

    .line 2625
    const-string v3, "RSim, set ignoreDataRoaming as true for any apn type"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    goto :goto_aa

    .line 2626
    :cond_98
    const-string v3, "vsim"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_aa

    sget-object v3, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-ne v2, v3, :cond_aa

    .line 2628
    const/4 v0, 0x1

    .line 2629
    const-string v3, "Aka sim and soft sim, set ignoreDataRoaming as true for vsim type"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2633
    .end local v2    # "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    :cond_aa
    :goto_aa
    return v0
.end method

.method private ignoreDefaultDataUnselected(Ljava/lang/String;)Z
    .registers 5
    .param p1, "apnType"    # Ljava/lang/String;

    .line 2637
    const/4 v0, 0x0

    .line 2640
    .local v0, "ignoreDefaultDataUnselected":Z
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->ignoreDefaultDataUnselected(Ljava/lang/String;)Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 2644
    goto :goto_12

    .line 2641
    :catch_9
    move-exception v1

    .line 2642
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "get ignoreDefaultDataUnselected fail!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2643
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2646
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_12
    if-eqz v0, :cond_30

    .line 2647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoreDefaultDataUnselected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", apnType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2651
    :cond_30
    if-nez v0, :cond_40

    .line 2652
    const-string v1, "vsim"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2653
    const-string v1, "Vsim is enabled, set ignoreDefaultDataUnselected as true"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2654
    const/4 v0, 0x1

    .line 2656
    :cond_40
    return v0
.end method

.method private isDataAllowedAsOff(Ljava/lang/String;)Z
    .registers 6
    .param p1, "apnType"    # Ljava/lang/String;

    .line 2788
    const/4 v0, 0x0

    .line 2789
    .local v0, "isDataAllowedAsOff":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v1

    .line 2791
    .local v1, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v2, :cond_d

    .line 2792
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->isDataAllowedAsOff(Ljava/lang/String;)Z

    move-result v0

    .line 2796
    :cond_d
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    if-eqz v2, :cond_42

    .line 2798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDataAllowedAsOff: getDataRoamingEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bIsInternationalRoaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2799
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2798
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2802
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2804
    const/4 v0, 0x1

    .line 2809
    :cond_42
    if-nez v0, :cond_62

    const-string v2, "vsim"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2810
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2811
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getVsimCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    move-result-object v2

    .line 2812
    .local v2, "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->isUserDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 2813
    const-string v3, "Vsim is enabled, set isDataAllowedAsOff true"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2814
    const/4 v0, 0x1

    .line 2818
    .end local v2    # "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    :cond_62
    return v0
.end method

.method private isDataAllowedExt(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 7
    .param p1, "dataConnectionReasons"    # Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2256
    const/4 v0, 0x0

    if-nez p2, :cond_9

    .line 2257
    const-string v1, "isDataAllowedExt: apnContext is null, return false"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2258
    return v0

    .line 2260
    :cond_9
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 2263
    .local v1, "apnType":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_LOCATED_PLMN_CHANGED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2265
    const-string v2, "isDataAllowedExt: located plmn changed, setSetupDataPendingFlag"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2266
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPendingDataCall:Z

    .line 2267
    return v0

    .line 2271
    :cond_1e
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2273
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->ignoreDefaultDataUnselected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2274
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_35

    .line 2277
    :cond_34
    return v0

    .line 2281
    :cond_35
    :goto_35
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 2283
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->ignoreDataRoaming(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 2285
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_4b

    .line 2289
    :cond_4a
    return v0

    .line 2286
    :cond_4b
    :goto_4b
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2293
    :cond_52
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 2295
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->ignoreDataAllow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 2296
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_69

    .line 2299
    :cond_68
    return v0

    .line 2304
    :cond_69
    :goto_69
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_NON_VSIM_PDN_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 2306
    const-string v2, "vsim"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 2307
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_NON_VSIM_PDN_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_82

    .line 2310
    :cond_81
    return v0

    .line 2315
    :cond_82
    :goto_82
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_FDN_ENABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 2317
    const-string v2, "emergency"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 2318
    const-string v2, "ims"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    goto :goto_9c

    .line 2323
    :cond_9b
    return v0

    .line 2319
    :cond_9c
    :goto_9c
    const-string v0, "isDataAllowedExt allow IMS/EIMS for reason FDN_ENABLED"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2320
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_FDN_ENABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2327
    :cond_a8
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    if-eqz v0, :cond_c4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataAllowedExt: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2329
    :cond_c4
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v0

    return v0
.end method

.method private isDataAllowedForRoamingFeature(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)V
    .registers 4
    .param p1, "dataConnectionReasons"    # Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;

    .line 3186
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3190
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3192
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3196
    :cond_15
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRoamingTypeAllowed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3197
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 3201
    :cond_20
    return-void
.end method

.method private isDataRetryRestrictEnabled()Z
    .registers 3

    .line 3537
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELCEL:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELSTRA:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->EE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->KDDI:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->VZW:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    if-ne v0, v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method

.method private isDataRoamingTypeAllowed()Z
    .registers 6

    .line 2859
    const/4 v0, 0x0

    .line 2861
    .local v0, "isDataRoamingTypeAllowed":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 2863
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticDataRoamingEnabledFromSettings()Z

    move-result v1

    .line 2864
    .local v1, "bDomDataOnRoamingEnabled":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getInternationalDataRoamingEnabledFromSettings()Z

    move-result v2

    .line 2866
    .local v2, "bIntDataOnRoamingEnabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDataRoamingTypeAllowed bDomDataOnRoamingEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bIntDataOnRoamingEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", getDataRoaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2868
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", currentRoamingType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2869
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mUserDataEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 2870
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2866
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2873
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-eqz v3, :cond_7c

    if-eqz v1, :cond_71

    .line 2874
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDomesticRoaming()Z

    move-result v3

    if-nez v3, :cond_7c

    :cond_71
    if-eqz v2, :cond_7a

    .line 2875
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v3

    if-eqz v3, :cond_7a

    goto :goto_7c

    .line 2878
    :cond_7a
    const/4 v0, 0x0

    goto :goto_7d

    .line 2876
    :cond_7c
    :goto_7c
    const/4 v0, 0x1

    .line 2881
    .end local v1    # "bDomDataOnRoamingEnabled":Z
    .end local v2    # "bIntDataOnRoamingEnabled":Z
    :cond_7d
    :goto_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataRoamingTypeAllowed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2882
    return v0
.end method

.method private isDomesticRoaming()Z
    .registers 3

    .line 2694
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private isFdnEnableSupport()Z
    .registers 3

    .line 2437
    const/4 v0, 0x0

    .line 2438
    .local v0, "isFdnEnableSupport":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v1, :cond_9

    .line 2439
    invoke-interface {v1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->isFdnEnableSupport()Z

    move-result v0

    .line 2441
    :cond_9
    return v0
.end method

.method private isFdnEnabled()Z
    .registers 8

    .line 2445
    const/4 v0, 0x0

    .line 2446
    .local v0, "bFdnEnabled":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isFdnEnableSupport()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 2447
    nop

    .line 2448
    const-string v1, "phoneEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2447
    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 2449
    .local v1, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v1, :cond_b1

    .line 2451
    :try_start_14
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isFdnEnabled(I)Z

    move-result v2

    move v0, v2

    .line 2452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFdnEnabled(), bFdnEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2453
    if-eqz v0, :cond_99

    .line 2454
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsFdnChecked:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_54

    .line 2455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFdnEnabled(), match FDN for allow data = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2457
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    xor-int/2addr v2, v3

    return v2

    .line 2459
    :cond_54
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isPhbReady(I)Z

    move-result v2

    .line 2460
    .local v2, "bPhbReady":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFdnEnabled(), bPhbReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2461
    if-eqz v2, :cond_7d

    .line 2462
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;

    const v4, 0x42208

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_98

    .line 2464
    :cond_7d
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    if-nez v4, :cond_98

    .line 2465
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 2466
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "mediatek.intent.action.PHB_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2467
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2469
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    .line 2471
    .end local v2    # "bPhbReady":Z
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_98
    :goto_98
    goto :goto_b0

    .line 2472
    :cond_99
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    if-eqz v2, :cond_b0

    .line 2473
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    .line 2474
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_ab} :catch_ac

    goto :goto_b0

    .line 2476
    :catch_ac
    move-exception v2

    .line 2477
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2478
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_b0
    :goto_b0
    goto :goto_b6

    .line 2480
    :cond_b1
    const-string v2, "isFdnEnabled(), get telephonyEx failed!!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2483
    .end local v1    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :cond_b6
    :goto_b6
    return v0
.end method

.method private isIntlRoaming()Z
    .registers 3

    .line 2699
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private isLocatedPlmnChanged()Z
    .registers 3

    .line 2895
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 2896
    const/4 v0, 0x0

    return v0

    .line 2898
    :cond_b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 2899
    .local v0, "sst":Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->willLocatedPlmnChange()Z

    move-result v1

    return v1
.end method

.method private isMvnoMatches(ILjava/lang/String;)Z
    .registers 9
    .param p1, "mvnoType"    # I
    .param p2, "mvnoMatchData"    # Ljava/lang/String;

    .line 3438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mvnoMatchData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3439
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    if-nez p1, :cond_6f

    .line 3440
    const/4 v4, 0x0

    .line 3441
    .local v4, "strHexSpn":Ljava/lang/String;
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    if-ne v5, v3, :cond_29

    .line 3442
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v5, :cond_28

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmSpn()Ljava/lang/String;

    move-result-object v2

    .end local v4    # "strHexSpn":Ljava/lang/String;
    .local v2, "strHexSpn":Ljava/lang/String;
    :cond_28
    goto :goto_31

    .line 3444
    .end local v2    # "strHexSpn":Ljava/lang/String;
    .restart local v4    # "strHexSpn":Ljava/lang/String;
    :cond_29
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v5, :cond_31

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaSpn()Ljava/lang/String;

    move-result-object v2

    .line 3446
    .end local v4    # "strHexSpn":Ljava/lang/String;
    .restart local v2    # "strHexSpn":Ljava/lang/String;
    :cond_31
    :goto_31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_38

    .line 3447
    return v1

    .line 3449
    :cond_38
    const/4 v4, 0x0

    .line 3450
    .local v4, "strSpn":Ljava/lang/String;
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    if-ne v5, v3, :cond_47

    .line 3451
    nop

    .line 3452
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 3451
    invoke-static {v3, v0}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->parseSpnToString(I[B)Ljava/lang/String;

    move-result-object v0

    .end local v4    # "strSpn":Ljava/lang/String;
    .local v0, "strSpn":Ljava/lang/String;
    goto :goto_50

    .line 3454
    .end local v0    # "strSpn":Ljava/lang/String;
    .restart local v4    # "strSpn":Ljava/lang/String;
    :cond_47
    nop

    .line 3455
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 3454
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->parseSpnToString(I[B)Ljava/lang/String;

    move-result-object v0

    .line 3457
    .end local v4    # "strSpn":Ljava/lang/String;
    .restart local v0    # "strSpn":Ljava/lang/String;
    :goto_50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strSpn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3458
    if-eqz v0, :cond_6d

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 3459
    return v3

    .line 3461
    .end local v0    # "strSpn":Ljava/lang/String;
    .end local v2    # "strHexSpn":Ljava/lang/String;
    :cond_6d
    goto/16 :goto_112

    :cond_6f
    if-ne p1, v3, :cond_94

    .line 3462
    const/4 v0, 0x0

    .line 3463
    .local v0, "strImsi":Ljava/lang/String;
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    if-ne v4, v3, :cond_80

    .line 3464
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v4, :cond_7e

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmImsi()Ljava/lang/String;

    move-result-object v2

    :cond_7e
    move-object v0, v2

    goto :goto_89

    .line 3466
    :cond_80
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v4, :cond_88

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaImsi()Ljava/lang/String;

    move-result-object v2

    :cond_88
    move-object v0, v2

    .line 3468
    :goto_89
    if-eqz v0, :cond_92

    invoke-static {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 3469
    return v3

    .line 3471
    .end local v0    # "strImsi":Ljava/lang/String;
    :cond_92
    goto/16 :goto_112

    :cond_94
    if-ne p1, v0, :cond_cb

    .line 3472
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGid1()Ljava/lang/String;

    move-result-object v2

    :cond_9e
    move-object v0, v2

    .line 3473
    .local v0, "gid1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gid1="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3474
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 3475
    .local v2, "mvno_match_data_length":I
    if-eqz v0, :cond_ca

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v2, :cond_ca

    .line 3476
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 3477
    return v3

    .line 3479
    .end local v0    # "gid1":Ljava/lang/String;
    .end local v2    # "mvno_match_data_length":I
    :cond_ca
    goto :goto_112

    :cond_cb
    const/4 v0, 0x3

    if-ne p1, v0, :cond_d9

    .line 3480
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getIccid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->iccidMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 3481
    return v3

    .line 3483
    :cond_d9
    const/4 v0, 0x4

    if-ne p1, v0, :cond_112

    .line 3484
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v0, :cond_e4

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getPnn()Ljava/lang/String;

    move-result-object v2

    :cond_e4
    move-object v0, v2

    .line 3485
    .local v0, "strHexPnn":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_ec

    .line 3486
    return v1

    .line 3488
    :cond_ec
    const/4 v2, 0x0

    .line 3489
    .local v2, "strPnn":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/uicc/MtkIccUtilsEx;->parsePnnToString([B)Ljava/lang/String;

    move-result-object v2

    .line 3490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strPnn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3491
    if-eqz v2, :cond_112

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_112

    .line 3492
    return v3

    .line 3495
    .end local v0    # "strHexPnn":Ljava/lang/String;
    .end local v2    # "strPnn":Ljava/lang/String;
    :cond_112
    :goto_112
    return v1
.end method

.method private isOp18Sim()Z
    .registers 5

    .line 2914
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2916
    .local v0, "operator":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 2917
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->MCCMNC_OP18:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_19

    .line 2918
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2919
    const/4 v2, 0x1

    return v2

    .line 2917
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2923
    .end local v1    # "i":I
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method private isPlmnMvnoChanged(Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;)Z
    .registers 6
    .param p1, "oldValue"    # Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;
    .param p2, "newValue"    # Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    .line 4022
    const/4 v0, 0x1

    if-eqz p1, :cond_8a

    if-nez p2, :cond_7

    goto/16 :goto_8a

    .line 4026
    :cond_7
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 4027
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 4028
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmSpn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmSpn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 4029
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaSpn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaSpn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 4030
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmImsi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 4031
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaImsi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 4032
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGid1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGid1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 4033
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getPnn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getPnn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 4034
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getImpi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getImpi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_86

    goto :goto_88

    :cond_86
    const/4 v0, 0x0

    goto :goto_89

    :cond_88
    :goto_88
    nop

    .line 4026
    :goto_89
    return v0

    .line 4023
    :cond_8a
    :goto_8a
    return v0
.end method

.method private isUniqueRoamingFeatureEnabled()Z
    .registers 3

    .line 3843
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcUniqueSettingsForRoaming:Z

    if-eqz v0, :cond_16

    .line 3844
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 3843
    :goto_17
    return v0
.end method

.method static synthetic lambda$initApnContexts$0(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I
    .registers 4
    .param p0, "c1"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p1, "c2"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 555
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getPriority()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$setInitialAttachApn$2(ILandroid/telephony/data/ApnSetting;)Z
    .registers 3
    .param p0, "allowedApnType"    # I
    .param p1, "apn"    # Landroid/telephony/data/ApnSetting;

    .line 1228
    invoke-virtual {p1, p0}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$setInitialAttachApn$3(ILandroid/telephony/data/ApnSetting;)Z
    .registers 4
    .param p0, "preferredApnSetId"    # I
    .param p1, "apn"    # Landroid/telephony/data/ApnSetting;

    .line 1229
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v0

    if-eq v0, p0, :cond_10

    .line 1230
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 1229
    :goto_11
    return v0
.end method

.method static synthetic lambda$sortApnContextByPriority$1(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I
    .registers 4
    .param p0, "c1"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p1, "c2"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 589
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getPriority()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDct"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDct"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDct"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDct"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkDct"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    return-void
.end method

.method private makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 3589
    const/4 v0, 0x0

    .line 3591
    .local v0, "inactiveTimer":I
    :try_start_1
    const-string v1, "inactive_timer"

    .line 3592
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 3591
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move v0, v1

    .line 3593
    if-eqz v0, :cond_22

    .line 3594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeApnSetting: inactive_timer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_22} :catch_23

    .line 3598
    :cond_22
    goto :goto_24

    .line 3596
    :catch_23
    move-exception v1

    .line 3601
    :goto_24
    invoke-static {p1, v0}, Lmediatek/telephony/data/MtkApnSetting;->makeApnSetting(Landroid/database/Cursor;I)Landroid/telephony/data/ApnSetting;

    move-result-object v1

    return-object v1
.end method

.method private notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;ILjava/lang/String;)V
    .registers 10
    .param p1, "ddcId"    # I
    .param p2, "state"    # Lcom/android/internal/telephony/DctConstants$State;
    .param p3, "dataInfo"    # Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    .param p4, "failCause"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 3233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDedicateDataConnection ddcId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.intent.action.ACTION_ANY_DEDICATE_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3238
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "DdcId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3242
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3243
    const-string v1, "cause"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3247
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3248
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3250
    return-void
.end method

.method private notifyVoiceCallEventToDataConnection(Z)V
    .registers 5
    .param p1, "bInVoiceCall"    # Z

    .line 3025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVoiceCallEventToDataConnection: bInVoiceCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 3026
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 3027
    .local v1, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->notifyVoiceCallEvent(Z)V

    .line 3028
    .end local v1    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    goto :goto_1e

    .line 3029
    :cond_31
    return-void
.end method

.method private onApnChangedDone()V
    .registers 4

    .line 2383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onApnChangedDone: subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", default data subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2383
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2387
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    const-string v2, "apnChanged"

    if-ne v0, v1, :cond_3a

    .line 2388
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto :goto_56

    .line 2390
    :cond_3a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2391
    .local v0, "apnContextDefault":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 2392
    const-string v1, "Temp data switch is active , call setupDataOnAllConnectableApns()"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2393
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 2396
    .end local v0    # "apnContextDefault":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_56
    :goto_56
    return-void
.end method

.method private onDedecatedBearerActivated(Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;)V
    .registers 9
    .param p1, "dataResponse"    # Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    .line 3206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDedecatedBearerActivated, dataInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3207
    iget v2, p1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mCid:I

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v5, 0x0

    const-string v6, "activation"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;ILjava/lang/String;)V

    .line 3210
    return-void
.end method

.method private onDedecatedBearerDeactivated(I)V
    .registers 9
    .param p1, "cid"    # I

    .line 3221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDedecatedBearerDeactivated, Cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3222
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "deactivation"

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;ILjava/lang/String;)V

    .line 3225
    return-void
.end method

.method private onDedecatedBearerModified(Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;)V
    .registers 9
    .param p1, "dataResponse"    # Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    .line 3214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDedecatedBearerModified, dataInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3215
    iget v2, p1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->mCid:I

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v5, 0x0

    const-string v6, "modification"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;ILjava/lang/String;)V

    .line 3218
    return-void
.end method

.method private onFdnChanged()V
    .registers 7

    .line 2487
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isFdnEnableSupport()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 2488
    const-string v0, "onFdnChanged()"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2489
    const/4 v0, 0x0

    .line 2490
    .local v0, "bFdnEnabled":Z
    const/4 v1, 0x0

    .line 2492
    .local v1, "bPhbReady":Z
    nop

    .line 2493
    const-string v2, "phoneEx"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2492
    invoke-static {v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 2494
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v2, :cond_52

    .line 2496
    :try_start_1a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isFdnEnabled(I)Z

    move-result v3

    move v0, v3

    .line 2497
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isPhbReady(I)Z

    move-result v3

    move v1, v3

    .line 2498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFdnChanged(), bFdnEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bPhbReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_4c} :catch_4d

    goto :goto_51

    .line 2500
    :catch_4d
    move-exception v3

    .line 2501
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2502
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_51
    goto :goto_57

    .line 2504
    :cond_52
    const-string v3, "onFdnChanged(), get telephonyEx failed!!"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2507
    :goto_57
    if-eqz v1, :cond_76

    .line 2508
    if-eqz v0, :cond_69

    .line 2509
    const-string v3, "fdn enabled, check fdn list"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2510
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;

    const v4, 0x42208

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_92

    .line 2512
    :cond_69
    const-string v3, "fdn disabled, call setupDataOnAllConnectableApns()"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2513
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v4, "FdnDisabled"

    invoke-virtual {p0, v4, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto :goto_92

    .line 2516
    :cond_76
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    if-nez v3, :cond_92

    .line 2517
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2518
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "mediatek.intent.action.PHB_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2519
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2521
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    .line 2523
    .end local v0    # "bFdnEnabled":Z
    .end local v1    # "bPhbReady":Z
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_92
    :goto_92
    goto :goto_98

    .line 2524
    :cond_93
    const-string v0, "not support fdn enabled, skip onFdnChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2526
    :goto_98
    return-void
.end method

.method private onNetworkRejectReceived(Landroid/os/AsyncResult;)V
    .registers 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3554
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_74

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_9

    goto :goto_74

    .line 3565
    :cond_9
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 3566
    .local v0, "ints":[I
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_17

    .line 3567
    const-string v1, "onNetworkRejectReceived urc format error"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 3568
    return-void

    .line 3570
    :cond_17
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 3571
    .local v1, "emm_cause":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 3572
    .local v2, "esm_cause":I
    const/4 v3, 0x2

    aget v3, v0, v3

    .line 3573
    .local v3, "event":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNetworkRejectReceived emm_cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", esm_cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", event_type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3576
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.mediatek.intent.action.ACTION_NETWORK_REJECT_CAUSE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3577
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 3578
    const/high16 v5, 0x20000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3579
    const-string v5, "emmCause"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3580
    const-string v5, "esmCause"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3581
    const-string v5, "rejectEventType"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3583
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_79

    .line 3555
    .end local v0    # "ints":[I
    .end local v1    # "emm_cause":I
    .end local v2    # "esm_cause":I
    .end local v3    # "event":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_74
    :goto_74
    const-string v0, "onNetworkRejectReceived exception"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 3585
    :goto_79
    return-void
.end method

.method private onProcessPendingSetupData()V
    .registers 3

    .line 2903
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "resumePendingData"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 2905
    return-void
.end method

.method private onRoamingTypeChanged()V
    .registers 10

    .line 2704
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v0

    .line 2705
    .local v0, "bDataOnRoamingEnabled":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v1

    .line 2706
    .local v1, "bUserDataEnabled":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticRoamingEnabledBySim()Z

    move-result v2

    .line 2707
    .local v2, "bDomesticSpecialSim":Z
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    .line 2708
    .local v3, "bIntlSpecialSim":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v4

    .line 2709
    .local v4, "bDomAndIntRoamingFeatureEnabled":Z
    const/4 v5, 0x0

    .line 2712
    .local v5, "trySetup":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRoamingTypeChanged: bDataOnRoamingEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bUserDataEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bDomesticSpecialSim = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bIntlSpecialSim = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bDomAndIntRoamingFeatureEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bOneSettingForRoamingFeatureEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", roamingType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2718
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2712
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2722
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v6

    if-nez v6, :cond_77

    .line 2723
    const-string v6, "onRoamingTypeChanged: device is not roaming. ignored the request."

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2724
    return-void

    .line 2730
    :cond_77
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_8d

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    if-ne v6, v7, :cond_8d

    .line 2731
    const v6, 0x42200

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onDataRoamingOnOrSettingsChanged(I)V

    .line 2732
    return-void

    .line 2736
    :cond_8d
    if-nez v2, :cond_99

    if-nez v3, :cond_99

    if-nez v4, :cond_99

    .line 2737
    const-string v6, "onRoamingTypeChanged: is not specific SIM. ignored the request."

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2738
    return-void

    .line 2743
    :cond_99
    if-eqz v4, :cond_ac

    .line 2744
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->checkDomesticDataRoamingEnabled()Z

    move-result v6

    if-nez v6, :cond_aa

    .line 2745
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->checkInternationalDataRoamingEnabled()Z

    move-result v6

    if-eqz v6, :cond_a8

    goto :goto_aa

    .line 2748
    :cond_a8
    const/4 v5, 0x0

    goto :goto_dc

    .line 2746
    :cond_aa
    :goto_aa
    const/4 v5, 0x1

    goto :goto_dc

    .line 2750
    :cond_ac
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDomesticRoaming()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_c2

    .line 2751
    if-eqz v2, :cond_bb

    .line 2752
    if-eqz v1, :cond_b9

    .line 2753
    const/4 v5, 0x1

    goto :goto_dc

    .line 2755
    :cond_b9
    const/4 v5, 0x0

    goto :goto_dc

    .line 2759
    :cond_bb
    if-eqz v1, :cond_c0

    if-eqz v0, :cond_c0

    move v8, v7

    :cond_c0
    move v5, v8

    goto :goto_dc

    .line 2761
    :cond_c2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isIntlRoaming()Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 2762
    if-eqz v3, :cond_d0

    .line 2763
    if-eqz v0, :cond_ce

    .line 2764
    const/4 v5, 0x1

    goto :goto_dc

    .line 2766
    :cond_ce
    const/4 v5, 0x0

    goto :goto_dc

    .line 2770
    :cond_d0
    if-eqz v1, :cond_d5

    if-eqz v0, :cond_d5

    move v8, v7

    :cond_d5
    move v5, v8

    goto :goto_dc

    .line 2773
    :cond_d7
    const-string v6, "onRoamingTypeChanged error: unexpected roaming type"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 2776
    :goto_dc
    const-string v6, "roamingOn"

    if-eqz v5, :cond_eb

    .line 2777
    const-string v7, "onRoamingTypeChanged: setup data on roaming"

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2778
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto :goto_f3

    .line 2780
    :cond_eb
    const-string v8, "onRoamingTypeChanged: Tear down data connection on roaming."

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2781
    invoke-virtual {p0, v7, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    .line 2783
    :goto_f3
    return-void
.end method

.method private onSubIdReady()V
    .registers 6

    .line 2202
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->updatePhoneType()Z

    .line 2203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubIdReady mPhoneType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [1:GSM,2:CDMA]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2207
    .local v0, "operatorNumeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2208
    const-string v1, "onSubIdReady: empty operator numeric, return"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2209
    return-void

    .line 2213
    :cond_2e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isCdma3GDualModeCard(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_70

    .line 2214
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isAnyDataConnected()Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 2215
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_70

    .line 2216
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2217
    .local v1, "numeric":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_70

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    .line 2218
    const-string v4, "CDMA 3G dual mode card numeric change, clean up."

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2219
    const-string v4, "apnChanged"

    invoke-virtual {p0, v2, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    .line 2224
    .end local v1    # "numeric":Ljava/lang/String;
    :cond_70
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsFdnChecked:Z

    .line 2225
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSimNotReady:Z

    .line 2228
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRetryOperator()Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataRetryOperator:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 2229
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRetryRestrictEnabled()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 2230
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setRemoveRestrictEutranMode(ZLandroid/os/Message;)V

    .line 2234
    :cond_8a
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getMtuFromResource()V

    .line 2236
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createAllApnList()V

    .line 2237
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataProfilesAsNeeded()V

    .line 2238
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    .line 2239
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sortApnContextByPriority()V

    .line 2240
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v2, "simLoaded"

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 2241
    return-void
.end method

.method private onTearDownPdnByApnId(I)V
    .registers 5
    .param p1, "apnId"    # I

    .line 3704
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 3705
    return-void
.end method

.method private onWifiStateChanged(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 2978
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 2979
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    const/4 v1, 0x0

    if-nez v0, :cond_9

    move v2, v1

    goto :goto_13

    .line 2980
    :cond_9
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v2

    :goto_13
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    .line 2982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWifiStateChanged, wifi enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mInVoiceCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsSupportConcurrent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2986
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    if-eqz v2, :cond_74

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isAnyDataConnected()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 2987
    if-nez p1, :cond_5e

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    if-nez v2, :cond_5e

    .line 2988
    const-string v1, "onWifiStateChanged: wifi disabled and not support concurrent"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2989
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopNetStatPoll()V

    .line 2990
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopDataStallAlarm()V

    .line 2991
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyVoiceCallEventToDataConnection(Z)V

    goto :goto_74

    .line 2992
    :cond_5e
    if-eqz p1, :cond_74

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    if-eqz v2, :cond_74

    .line 2993
    const-string v2, "onWifiStateChanged: wifi enabled and support concurrent"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2994
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startNetStatPoll()V

    .line 2995
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startDataStallAlarm(Z)V

    .line 2996
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyVoiceCallEventToDataConnection(Z)V

    .line 2999
    :cond_74
    :goto_74
    return-void
.end method

.method private preCheckCpaDcTrackerInstance()Z
    .registers 5

    .line 4126
    const/4 v0, 0x1

    .line 4127
    .local v0, "ret":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4128
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 4127
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 4129
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    if-nez v1, :cond_3f

    .line 4130
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDcTrackerInstance()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 4131
    if-nez v1, :cond_26

    .line 4132
    const-string v1, "[CpaDct]can\'t mCpaDcTracker!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4133
    const/4 v0, 0x0

    goto :goto_3f

    .line 4135
    :cond_26
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_3f

    .line 4136
    const-string v1, "[CpaDct]mCpaDcTracker\'s phone id not match!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4137
    const/4 v0, 0x0

    goto :goto_3f

    .line 4142
    :cond_39
    const-string v1, "[CpaDct]not support CPA mode!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logv(Ljava/lang/String;)V

    .line 4143
    const/4 v0, 0x0

    .line 4145
    :cond_3f
    :goto_3f
    return v0
.end method

.method private readAddOnConfiguration()V
    .registers 6

    .line 3254
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3255
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3256
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 3258
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1b

    .line 3259
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 3261
    :cond_1b
    if-eqz v1, :cond_af

    .line 3262
    const-string v2, "mtk_domestic_roaming_enabled_only_by_mobile_data_setting"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingEnabled:Z

    .line 3264
    const-string v2, "mtk_domestic_roaming_enabled_only_by_mobile_data_setting_check_nw_plmn"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingSpecifiedNw:[Ljava/lang/String;

    .line 3266
    const-string v2, "mtk_intl_roaming_enabled_only_by_roaming_data_setting"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    .line 3271
    const-string v2, "mtk_unique_settings_for_domestic_and_intl_roaming"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcUniqueSettingsForRoaming:Z

    .line 3276
    const-string v2, "mtk_one_setting_for_domestic_and_intl_roaming_data"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    .line 3278
    const-string v2, "mtk_key_add_mnoapns_into_allapnlist"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsAddMnoApnsIntoAllApnList:Z

    .line 3281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAddOnConfiguration: DomesticRoamingEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", SpecifiedNw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcDomesticRoamingSpecifiedNw:[Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_68

    move v3, v4

    goto :goto_69

    :cond_68
    const/4 v3, 0x0

    :goto_69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", IntlRoamingEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcIntlRoamingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", UniqueSettingsForRoaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcUniqueSettingsForRoaming:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", OneSettingForRoaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", IsAddMnoApnsIntoAllApnList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsAddMnoApnsIntoAllApnList:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3291
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    if-eqz v2, :cond_af

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-ne v2, v4, :cond_af

    .line 3292
    const v2, 0x42036

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onDataRoamingOnOrSettingsChanged(I)V

    .line 3296
    :cond_af
    return-void
.end method

.method private registerFdnContentObserver()V
    .registers 4

    .line 2425
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isFdnEnableSupport()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2427
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://icc/fdn/subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "fdnContentUri":Landroid/net/Uri;
    goto :goto_34

    .line 2430
    .end local v0    # "fdnContentUri":Landroid/net/Uri;
    :cond_2e
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2432
    .restart local v0    # "fdnContentUri":Landroid/net/Uri;
    :goto_34
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const v2, 0x421f8

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 2434
    .end local v0    # "fdnContentUri":Landroid/net/Uri;
    :cond_3c
    return-void
.end method

.method private reloadOpCustomizationFactory()V
    .registers 3

    .line 3300
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3301
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 3302
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3303
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeDataConnectionExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 3309
    goto :goto_22

    .line 3304
    :catch_19
    move-exception v0

    .line 3306
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "mDataConnectionExt init fail"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3308
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3310
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method private resetSimStatus()V
    .registers 4

    .line 3545
    const-string v0, "resetSimStatus"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 3546
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    .line 3547
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3549
    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMtuFromResource:I

    .line 3550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSimNotReady:Z

    .line 3551
    return-void
.end method

.method private sendOnApnChangedDone(Z)V
    .registers 3
    .param p1, "bImsApnChanged"    # Z

    .line 2375
    const v0, 0x421f7

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2376
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2377
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2378
    return-void
.end method

.method private setDataRoamingEnabledByDefault(Z)Z
    .registers 6
    .param p1, "enabled"    # Z

    .line 3817
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCcOneSettingForRoaming:Z

    if-eqz v0, :cond_3d

    .line 3818
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRoamingFromUserAction()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 3819
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v0

    .line 3822
    .local v0, "oldEnabled":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataRoamingEnabledByDefault: oldEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3826
    if-eq v0, p1, :cond_3d

    .line 3827
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setDataRoamingEnabled(Z)V

    .line 3828
    return v1

    .line 3832
    .end local v0    # "oldEnabled":Z
    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method private setIsPcoAllowedDefault(Z)V
    .registers 3
    .param p1, "allowed"    # Z

    .line 3655
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v0, :cond_7

    .line 3656
    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->setIsPcoAllowedDefault(Z)V

    .line 3658
    :cond_7
    return-void
.end method

.method private setRoamingDataWithRoamingType(I)Z
    .registers 5
    .param p1, "roamingType"    # I

    .line 3801
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    .line 3802
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataRoamingEnabledByDefault(Z)Z

    move-result v0

    return v0

    .line 3805
    :cond_9
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_13

    if-eqz p1, :cond_13

    if-ne p1, v0, :cond_12

    goto :goto_13

    .line 3811
    :cond_12
    return v2

    .line 3808
    :cond_13
    :goto_13
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataRoamingEnabledByDefault(Z)Z

    move-result v0

    return v0
.end method

.method private teardownDataByEmergencyPolicy()V
    .registers 13

    .line 3071
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3072
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3073
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 3075
    .local v1, "b":Landroid/os/PersistableBundle;
    const/4 v2, 0x0

    .line 3077
    .local v2, "isDeactPdn":Z
    if-eqz v0, :cond_1c

    .line 3078
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 3079
    .local v3, "subId":I
    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 3082
    .end local v3    # "subId":I
    :cond_1c
    if-eqz v1, :cond_82

    .line 3083
    const-string v3, "emergency_bearer_management_policy"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3085
    .local v3, "disConnectApns":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_26
    if-ge v5, v4, :cond_87

    aget-object v6, v3, v5

    .line 3086
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_34
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3087
    .local v8, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v9

    if-nez v9, :cond_7e

    .line 3088
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v9

    .line 3089
    .local v9, "apnSetting":Landroid/telephony/data/ApnSetting;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "compare apn: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " by filter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3090
    invoke-virtual {v9}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 3091
    const/4 v2, 0x1

    .line 3092
    const-string v7, "pdnOccupied"

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 3093
    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 3094
    goto :goto_7f

    .line 3097
    .end local v8    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v9    # "apnSetting":Landroid/telephony/data/ApnSetting;
    :cond_7e
    goto :goto_34

    .line 3085
    .end local v6    # "name":Ljava/lang/String;
    :cond_7f
    :goto_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 3100
    .end local v3    # "disConnectApns":[Ljava/lang/String;
    :cond_82
    const-string v3, "Couldn\'t find CarrierConfigService."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 3102
    :cond_87
    return-void
.end method

.method private updateMobileDataUsage(Landroid/os/AsyncResult;)V
    .registers 32
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3849
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 3850
    .local v1, "rxPkts":I
    move-object/from16 v2, p1

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 3852
    .local v3, "ints":[I
    iget v4, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_f

    .line 3854
    return-void

    .line 3856
    :cond_f
    array-length v4, v3

    const/4 v6, 0x0

    if-lez v4, :cond_16

    aget v4, v3, v6

    goto :goto_17

    :cond_16
    move v4, v6

    .line 3857
    .local v4, "txBytes":I
    :goto_17
    array-length v7, v3

    if-le v7, v5, :cond_1d

    aget v7, v3, v5

    goto :goto_1e

    :cond_1d
    move v7, v6

    .line 3858
    .local v7, "txPkts":I
    :goto_1e
    array-length v8, v3

    const/4 v9, 0x2

    if-le v8, v9, :cond_25

    aget v8, v3, v9

    goto :goto_26

    :cond_25
    move v8, v6

    .line 3859
    .local v8, "rxBytes":I
    :goto_26
    array-length v9, v3

    const/4 v10, 0x3

    if-le v9, v10, :cond_2c

    aget v6, v3, v10

    :cond_2c
    move v1, v6

    .line 3861
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 3862
    .local v9, "currentTime":J
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v17

    .line 3863
    .local v17, "isRoaming":I
    const-string v6, "default"

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v6

    .line 3864
    .local v6, "linkProperties":Landroid/net/LinkProperties;
    if-nez v6, :cond_46

    const-string v11, ""

    goto :goto_4a

    :cond_46
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    :goto_4a
    move-object v12, v11

    .line 3865
    .local v12, "ifacename":Ljava/lang/String;
    if-nez v12, :cond_53

    .line 3866
    const-string v5, "updateMobileDataUsage ifacename = null"

    invoke-direct {v0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 3867
    return-void

    .line 3870
    :cond_53
    new-instance v11, Landroid/net/NetworkStats;

    invoke-direct {v11, v9, v10, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    move-object v5, v11

    .line 3871
    .local v5, "mobileDataUsage":Landroid/net/NetworkStats;
    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;

    invoke-virtual {v5, v11}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 3872
    new-instance v15, Landroid/net/NetworkStats$Entry;

    move-object v11, v15

    const/16 v13, -0xa

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v29, v15

    move/from16 v15, v16

    const/16 v16, 0x1

    const/16 v18, 0x1

    int-to-long v13, v8

    move-wide/from16 v19, v13

    int-to-long v13, v1

    move-wide/from16 v21, v13

    int-to-long v13, v4

    move-wide/from16 v23, v13

    int-to-long v13, v7

    move-wide/from16 v25, v13

    const-wide/16 v27, 0x0

    move-object v13, v12

    .end local v12    # "ifacename":Ljava/lang/String;
    .local v13, "ifacename":Ljava/lang/String;
    move-object v2, v13

    const/16 v13, -0xa

    const/4 v14, 0x0

    .end local v13    # "ifacename":Ljava/lang/String;
    .local v2, "ifacename":Ljava/lang/String;
    invoke-direct/range {v11 .. v28}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v11, v29

    invoke-virtual {v5, v11}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 3877
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateMobileDataUsage ifacename:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", txBytes:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", txPkts:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", rxBytes:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", rxPkts:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3883
    iput-object v5, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsage:Landroid/net/NetworkStats;

    .line 3884
    return-void
.end method

.method private updatePhoneType()Z
    .registers 4

    .line 3391
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    .line 3392
    .local v0, "tempPhoneType":I
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    .line 3393
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isCdma3GCard(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3394
    const/4 v2, 0x2

    iput v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    .line 3397
    :cond_14
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isCdma3GDualModeCard(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3398
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    iput v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    .line 3401
    :cond_28
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    if-eq v0, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method


# virtual methods
.method protected addDefaultApnSettingsAsNeeded()V
    .registers 8

    .line 3944
    const/4 v0, 0x0

    .line 3945
    .local v0, "isEmergencyApnConfigured":Z
    const/4 v1, 0x0

    .line 3947
    .local v1, "isImsApnConfigured":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x40

    const/16 v5, 0x200

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    .line 3948
    .local v3, "apn":Landroid/telephony/data/ApnSetting;
    invoke-virtual {v3, v5}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v6

    if-nez v6, :cond_25

    .line 3949
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v6

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_26

    .line 3950
    :cond_25
    const/4 v0, 0x1

    .line 3952
    :cond_26
    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v5

    if-nez v5, :cond_33

    .line 3953
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v5

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_34

    .line 3954
    :cond_33
    const/4 v1, 0x1

    .line 3956
    :cond_34
    if-eqz v0, :cond_3e

    if-eqz v1, :cond_3e

    .line 3957
    const-string v2, "Both emergency and ims apn setting are already present"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3958
    return-void

    .line 3960
    .end local v3    # "apn":Landroid/telephony/data/ApnSetting;
    :cond_3e
    goto :goto_8

    .line 3963
    :cond_3f
    if-nez v0, :cond_53

    .line 3964
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    const-string v3, "DEFAULT EIMS"

    const-string v6, ""

    invoke-direct {p0, v3, v6, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->buildImsEimsApnSetting(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3966
    const-string v2, "default emergency null name apn is created"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3970
    :cond_53
    if-nez v1, :cond_6d

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mSimState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6d

    .line 3971
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    const-string v3, "DEFAULT IMS"

    const-string v5, "ims"

    invoke-direct {p0, v3, v5, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->buildImsEimsApnSetting(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3973
    const-string v2, "default ims apn is created"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3975
    :cond_6d
    return-void
.end method

.method protected apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1708
    .local p1, "apns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1709
    :catch_5
    move-exception v0

    .line 1710
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1711
    const/4 v1, 0x0

    return-object v1
.end method

.method protected cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z
    .registers 12
    .param p1, "detach"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanUpAllConnectionsInternal: detach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1088
    const/4 v0, 0x0

    .line 1089
    .local v0, "didDisconnect":Z
    const/4 v1, 0x0

    .line 1090
    .local v1, "disableMeteredOnly":Z
    const/4 v2, 0x0

    .line 1092
    .local v2, "imsConnect":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "roamingOn"

    if-nez v3, :cond_42

    .line 1093
    const-string v3, "specificDisabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 1094
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 1095
    const-string v3, "carrierActionDisableMeteredApn"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v3, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v3, 0x1

    :goto_41
    move v1, v3

    .line 1098
    :cond_42
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1100
    .local v5, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 1101
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->ignoreDataRoaming(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 1102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleanUpAllConnectionsInternal: Ignore Data Roaming for apnType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1102
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1104
    goto :goto_4c

    .line 1108
    :cond_81
    const-string v6, "SinglePdnArbitration"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "ims"

    if-eqz v7, :cond_96

    .line 1109
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 1110
    goto :goto_4c

    .line 1112
    :cond_96
    const-string v7, "radioTurnedOff"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d3

    .line 1113
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d3

    .line 1114
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v7, v8, :cond_d3

    .line 1115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleanUpAllConnectionsInternal: Ignore ims for apnType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1115
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1117
    const/4 v2, 0x1

    .line 1118
    goto/16 :goto_4c

    .line 1121
    :cond_d3
    nop

    .line 1122
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1121
    invoke-virtual {p0, v5, v1, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->shouldCleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)Z

    move-result v6

    if-eqz v6, :cond_ed

    .line 1124
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v6

    if-nez v6, :cond_e5

    const/4 v0, 0x1

    .line 1125
    :cond_e5
    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1126
    const/4 v6, 0x2

    invoke-virtual {p0, p1, v6, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_10a

    .line 1128
    :cond_ed
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleanUpAllConnectionsInternal: APN type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " shouldn\'t be cleaned up."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1131
    .end local v5    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_10a
    goto/16 :goto_4c

    .line 1133
    :cond_10c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopNetStatPoll()V

    .line 1134
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopDataStallAlarm()V

    .line 1137
    const/16 v3, 0x11

    iput v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRequestedApnType:I

    .line 1139
    if-eqz v2, :cond_12c

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->areAllDataDisconnectedExceptIms()Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 1140
    const-string v3, "cleanUpAllConnectionsInternal: ims only connect, power off radio immediately"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1141
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    .line 1144
    :cond_12c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->areAllDataDisconnected()Z

    move-result v3

    if-eqz v3, :cond_135

    .line 1145
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyAllDataDisconnected()V

    .line 1148
    :cond_135
    return v0
.end method

.method public cleanUpConnectionsOnCpaChanged(ILandroid/os/Handler;)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "callback"    # Landroid/os/Handler;

    .line 4083
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    .line 4084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]cleanUpConnectionsOnCpaChanged() mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4085
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isAnyDataConnected()Z

    move-result v0

    const-string v1, "apnChanged"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionsOnUpdatedApns(ZLjava/lang/String;)V

    .line 4086
    return-void
.end method

.method protected cleanUpConnectionsOnUpdatedApns(ZLjava/lang/String;)V
    .registers 11
    .param p1, "detach"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanUpConnectionsOnUpdatedApns: detach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2118
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "apnChanged"

    if-eqz v0, :cond_23

    .line 2119
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    goto/16 :goto_130

    .line 2121
    :cond_23
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v0

    if-nez v0, :cond_2a

    .line 2125
    return-void

    .line 2127
    :cond_2a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_130

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2129
    .local v2, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const-string v3, "nwTypeChanged"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "emergency"

    if-eqz v3, :cond_69

    .line 2130
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 2131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpConnectionsOnUpdatedApns(): skip emergency due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2132
    goto :goto_34

    .line 2137
    :cond_69
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v3

    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2138
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    .line 2137
    invoke-virtual {v3, v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 2140
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 2141
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    .line 2142
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ims"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 2143
    :cond_97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mtkSkipCleanUpConnectionsOnUpdatedApns: skip IMS/EIMS due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2144
    goto :goto_34

    .line 2149
    :cond_ac
    const/4 v3, 0x1

    .line 2150
    .local v3, "cleanupRequired":Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v4

    if-nez v4, :cond_12e

    .line 2151
    nop

    .line 2152
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v5

    .line 2151
    invoke-virtual {p0, v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 2153
    .local v4, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_d8

    .line 2154
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_db

    .line 2155
    :cond_d8
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 2157
    :cond_db
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_df
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/data/ApnSetting;

    .line 2158
    .local v6, "apnSetting":Landroid/telephony/data/ApnSetting;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->areCompatible(Landroid/telephony/data/ApnSetting;Landroid/telephony/data/ApnSetting;)Z

    move-result v7

    if-eqz v7, :cond_f7

    .line 2159
    const/4 v3, 0x0

    .line 2160
    goto :goto_f8

    .line 2162
    .end local v6    # "apnSetting":Landroid/telephony/data/ApnSetting;
    :cond_f7
    goto :goto_df

    .line 2164
    :cond_f8
    :goto_f8
    if-eqz v3, :cond_12e

    .line 2166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnectionsOnUpdatedApns: APN type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " clean up is required. The new waiting APN list "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " does not cover "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2166
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2171
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2172
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 2175
    .end local v2    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "cleanupRequired":Z
    .end local v4    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    :cond_12e
    goto/16 :goto_34

    .line 2178
    :cond_130
    :goto_130
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isAnyDataConnected()Z

    move-result v0

    if-nez v0, :cond_13c

    .line 2179
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopNetStatPoll()V

    .line 2180
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopDataStallAlarm()V

    .line 2183
    :cond_13c
    const/16 v0, 0x11

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRequestedApnType:I

    .line 2185
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->areAllDataDisconnected()Z

    move-result v0

    if-eqz v0, :cond_149

    .line 2186
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyAllDataDisconnected()V

    .line 2188
    :cond_149
    return-void
.end method

.method protected createAllApnList()V
    .registers 10

    .line 1614
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1615
    .local v0, "operator":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSimNotReady:Z

    if-eqz v1, :cond_16

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    .line 1616
    :cond_10
    const-string v1, "createAllApnList: ignore, sim not ready and no operator numeric"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1617
    return-void

    .line 1622
    :cond_16
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1623
    if-eqz v0, :cond_8f

    .line 1624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1625
    .local v1, "selection":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAllApnList: selection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1628
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 1629
    const-string v4, "filtered"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1628
    const-string v8, "_id"

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1632
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_74

    .line 1633
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_70

    .line 1634
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 1636
    :cond_70
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_8f

    .line 1638
    :cond_74
    const-string v3, "createAllApnList: cursor is null"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1639
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnSettingsInitializationLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor is null for carrier, operator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1645
    .end local v1    # "selection":Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_8f
    :goto_8f
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->addVsimApnTypeToDefaultApnSetting()V

    .line 1649
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->addDefaultApnSettingsAsNeeded()V

    .line 1651
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->dedupeApnSettings()V

    .line 1653
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_ce

    .line 1654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAllApnList: No APN found for carrier, operator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1655
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnSettingsInitializationLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no APN found for carrier, operator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1657
    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    goto :goto_100

    .line 1659
    :cond_ce
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 1660
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    if-eqz v1, :cond_ea

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ea

    .line 1661
    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 1662
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setPreferredApn(I)V

    .line 1664
    :cond_ea
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAllApnList: mPreferredApn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1667
    :goto_100
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mOldOperatorNumeric:Ljava/lang/String;

    .line 1668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAllApnList: X mAllApnSettings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1669
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 452
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dispose()V

    .line 454
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIntentReceiverEx:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 455
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1a

    .line 456
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 461
    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsFdnChecked:Z

    .line 462
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsMatchFdnForAllowData:Z

    .line 463
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPhbStateChangedIntentRegistered:Z

    .line 464
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 468
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_37

    .line 469
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 470
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 475
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_37
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DctOnSubscriptionsChangedListener;

    .line 476
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 480
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 481
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "netstats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    .line 482
    .local v0, "statsManager":Landroid/app/usage/NetworkStatsManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMobileDataUsageProvider:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$MobileDataUsageProvider;

    invoke-virtual {v0, v1}, Landroid/app/usage/NetworkStatsManager;->unregisterNetworkStatsProvider(Landroid/net/netstats/provider/NetworkStatsProvider;)V

    .line 484
    return-void
.end method

.method public enableApn(IILandroid/os/Message;)V
    .registers 8
    .param p1, "apnType"    # I
    .param p2, "requestType"    # I
    .param p3, "onHandoverCompleteMsg"    # Landroid/os/Message;

    .line 1319
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3a

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3a

    .line 1320
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1321
    .local v1, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDependencyMet()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1322
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    .line 1323
    .local v2, "state":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_3a

    .line 1324
    const-string v3, "Enable \'default\' apn type in advance"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1325
    const-string v3, "dataEnabled"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    .line 1327
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->resetErrorCodeRetries()V

    .line 1328
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;ILandroid/os/Message;)V

    .line 1329
    return-void

    .line 1334
    .end local v1    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v2    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_3a
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->enableApn(IILandroid/os/Message;)V

    .line 1335
    return-void
.end method

.method protected getApnProfileID(Ljava/lang/String;)I
    .registers 4
    .param p1, "apnType"    # Ljava/lang/String;

    .line 1966
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1967
    const/4 v0, 0x2

    return v0

    .line 1968
    :cond_a
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1969
    const/4 v0, 0x3

    return v0

    .line 1970
    :cond_14
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1971
    const/4 v0, 0x4

    return v0

    .line 1972
    :cond_1e
    const-string v0, "ia"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1973
    return v1

    .line 1974
    :cond_28
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1975
    const/4 v0, 0x1

    return v0

    .line 1977
    :cond_32
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1978
    const/16 v0, 0x3e9

    return v0

    .line 1979
    :cond_3d
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1980
    const/16 v0, 0x3ea

    return v0

    .line 1981
    :cond_48
    const-string v0, "hipri"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1982
    const/16 v0, 0x3eb

    return v0

    .line 1983
    :cond_53
    const-string v0, "emergency"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1984
    const/16 v0, 0x3ec

    return v0

    .line 1985
    :cond_5e
    const-string v0, "xcap"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1986
    const/16 v0, 0x3ed

    return v0

    .line 1987
    :cond_69
    const-string v0, "rcs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1988
    const/16 v0, 0x3ee

    return v0

    .line 1989
    :cond_74
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1990
    return v1

    .line 1991
    :cond_7d
    const-string v0, "bip"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1992
    const/16 v0, 0x3ef

    return v0

    .line 1993
    :cond_88
    const-string v0, "*"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1994
    const/16 v0, 0x3f2

    return v0

    .line 1995
    :cond_93
    const-string v0, "vsim"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1996
    const/16 v0, 0x3f0

    return v0

    .line 1997
    :cond_9e
    const-string v0, "mcx"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 1998
    const/16 v0, 0x3f1

    return v0

    .line 2001
    :cond_a9
    return v1
.end method

.method public getIccid()Ljava/lang/String;
    .registers 3

    .line 3751
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 3752
    .local v0, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_13
    const-string v1, ""

    :goto_15
    return-object v1
.end method

.method public getImsi()Ljava/lang/String;
    .registers 4

    .line 3741
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsRecordsOverride:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-nez v0, :cond_9

    goto :goto_18

    .line 3744
    :cond_9
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 3745
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3747
    :cond_13
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3742
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMtu()I
    .registers 2

    .line 2371
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mMtuFromResource:I

    return v0
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "apnType"    # Ljava/lang/String;

    .line 2085
    const/4 v0, 0x0

    .line 2086
    .local v0, "result":[Ljava/lang/String;
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPcscfAddress() for RCS, apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2088
    const/4 v1, 0x0

    .line 2090
    .local v1, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const-string v2, "default"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2091
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2094
    :cond_2d
    const/4 v2, 0x0

    if-nez v1, :cond_36

    .line 2095
    const-string v3, "apnContext is null for RCS, return null"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2096
    return-object v2

    .line 2099
    :cond_36
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v3

    .line 2101
    .local v3, "dataConnection":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-eqz v3, :cond_68

    .line 2102
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getPcscfAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 2104
    if-eqz v0, :cond_67

    .line 2105
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    array-length v4, v0

    if-ge v2, v4, :cond_67

    .line 2106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pcscf["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2105
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 2109
    .end local v2    # "i":I
    :cond_67
    return-object v0

    .line 2111
    :cond_68
    return-object v2
.end method

.method public getPendingDataCallFlag()Z
    .registers 2

    .line 2890
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPendingDataCall:Z

    return v0
.end method

.method public getTurboSS()Lmediatek/telephony/MtkServiceState;
    .registers 2

    .line 3718
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTurboSS:Lmediatek/telephony/MtkServiceState;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1725
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1727
    :cond_18
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_2fa

    .line 1959
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_2f8

    .line 1937
    :sswitch_25
    const-string v0, "EVENT_RECORDS_OVERRIDE"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 1938
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsRecordsOverride:Z

    .line 1939
    goto/16 :goto_2f8

    .line 1918
    :sswitch_2e
    const-string v0, "EVENT_ICC_CHANGED"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 1919
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1920
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    .line 1919
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 1921
    .local v0, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v1, v0, :cond_2f8

    .line 1922
    if-eqz v1, :cond_53

    .line 1923
    const-string v1, "Removing stale icc objects."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 1924
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsOverride(Landroid/os/Handler;)V

    .line 1925
    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1927
    :cond_53
    if-eqz v0, :cond_2f8

    .line 1928
    const-string v1, "new Icc object"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 1929
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsRecordsOverride:Z

    .line 1930
    const v1, 0x42211

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsOverride(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1932
    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    goto/16 :goto_2f8

    .line 1818
    .end local v0    # "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :sswitch_66
    const-string v0, "EVENT_PLMN_DATA"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 1819
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1820
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2f8

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2f8

    .line 1821
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    .line 1822
    .local v1, "tempPlmnMvnoData":Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isPlmnMvnoChanged(Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;)Z

    move-result v2

    .line 1823
    .local v2, "changed":Z
    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    .line 1824
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPlmnMvnoData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " changed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 1825
    if-eqz v2, :cond_b0

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 1826
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onSubIdReady()V

    .line 1828
    .end local v1    # "tempPlmnMvnoData":Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;
    .end local v2    # "changed":Z
    :cond_b0
    goto/16 :goto_2f8

    .line 1908
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_b2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1909
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_db

    .line 1910
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1911
    .local v1, "ints":[I
    array-length v2, v1

    if-lez v2, :cond_c4

    aget v2, v1, v3

    goto :goto_c5

    :cond_c4
    const/4 v2, -0x1

    .line 1912
    .local v2, "nwLimitState":I
    :goto_c5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nwLimitState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 1913
    .end local v1    # "ints":[I
    .end local v2    # "nwLimitState":I
    goto/16 :goto_2f8

    .line 1914
    :cond_db
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_NW_LIMIT_STATE, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 1916
    goto/16 :goto_2f8

    .line 1899
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_f3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1900
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_104

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_104

    .line 1901
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->updateMobileDataUsage(Landroid/os/AsyncResult;)V

    goto/16 :goto_2f8

    .line 1903
    :cond_104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_MOBILE_DATA_USAGE, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 1905
    goto/16 :goto_2f8

    .line 1941
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_11c
    const-string v0, "EVENT_MODEM_RESET"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 1942
    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    .line 1943
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->resetSimStatus()V

    .line 1944
    goto/16 :goto_2f8

    .line 1895
    :sswitch_128
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onTearDownPdnByApnId(I)V

    .line 1896
    goto/16 :goto_2f8

    .line 1891
    :sswitch_12f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1892
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onNetworkRejectReceived(Landroid/os/AsyncResult;)V

    .line 1893
    goto/16 :goto_2f8

    .line 1876
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_138
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1877
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1878
    .local v1, "cid":I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onDedecatedBearerDeactivated(I)V

    .line 1879
    goto/16 :goto_2f8

    .line 1869
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cid":I
    :sswitch_149
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1870
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    if-eqz v1, :cond_2f8

    .line 1871
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    .line 1872
    .local v1, "rs":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onDedecatedBearerModified(Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;)V

    .line 1873
    .end local v1    # "rs":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    goto/16 :goto_2f8

    .line 1862
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_15c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1863
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    if-eqz v1, :cond_2f8

    .line 1864
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    .line 1865
    .restart local v1    # "rs":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onDedecatedBearerActivated(Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;)V

    .line 1866
    .end local v1    # "rs":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    goto/16 :goto_2f8

    .line 1857
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_16f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->handlePcoDataAfterAttached(Landroid/os/AsyncResult;)V

    .line 1858
    goto/16 :goto_2f8

    .line 1795
    :sswitch_178
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRetryRestrictEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f8

    .line 1796
    const-string v0, "EVENT_REMOVE_RESTRICT_EUTRAN"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 1797
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mReregisterOnReconnectFailure:Z

    .line 1798
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "psRestrictDisabled"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto/16 :goto_2f8

    .line 1805
    :sswitch_18e
    const-string v0, "EVENT_MD_DATA_RETRY_COUNT_RESET"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 1806
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_199
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/ApnSetting;

    .line 1807
    .local v2, "apn":Landroid/telephony/data/ApnSetting;
    const-string v4, "MD retry count reset, set permanentFailed as false, reset throttle."

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {v2, v3}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    .line 1809
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v4

    .line 1810
    .local v4, "apnTypes":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataThrottler:Lcom/android/internal/telephony/dataconnection/DataThrottler;

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v4, v6, v7, v1}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->setRetryTimeInternal(IJI)V

    .line 1813
    .end local v2    # "apn":Landroid/telephony/data/ApnSetting;
    .end local v4    # "apnTypes":I
    goto :goto_199

    .line 1814
    :cond_1b9
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "modemDataCountReset"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 1816
    goto/16 :goto_2f8

    .line 1853
    :sswitch_1c2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onRoamingTypeChanged()V

    .line 1854
    goto/16 :goto_2f8

    .line 1837
    :sswitch_1c7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f9

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f9

    .line 1838
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1f4

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 1839
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f4

    .line 1840
    const-string v0, "Only common Emergency APN, skip set initial attach apn."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logw(Ljava/lang/String;)V

    goto/16 :goto_2f8

    .line 1842
    :cond_1f4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    goto/16 :goto_2f8

    .line 1846
    :cond_1f9
    const-string v0, "EVENT_RESET_ATTACH_APN: Ignore due to null APN list"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1849
    goto/16 :goto_2f8

    .line 1832
    :sswitch_200
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onProcessPendingSetupData()V

    .line 1833
    goto/16 :goto_2f8

    .line 1791
    :sswitch_205
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onFdnChanged()V

    .line 1792
    goto/16 :goto_2f8

    .line 1729
    :sswitch_20a
    const-string v0, "EVENT_APN_CHANGED_DONE"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 1731
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onApnChangedDone()V

    .line 1732
    goto/16 :goto_2f8

    .line 1882
    :sswitch_214
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRilRat:I

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v1

    if-eq v0, v1, :cond_2f8

    .line 1884
    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTurboSS:Lmediatek/telephony/MtkServiceState;

    .line 1886
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mRilRat:I

    .line 1887
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_2f8

    .line 1739
    :sswitch_229
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1740
    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1742
    .local v0, "cnnm":Landroid/net/ConnectivityManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPsRestricted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1743
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPsRestricted:Z

    .line 1744
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isAnyDataConnected()Z

    move-result v4

    if-eqz v4, :cond_25d

    .line 1745
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startNetStatPoll()V

    .line 1746
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startDataStallAlarm(Z)V

    goto/16 :goto_2f8

    .line 1749
    :cond_25d
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    const-string v6, "psRestrictEnabled"

    if-ne v4, v5, :cond_26a

    .line 1750
    invoke-virtual {p0, v3, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    .line 1751
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mReregisterOnReconnectFailure:Z

    .line 1753
    :cond_26a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1754
    .local v3, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v3, :cond_28f

    .line 1761
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v4

    if-nez v4, :cond_289

    .line 1763
    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {p0, v3, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;ILandroid/os/Message;)V

    goto :goto_2b3

    .line 1766
    :cond_289
    const-string v4, "EVENT_PS_RESTRICT_DISABLED, data not attached, skip."

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    goto :goto_2b3

    .line 1769
    :cond_28f
    const-string v4, "**** Default ApnContext not found ****"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 1771
    sget-boolean v4, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_2b3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1772
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2ab

    goto :goto_2b3

    .line 1774
    :cond_2ab
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Default ApnContext not found"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1779
    :cond_2b3
    :goto_2b3
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1780
    if-eqz v3, :cond_2cc

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v4

    if-eqz v4, :cond_2cc

    .line 1781
    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {p0, v3, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;ILandroid/os/Message;)V

    goto :goto_2d1

    .line 1784
    :cond_2cc
    const-string v1, "**** MMS ApnContext not found ****"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 1788
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_2d1
    goto :goto_2f8

    .line 1947
    .end local v0    # "cnnm":Landroid/net/ConnectivityManager;
    :sswitch_2d2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRetryRestrictEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f0

    .line 1948
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1949
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    .line 1950
    .local v4, "apnSetting":Landroid/telephony/data/ApnSetting;
    if-eqz v4, :cond_2f0

    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result v5

    if-eqz v5, :cond_2f0

    .line 1951
    invoke-virtual {v4, v3}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    .line 1952
    const-string v3, "set permanentFailed as false for cc33 operators"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1956
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "apnSetting":Landroid/telephony/data/ApnSetting;
    :cond_2f0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;ILandroid/os/Message;)V

    .line 1957
    nop

    .line 1962
    :cond_2f8
    :goto_2f8
    return-void

    nop

    :sswitch_data_2fa
    .sparse-switch
        0x42003 -> :sswitch_2d2
        0x42017 -> :sswitch_229
        0x42029 -> :sswitch_214
        0x421f7 -> :sswitch_20a
        0x421f8 -> :sswitch_205
        0x421fa -> :sswitch_200
        0x421ff -> :sswitch_1c7
        0x42200 -> :sswitch_1c2
        0x42201 -> :sswitch_18e
        0x42202 -> :sswitch_178
        0x42204 -> :sswitch_16f
        0x42205 -> :sswitch_15c
        0x42206 -> :sswitch_149
        0x42207 -> :sswitch_138
        0x4220a -> :sswitch_12f
        0x4220b -> :sswitch_128
        0x4220c -> :sswitch_11c
        0x4220d -> :sswitch_f3
        0x4220e -> :sswitch_b2
        0x4220f -> :sswitch_66
        0x42210 -> :sswitch_2e
        0x42211 -> :sswitch_25
    .end sparse-switch
.end method

.method protected initApnContexts(Landroid/os/PersistableBundle;)V
    .registers 12
    .param p1, "carrierConfig"    # Landroid/os/PersistableBundle;

    .line 524
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 525
    const-string v0, "initApnContexts: isDataCapable == false.  No Apn Contexts loaded"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 526
    return-void

    .line 529
    :cond_e
    const-string v0, "initApnContexts: E"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 531
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;-><init>(Landroid/os/PersistableBundle;)V

    .line 532
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;->getTypes()Ljava/util/Collection;

    move-result-object v0

    .line 534
    .local v0, "types":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/dataconnection/ApnConfigType;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnConfigType;

    .line 535
    .local v2, "apnConfigType":Lcom/android/internal/telephony/dataconnection/ApnConfigType;
    new-instance v9, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;->getType()I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mLogTag:Ljava/lang/String;

    .line 536
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;->getPriority()I

    move-result v8

    move-object v3, v9

    move-object v7, p0

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;-><init>(Lcom/android/internal/telephony/Phone;ILjava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker;I)V

    .line 537
    .local v3, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v4

    .line 538
    .local v4, "bitmask":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v6, Landroid/telephony/PreciseDataConnectionState$Builder;

    invoke-direct {v6}, Landroid/telephony/PreciseDataConnectionState$Builder;-><init>()V

    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    .line 546
    invoke-virtual {v6, v7}, Landroid/telephony/PreciseDataConnectionState$Builder;->setTransportType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v6

    const/4 v7, 0x0

    .line 547
    invoke-virtual {v6, v7}, Landroid/telephony/PreciseDataConnectionState$Builder;->setState(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v6

    new-instance v7, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v7}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    .line 549
    invoke-virtual {v7, v4}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/data/ApnSetting$Builder;->buildWithoutCheck()Landroid/telephony/data/ApnSetting;

    move-result-object v7

    .line 548
    invoke-virtual {v6, v7}, Landroid/telephony/PreciseDataConnectionState$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v6

    .line 550
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/PreciseDataConnectionState$Builder;->setNetworkType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v6

    .line 551
    invoke-virtual {v6}, Landroid/telephony/PreciseDataConnectionState$Builder;->build()Landroid/telephony/PreciseDataConnectionState;

    move-result-object v6

    .line 545
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V

    .line 552
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initApnContexts: apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;->getType()I

    move-result v6

    .line 552
    invoke-static {v6}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 554
    .end local v2    # "apnConfigType":Lcom/android/internal/telephony/dataconnection/ApnConfigType;
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "bitmask":I
    goto/16 :goto_20

    .line 555
    :cond_aa
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 556
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logSortedApnContexts()V

    .line 557
    return-void
.end method

.method public isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;ILcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z
    .registers 27
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "requestType"    # I
    .param p3, "dataConnectionReasons"    # Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;

    invoke-direct {v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;-><init>()V

    .line 604
    .local v4, "reasons":Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;
    const/4 v5, 0x0

    .line 605
    .local v5, "requestApnType":I
    if-eqz v1, :cond_14

    .line 606
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v5

    .line 610
    :cond_14
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isInternalDataEnabled()Z

    move-result v6

    .line 611
    .local v6, "internalDataEnabled":Z
    iget-object v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    .line 612
    .local v7, "attachedState":Z
    iget-object v8, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v8

    .line 613
    .local v8, "desiredPowerState":Z
    iget-object v9, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/ServiceStateTracker;->getPowerStateFromCarrier()Z

    move-result v9

    .line 615
    .local v9, "radioStateFromCarrier":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v10

    .line 616
    .local v10, "dataRat":I
    const/16 v11, 0x12

    if-ne v10, v11, :cond_3e

    .line 617
    const/4 v8, 0x1

    .line 618
    const/4 v9, 0x1

    .line 622
    :cond_3e
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v12

    .line 621
    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v12

    .line 624
    .local v12, "defaultDataSelected":Z
    const/4 v14, 0x1

    if-eqz v1, :cond_54

    iget-object v15, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 625
    invoke-static {v5, v15}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(ILcom/android/internal/telephony/Phone;)Z

    move-result v15

    if-eqz v15, :cond_52

    goto :goto_54

    :cond_52
    const/4 v15, 0x0

    goto :goto_55

    :cond_54
    :goto_54
    move v15, v14

    .line 627
    .local v15, "isMeteredApnType":Z
    :goto_55
    sget-object v16, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 635
    .local v16, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v13

    if-eqz v13, :cond_69

    .line 636
    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v16

    .line 640
    :cond_69
    if-eqz v1, :cond_7d

    const/16 v13, 0x200

    if-ne v5, v13, :cond_7d

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v13

    if-eqz v13, :cond_7d

    .line 645
    if-eqz v3, :cond_7c

    .line 646
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->EMERGENCY_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v3, v11}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    .line 649
    :cond_7c
    return v14

    .line 653
    :cond_7d
    if-eqz v1, :cond_ac

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v13

    if-nez v13, :cond_ac

    .line 654
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v13

    .line 655
    .local v13, "state":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v14, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v13, v14, :cond_93

    .line 656
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DATA_ALREADY_CONNECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    goto :goto_ac

    .line 657
    :cond_93
    sget-object v14, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v13, v14, :cond_9d

    .line 658
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DATA_IS_DISCONNECTING:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    goto :goto_ac

    .line 659
    :cond_9d
    sget-object v14, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v13, v14, :cond_a7

    .line 660
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DATA_IS_CONNECTING:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    goto :goto_ac

    .line 662
    :cond_a7
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->APN_NOT_CONNECTABLE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 668
    .end local v13    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_ac
    :goto_ac
    const/16 v13, 0x11

    const/16 v14, 0x4000

    if-eqz v1, :cond_b4

    if-eq v5, v13, :cond_ba

    :cond_b4
    if-eq v5, v14, :cond_ba

    const/16 v13, 0x100

    if-ne v5, v13, :cond_cd

    :cond_ba
    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 671
    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/TransportManager;->isInLegacyMode()Z

    move-result v13

    if-eqz v13, :cond_cd

    if-ne v10, v11, :cond_cd

    .line 673
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ON_IWLAN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 677
    :cond_cd
    if-eqz v1, :cond_da

    if-ne v5, v14, :cond_da

    const/16 v11, 0x14

    if-eq v10, v11, :cond_da

    .line 679
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->NOT_ON_NR:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 682
    :cond_da
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->shouldRestrictDataForEcbm()Z

    move-result v11

    if-nez v11, :cond_e8

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v11

    if-eqz v11, :cond_ed

    .line 683
    :cond_e8
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->IN_ECBM:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 686
    :cond_ed
    const/4 v11, 0x2

    if-nez v7, :cond_fd

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->shouldAutoAttach()Z

    move-result v13

    if-nez v13, :cond_fd

    if-eq v2, v11, :cond_fd

    .line 687
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v13}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 689
    :cond_fd
    iget-object v13, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_10b

    .line 690
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->SIM_NOT_READY:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v13}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 693
    :cond_10b
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v13

    .line 694
    .local v13, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    const-string v14, "ims"

    if-eqz v13, :cond_149

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    invoke-virtual {v13, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v11

    if-nez v11, :cond_149

    iget v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    move/from16 v18, v7

    const/4 v7, 0x2

    .end local v7    # "attachedState":Z
    .local v18, "attachedState":Z
    if-ne v11, v7, :cond_132

    iget-object v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 696
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v13, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isWifiCallingEnabled(I)Z

    move-result v7

    if-nez v7, :cond_14b

    :cond_132
    if-eqz v1, :cond_13e

    .line 697
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14b

    .line 698
    :cond_13e
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 699
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    goto :goto_14b

    .line 694
    .end local v18    # "attachedState":Z
    .restart local v7    # "attachedState":Z
    :cond_149
    move/from16 v18, v7

    .line 702
    .end local v7    # "attachedState":Z
    .restart local v18    # "attachedState":Z
    :cond_14b
    :goto_14b
    if-nez v6, :cond_152

    .line 703
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 705
    :cond_152
    if-nez v12, :cond_159

    .line 706
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 708
    :cond_159
    iget-object v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v7

    if-eqz v7, :cond_170

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v7

    if-nez v7, :cond_170

    .line 709
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 711
    :cond_170
    iget-boolean v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsPsRestricted:Z

    if-eqz v7, :cond_179

    .line 712
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 714
    :cond_179
    if-nez v8, :cond_18c

    if-eqz v1, :cond_187

    .line 715
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18c

    .line 716
    :cond_187
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 718
    :cond_18c
    if-nez v9, :cond_193

    .line 719
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 722
    :cond_193
    const-string v7, "default"

    if-eqz v1, :cond_22d

    .line 723
    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v11

    .line 724
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v14

    .line 723
    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getPreferredTransport(I)I

    move-result v11

    const/4 v14, -0x1

    if-ne v11, v14, :cond_1b0

    .line 728
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DISABLED_BY_QNS:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    move/from16 v17, v6

    goto :goto_1c9

    .line 729
    :cond_1b0
    iget v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    iget-object v14, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v14

    .line 730
    move/from16 v17, v6

    .end local v6    # "internalDataEnabled":Z
    .local v17, "internalDataEnabled":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v6

    .line 729
    invoke-virtual {v14, v6}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getPreferredTransport(I)I

    move-result v6

    if-eq v11, v6, :cond_1c9

    .line 733
    sget-object v6, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ON_OTHER_TRANSPORT:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 739
    :cond_1c9
    :goto_1c9
    iget v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v11

    .line 740
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v14

    .line 739
    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getCurrentTransport(I)I

    move-result v11

    if-eq v6, v11, :cond_1e3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_1e3

    .line 741
    sget-object v6, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ON_OTHER_TRANSPORT:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 745
    :cond_1e3
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataThrottler:Lcom/android/internal/telephony/dataconnection/DataThrottler;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->getRetryTime(I)J

    move-result-wide v19

    .line 746
    .local v19, "retryTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    cmp-long v6, v19, v21

    if-lez v6, :cond_1fb

    .line 747
    sget-object v6, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DATA_THROTTLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    goto :goto_22f

    .line 750
    :cond_1fb
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRetryRestrictEnabled()Z

    move-result v6

    if-eqz v6, :cond_22f

    .line 751
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 752
    .local v6, "ac":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v6, :cond_22f

    if-eqz v1, :cond_22f

    .line 753
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v11

    .line 754
    .local v11, "apnSetting":Landroid/telephony/data/ApnSetting;
    if-eqz v11, :cond_22f

    invoke-virtual {v11}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result v14

    if-eqz v14, :cond_22f

    .line 755
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v14

    if-eqz v14, :cond_22f

    .line 756
    const-string v14, "isDataAllowed: allowed for retry time is over"

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 757
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    goto :goto_22f

    .line 722
    .end local v11    # "apnSetting":Landroid/telephony/data/ApnSetting;
    .end local v17    # "internalDataEnabled":Z
    .end local v19    # "retryTime":J
    .local v6, "internalDataEnabled":Z
    :cond_22d
    move/from16 v17, v6

    .line 765
    .end local v6    # "internalDataEnabled":Z
    .restart local v17    # "internalDataEnabled":Z
    :cond_22f
    :goto_22f
    if-nez v1, :cond_238

    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v6

    goto :goto_23e

    .line 766
    :cond_238
    iget-object v6, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(I)Z

    move-result v6

    :goto_23e
    nop

    .line 768
    .local v6, "isDataEnabled":Z
    if-nez v6, :cond_25a

    .line 769
    if-eqz v1, :cond_255

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataAllowedAsOff(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_255

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 770
    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isPolicyDataEnabled()Z

    move-result v11

    if-nez v11, :cond_25a

    .line 771
    :cond_255
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 776
    :cond_25a
    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataAllowedForRoamingFeature(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)V

    .line 779
    if-eqz v13, :cond_270

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    invoke-virtual {v13, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isSimMeLockAllowed(I)Z

    move-result v11

    if-nez v11, :cond_270

    .line 780
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_SIM_ME_LOCK_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 784
    :cond_270
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isFdnEnabled()Z

    move-result v11

    if-eqz v11, :cond_27b

    .line 785
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_FDN_ENABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 789
    :cond_27b
    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getVsimCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    move-result-object v11

    .line 790
    .local v11, "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->isAllowOnlyVsimNetwork()Z

    move-result v14

    if-eqz v14, :cond_290

    .line 791
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_NON_VSIM_PDN_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 796
    :cond_290
    if-eqz v1, :cond_2a7

    .line 797
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a7

    .line 798
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getIsPcoAllowedDefault()Z

    move-result v7

    if-nez v7, :cond_2a7

    .line 799
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_PCO_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 804
    :cond_2a7
    if-eqz v1, :cond_2ba

    .line 805
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v7

    if-eqz v7, :cond_2ba

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isLocatedPlmnChanged()Z

    move-result v7

    if-eqz v7, :cond_2ba

    .line 806
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_LOCATED_PLMN_CHANGED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 811
    :cond_2ba
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->containsHardDisallowedReasons()Z

    move-result v7

    if-eqz v7, :cond_2c7

    .line 812
    if-eqz v3, :cond_2c5

    .line 813
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->copyFrom(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)V

    .line 815
    :cond_2c5
    const/4 v7, 0x0

    return v7

    .line 822
    :cond_2c7
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v7

    if-nez v7, :cond_30d

    .line 824
    iget v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v14, 0x2

    if-ne v7, v14, :cond_2d8

    .line 825
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->UNMETERED_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    goto :goto_2ec

    .line 828
    :cond_2d8
    iget v7, v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v14, 0x1

    if-ne v7, v14, :cond_2ec

    if-nez v15, :cond_2ec

    const/16 v7, 0x11

    if-eq v5, v7, :cond_2ec

    const/16 v7, 0x4000

    if-eq v5, v7, :cond_2ec

    .line 831
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->UNMETERED_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    .line 838
    :cond_2ec
    :goto_2ec
    if-eqz v1, :cond_312

    .line 839
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->hasRestrictedRequests(Z)Z

    move-result v7

    if-eqz v7, :cond_312

    .line 840
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    const-string v14, "enterprise"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_312

    .line 841
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v7

    if-nez v7, :cond_312

    .line 842
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    goto :goto_312

    .line 847
    :cond_30d
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NORMAL:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    .line 850
    :cond_312
    :goto_312
    if-eqz v3, :cond_317

    .line 851
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->copyFrom(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)V

    .line 854
    :cond_317
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v7

    return v7
.end method

.method public isDataServiceBound()Z
    .registers 2

    .line 3756
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataServiceBound:Z

    return v0
.end method

.method public isOp129DunChange()Z
    .registers 4

    .line 4010
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4011
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 4010
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4012
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isOp129GsmUmts(I)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4013
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4014
    :cond_28
    const-string v0, "isOp129DunChange"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4015
    const/4 v0, 0x1

    return v0

    .line 4018
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method protected isOp129GsmUmts(I)Z
    .registers 4
    .param p1, "radioTechnology"    # I

    .line 3995
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1f

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1f

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1f

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1f

    const/16 v1, 0xf

    if-eq p1, v1, :cond_1f

    const/16 v1, 0x10

    if-ne p1, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :cond_1f
    :goto_1f
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2059
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 2060
    return-void
.end method

.method protected mergeApns(Landroid/telephony/data/ApnSetting;Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/ApnSetting;
    .registers 36
    .param p1, "dest"    # Landroid/telephony/data/ApnSetting;
    .param p2, "src"    # Landroid/telephony/data/ApnSetting;

    .line 1673
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v0

    .line 1674
    .local v0, "id":I
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    const/16 v2, 0x11

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_11

    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v0

    .line 1677
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    or-int v31, v1, v2

    .line 1678
    .local v31, "resultApnType":I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_26

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v1

    goto :goto_2a

    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v1

    :goto_2a
    move-object v8, v1

    .line 1679
    .local v8, "mmsc":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1680
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    :cond_3a
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    :goto_3e
    move-object v9, v1

    .line 1681
    .local v9, "mmsProxy":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4b

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v1

    goto :goto_4f

    :cond_4b
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v1

    :goto_4f
    move v10, v1

    .line 1682
    .local v10, "mmsPort":I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1683
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_63

    :cond_5f
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    :goto_63
    move-object v6, v1

    .line 1684
    .local v6, "proxy":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    if-ne v1, v2, :cond_6f

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    goto :goto_73

    :cond_6f
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    :goto_73
    move v7, v1

    .line 1685
    .local v7, "port":I
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_81

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v1

    move v15, v1

    goto :goto_86

    .line 1686
    :cond_81
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v1

    move v15, v1

    :goto_86
    nop

    .line 1687
    .local v15, "protocol":I
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v1

    if-ne v1, v2, :cond_92

    .line 1688
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v1

    goto :goto_96

    :cond_92
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v1

    :goto_96
    move/from16 v16, v1

    .line 1689
    .local v16, "roamingProtocol":I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b2

    .line 1690
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v1

    if-nez v1, :cond_a6

    goto :goto_b2

    .line 1691
    :cond_a6
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v3

    or-int/2addr v1, v3

    move/from16 v18, v1

    goto :goto_b4

    :cond_b2
    :goto_b2
    move/from16 v18, v2

    .line 1694
    .local v18, "networkTypeBitmask":I
    :goto_b4
    new-instance v32, Lmediatek/telephony/data/MtkApnSetting;

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v4

    .line 1695
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v11

    .line 1696
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v13

    .line 1697
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v19

    .line 1698
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_e6

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_e3

    goto :goto_e6

    :cond_e3
    move/from16 v20, v2

    goto :goto_e9

    :cond_e6
    :goto_e6
    const/4 v1, 0x1

    move/from16 v20, v1

    :goto_e9
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result v21

    .line 1699
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v25

    .line 1700
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getCarrierId()I

    move-result v28

    .line 1701
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result v29

    move-object/from16 v1, p1

    check-cast v1, Lmediatek/telephony/data/MtkApnSetting;

    iget v1, v1, Lmediatek/telephony/data/MtkApnSetting;->inactiveTimer:I

    move/from16 v30, v1

    move-object/from16 v1, v32

    move v2, v0

    move/from16 v14, v31

    invoke-direct/range {v1 .. v30}, Lmediatek/telephony/data/MtkApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;IIII)V

    .line 1694
    return-object v32
.end method

.method protected mtkCpaModeOnApnChanged(Ljava/lang/String;)Z
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 4278
    const/4 v0, 0x0

    .line 4279
    .local v0, "isNeedToSkip":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4280
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAVI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 4281
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCurrentCpaMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4282
    :cond_21
    const-string v1, "[CpaDct]mtkCpaModeOnApnChanged skip user apn changed"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4283
    const/4 v0, 0x1

    .line 4286
    :cond_27
    return v0
.end method

.method protected mtkCpaModeOnDataDisconnect(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4149
    const/4 v0, 0x0

    .line 4150
    .local v0, "ret":Z
    if-eqz p1, :cond_5f

    .line 4151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]onDataDisconnectDone apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 4153
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 4154
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCurrentCpaMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAVI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 4155
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->isCapApn(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 4156
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    if-eqz v1, :cond_47

    .line 4157
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4159
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4160
    const/4 v0, 0x1

    .line 4161
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_64

    .line 4162
    :cond_47
    const-string v1, "[CpaDct]mCpaDctCallback is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logv(Ljava/lang/String;)V

    goto :goto_64

    .line 4165
    :cond_4d
    const-string v1, "[CpaDct]mtkCpaModeOnDataDisconnect is not CPA APN!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_64

    .line 4168
    :cond_53
    const-string v1, "[CpaDct]not handle, currentCpaMode != CAP"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_64

    .line 4171
    :cond_59
    const-string v1, "[CpaDct]mCpaDcTracker is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logv(Ljava/lang/String;)V

    goto :goto_64

    .line 4174
    :cond_5f
    const-string v1, "[CpaDct]mtkCpaModeOnDataDisconnect, apnContext is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4176
    :goto_64
    return v0
.end method

.method protected mtkCpaModeOnDataSetupComplete(Lcom/android/internal/telephony/dataconnection/ApnContext;ZII)Z
    .registers 8
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .param p4, "requestType"    # I

    .line 4095
    const/4 v0, 0x0

    .line 4096
    .local v0, "ret":Z
    if-eqz p2, :cond_61

    if-eqz p1, :cond_61

    .line 4097
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 4098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]mtkCpaModeOnDataSetupComplete() apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4100
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAVI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 4101
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->isCapApn(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 4102
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    if-eqz v1, :cond_49

    .line 4103
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4105
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4106
    const/4 v0, 0x1

    .line 4107
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_66

    .line 4108
    :cond_49
    const-string v1, "[CpaDct]mCpaDctCallback is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logv(Ljava/lang/String;)V

    goto :goto_66

    .line 4111
    :cond_4f
    const-string v1, "[CpaDct]mtkCpaModeOnDataSetupComplete is not CPA APN!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_66

    .line 4114
    :cond_55
    const-string v1, "[CpaDct]mtkCpaModeOnDataSetupComplete() not in NAVI mode"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_66

    .line 4117
    :cond_5b
    const-string v1, "[CpaDct]mCpaDcTracker is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logv(Ljava/lang/String;)V

    goto :goto_66

    .line 4120
    :cond_61
    const-string v1, "[CpaDct]not success or apnContext is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4122
    :goto_66
    return v0
.end method

.method protected mtkCpaModeOnRetryAfterDisconnected(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4251
    const/4 v0, 0x1

    .line 4252
    .local v0, "isNeedToRetry":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 4253
    const-string v1, "apnChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 4255
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAVI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 4256
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCurrentCpaMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_30

    .line 4268
    :cond_2a
    const-string v1, "[CpaDct]not skip retry, not CPA mode or switching from default to CPA"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_5d

    .line 4257
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_52

    .line 4258
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->isCapApnCanHandleType(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 4259
    const-string v1, "[CpaDct]mtkCpaModeOnRetryAfterDisconnected skip retry"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4260
    const/4 v0, 0x0

    goto :goto_5d

    .line 4262
    :cond_4c
    const-string v1, "[CpaDct]not skip retry, isCapApnCanHandleType()==false"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_5d

    .line 4265
    :cond_52
    const-string v1, "[CpaDct]not skip retry, getCpaDctState()!= DISCONNECTING"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_5d

    .line 4271
    :cond_58
    const-string v1, "[CpaDct]not skip retry, reason is not APN_CHANGED"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4274
    :cond_5d
    :goto_5d
    return v0
.end method

.method protected mtkCpaModeOnTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)Z
    .registers 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "tryReson"    # Ljava/lang/String;

    .line 4180
    const/4 v0, 0x0

    .line 4181
    .local v0, "ret":Z
    if-eqz p1, :cond_61

    .line 4182
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 4183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]mtkCpaModeOnTrySetupData() apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " tryReson="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4186
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaDctState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_55

    .line 4187
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->isCapApn(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 4188
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    if-eqz v1, :cond_49

    .line 4189
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4191
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4192
    const/4 v0, 0x1

    .line 4193
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_66

    .line 4194
    :cond_49
    const-string v1, "[CpaDct]mCpaDctCallback is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    goto :goto_66

    .line 4197
    :cond_4f
    const-string v1, "[CpaDct]mtkCpaModeOnTrySetupData is not CPA APN!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_66

    .line 4200
    :cond_55
    const-string v1, "[CpaDct]not handle, CpaDctState != CPA_DCT_STATE_LOST_NW"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_66

    .line 4203
    :cond_5b
    const-string v1, "[CpaDct]mCpaDcTracker is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logv(Ljava/lang/String;)V

    goto :goto_66

    .line 4206
    :cond_61
    const-string v1, "[CpaDct]apnContext is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4208
    :goto_66
    return v0
.end method

.method protected mtkCpaModeOnTrySetupDataError(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;Ljava/lang/String;)Z
    .registers 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "dcReasons"    # Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;
    .param p3, "errStr"    # Ljava/lang/String;

    .line 4213
    const/4 v0, 0x0

    .line 4214
    .local v0, "ret":Z
    if-eqz p1, :cond_8a

    .line 4215
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 4216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]mtkCpaModeOnTrySetupDataError() apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " errStr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4219
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAVI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 4220
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCurrentCpaMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_46

    .line 4238
    :cond_40
    const-string v1, "[CpaDct]not handle,requestMode != CAP or currentMode!=CPA"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_8f

    .line 4221
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->isCapApn(I)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 4222
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_60

    .line 4223
    const-string v1, "[CpaDct]not handle, apnContext.getState()=CONNECTED"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_8f

    .line 4225
    :cond_60
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->containsOnly(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 4226
    const-string v1, "[CpaDct]not handle for NOT_ATTACHED"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    goto :goto_8f

    .line 4227
    :cond_6e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    if-eqz v1, :cond_7e

    .line 4228
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4230
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDctCallback:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4231
    const/4 v0, 0x1

    .line 4232
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_8f

    .line 4233
    :cond_7e
    const-string v1, "[CpaDct]mCpaDctCallback is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    goto :goto_8f

    .line 4241
    :cond_84
    const-string v1, "[CpaDct]mCpaDcTracker is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logv(Ljava/lang/String;)V

    goto :goto_8f

    .line 4244
    :cond_8a
    const-string v1, "[CpaDct]apnContext is null!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4246
    :cond_8f
    :goto_8f
    return v0
.end method

.method public mtkDeactivateDataCall(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .registers 6
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3645
    if-eqz p1, :cond_18

    .line 3646
    const-string v0, "mtkDeactivateDataCall: sync apn disable state for multi-purpose apn setting"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3647
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getApnProfileID(Ljava/lang/String;)I

    move-result v0

    .line 3648
    .local v0, "nProfileId":I
    mul-int/lit8 v0, v0, -0x1

    .line 3649
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->deactivateDataCall(IILandroid/os/Message;)V

    .line 3652
    .end local v0    # "nProfileId":I
    :cond_18
    return-void
.end method

.method protected mtkFakeDataConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .registers 11
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtkFakeDataConnection: apn type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3725
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 3726
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->findFreeDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 3727
    .local v0, "conn":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    if-nez v0, :cond_55

    .line 3728
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 3729
    .local v1, "id":I
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_39

    const/4 v2, 0x1

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    move v8, v2

    .line 3731
    .local v8, "doAllocatePduSessionId":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    move v3, v1

    move-object v4, p0

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeDataConnection(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;Z)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 3734
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3736
    .end local v1    # "id":I
    .end local v8    # "doAllocatePduSessionId":Z
    :cond_55
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->fakeNetworkAgent(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 3738
    .end local v0    # "conn":Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    :cond_58
    return-void
.end method

.method protected mtkFetchCpaApn()Landroid/telephony/data/ApnSetting;
    .registers 3

    .line 4290
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->preCheckCpaDcTrackerInstance()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4291
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getRequestCpaMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NAVI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    .line 4292
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCurrentCpaMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 4293
    :cond_20
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaConnectionInfo()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 4294
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCpaDcTracker:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;->getCpaConnectionInfo()Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnection;->getCpaApn()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0

    .line 4298
    :cond_33
    const-string v0, "[CpaDct]mCpaDcTracker is null!"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logv(Ljava/lang/String;)V

    .line 4300
    :cond_38
    const/4 v0, 0x0

    return-object v0
.end method

.method protected mtkGetOperatorNumeric()Ljava/lang/String;
    .registers 6

    .line 3407
    const/4 v0, 0x0

    .line 3408
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    const/4 v2, 0x2

    const-string v3, ""

    if-ne v1, v2, :cond_14

    .line 3409
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_11
    move-object v1, v3

    :goto_12
    move-object v0, v1

    goto :goto_1f

    .line 3411
    :cond_14
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1d
    move-object v1, v3

    :goto_1e
    move-object v0, v1

    .line 3414
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mtkGetOperatorNumeric: phone type = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " [1:GSM,2:CDMA], operator from mPhone = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3415
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", operator from RIL = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3414
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3418
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 3419
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_87

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 3421
    const-string v1, "mtkGetOperatorNumeric: wrong phone type, update it"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3422
    const-string v0, ""

    .line 3423
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->updatePhoneType()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 3424
    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhoneType:I

    if-ne v1, v2, :cond_7e

    .line 3426
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getCdmaNumeric()Ljava/lang/String;

    move-result-object v3

    :cond_7c
    move-object v0, v3

    goto :goto_87

    .line 3429
    :cond_7e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPlmnMvnoData:Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    if-eqz v1, :cond_86

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;->getGsmNumeric()Ljava/lang/String;

    move-result-object v3

    :cond_86
    move-object v0, v3

    .line 3434
    :cond_87
    :goto_87
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getOperatorNumericFromImpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected mtkHandlePcoByOp(Lcom/android/internal/telephony/dataconnection/ApnContext;Landroid/telephony/PcoData;)V
    .registers 6
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "pcoData"    # Landroid/telephony/PcoData;

    .line 3676
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v0, :cond_16

    .line 3677
    invoke-interface {v0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->getPcoActionByApnType(Lcom/android/internal/telephony/dataconnection/ApnContext;Landroid/telephony/PcoData;)I

    move-result v0

    .line 3678
    .local v0, "pcoAction":I
    packed-switch v0, :pswitch_data_18

    goto :goto_16

    .line 3680
    :pswitch_c
    const-string v1, "mtkHandlePcoByOp action1: teardown default apn"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3681
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 3687
    .end local v0    # "pcoAction":I
    :cond_16
    :goto_16
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method protected mtkIsApnCanSupportNetworkType(Landroid/telephony/data/ApnSetting;I)Z
    .registers 7
    .param p1, "apn"    # Landroid/telephony/data/ApnSetting;
    .param p2, "radioTech"    # I

    .line 3927
    const/4 v0, 0x0

    .line 3928
    .local v0, "canHandle":Z
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    .line 3929
    .local v1, "networkType":I
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    const/16 v3, 0x200

    if-ne v2, v3, :cond_3a

    if-nez v1, :cond_3a

    .line 3931
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 3932
    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Landroid/telephony/data/ApnSetting;->canSupportNetworkType(I)Z

    move-result v0

    goto :goto_26

    .line 3933
    :cond_1b
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_26

    .line 3934
    const/16 v2, 0x12

    invoke-virtual {p1, v2}, Landroid/telephony/data/ApnSetting;->canSupportNetworkType(I)Z

    move-result v0

    .line 3936
    :cond_26
    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mtkIsApnCanSupportNetworkType] return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logi(Ljava/lang/String;)V

    .line 3939
    :cond_3a
    return v0
.end method

.method protected mtkIsPermanentFailure(I)Z
    .registers 7
    .param p1, "dcFailCause"    # I

    .line 3160
    const/4 v0, 0x0

    .line 3162
    .local v0, "bPermanent":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataConnectionExt:Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;

    if-eqz v1, :cond_14

    .line 3164
    :try_start_5
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;->isPermanentCause(I)Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_b

    move v0, v1

    .line 3168
    goto :goto_14

    .line 3165
    :catch_b
    move-exception v1

    .line 3166
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "mDataConnectionExt.isPermanentCause exception"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 3167
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3170
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_14
    :goto_14
    const/16 v1, 0xf46

    if-ne p1, v1, :cond_31

    .line 3171
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3172
    .local v1, "strOperatorNumeric":Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 3173
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->KDDI_OPERATOR:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_31

    .line 3174
    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 3175
    const/4 v0, 0x1

    .line 3176
    goto :goto_31

    .line 3173
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 3181
    .end local v1    # "strOperatorNumeric":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_31
    :goto_31
    return v0
.end method

.method protected mtkIsUseCarrierRoamingData()Z
    .registers 2

    .line 3837
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected mtkModifyInterApnDelay(JLcom/android/internal/telephony/dataconnection/ApnContext;)J
    .registers 7
    .param p1, "delay"    # J
    .param p3, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3112
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vsim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 3113
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3114
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "apnChanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_61

    .line 3116
    :cond_25
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mFastRetryAfterDisconnecting:Z

    if-nez v0, :cond_43

    .line 3118
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf8e

    .line 3119
    invoke-static {v1}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 3118
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3120
    :cond_43
    const-wide/16 p1, 0x64

    goto :goto_63

    .line 3121
    :cond_46
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 3122
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "emergency"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 3123
    :cond_5e
    const-wide/16 p1, -0x1

    goto :goto_63

    .line 3115
    :cond_61
    :goto_61
    const-wide/16 p1, 0x3e8

    .line 3125
    :cond_63
    :goto_63
    return-wide p1
.end method

.method protected mtkSkipDataStallAlarm()Z
    .registers 7

    .line 3761
    const/4 v0, 0x1

    .line 3762
    .local v0, "skipStall":Z
    const/4 v1, 0x0

    .line 3763
    .local v1, "isTestSim":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 3764
    .local v2, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v3

    .line 3766
    .local v3, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eqz v3, :cond_1b

    .line 3767
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isTestIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3768
    const/4 v1, 0x1

    .line 3771
    :cond_1b
    const-string v4, "persist.vendor.skip.data.stall.alarm"

    if-eqz v1, :cond_2f

    .line 3772
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 3773
    const/4 v0, 0x0

    goto :goto_3e

    .line 3776
    :cond_2d
    const/4 v0, 0x1

    goto :goto_3e

    .line 3779
    :cond_2f
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 3780
    const/4 v0, 0x1

    goto :goto_3e

    .line 3783
    :cond_3d
    const/4 v0, 0x0

    .line 3788
    :goto_3e
    const-string v4, "default"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getActiveApnString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ctvpdn"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 3789
    const/4 v0, 0x1

    .line 3792
    :cond_4d
    return v0
.end method

.method protected mtkSyncApnContextDisableState(Lcom/android/internal/telephony/dataconnection/ApnContext;I)V
    .registers 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "releaseType"    # I

    .line 3613
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRetryRestrictEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3614
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3615
    .local v0, "apnContextDefault":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_30

    if-eqz p1, :cond_30

    .line 3616
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    .line 3617
    .local v1, "apnSettingDefault":Landroid/telephony/data/ApnSetting;
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3618
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3619
    const-string v2, "mtkSyncApnContextDisableState: do not sync disable info."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logw(Ljava/lang/String;)V

    .line 3620
    return-void

    .line 3624
    .end local v0    # "apnContextDefault":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "apnSettingDefault":Landroid/telephony/data/ApnSetting;
    :cond_30
    if-eqz p1, :cond_98

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 3625
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6f

    .line 3626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Apn type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not connected, we need to sync the disable state with RIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3628
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getApnProfileID(Ljava/lang/String;)I

    move-result v0

    .line 3629
    .local v0, "nProfileId":I
    mul-int/lit8 v0, v0, -0x1

    .line 3630
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->deactivateDataCall(IILandroid/os/Message;)V

    .end local v0    # "nProfileId":I
    goto :goto_98

    .line 3632
    :cond_6f
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dun"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    if-ne p2, v2, :cond_98

    .line 3634
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    .line 3635
    .local v0, "apnSetting":Landroid/telephony/data/ApnSetting;
    if-eqz v0, :cond_98

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 3636
    const-string v1, "This apn context has INTERNET capability and CS will not tear it down"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3637
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    .line 3638
    invoke-virtual {p0, v2, p2, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    nop

    .line 3642
    .end local v0    # "apnSetting":Landroid/telephony/data/ApnSetting;
    :cond_98
    :goto_98
    return-void
.end method

.method public notifyMtkServiceStateChanged(Lmediatek/telephony/MtkServiceState;)V
    .registers 3
    .param p1, "ss"    # Lmediatek/telephony/MtkServiceState;

    .line 3708
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsNotifyDataAttached:Z

    if-nez v0, :cond_24

    invoke-virtual {p1}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_24

    .line 3709
    invoke-virtual {p1}, Lmediatek/telephony/MtkServiceState;->getDataRoaming()Z

    move-result v0

    if-nez v0, :cond_24

    .line 3710
    const-string v0, "notifyMtkServiceStateChanged: send EVENT_DATA_CONNECTION_ATTACHED"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsNotifyDataAttached:Z

    .line 3712
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTurboSS:Lmediatek/telephony/MtkServiceState;

    .line 3713
    const v0, 0x42010

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 3715
    :cond_24
    return-void
.end method

.method protected onApnChanged()V
    .registers 3

    .line 1255
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v0, :cond_d

    .line 1257
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    .line 1261
    :cond_d
    const-string v0, "apn changed!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkCpaModeOnApnChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 1266
    :cond_16
    const-string v0, "onApnChanged: createAllApnList and cleanUpAllConnections"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataThrottler:Lcom/android/internal/telephony/dataconnection/DataThrottler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->reset()V

    .line 1268
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDefaultPreferredApnIfNeeded()V

    .line 1269
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createAllApnList()V

    .line 1270
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataProfilesAsNeeded()V

    .line 1271
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    .line 1272
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isAnyDataConnected()Z

    move-result v0

    const-string v1, "apnChanged"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionsOnUpdatedApns(ZLjava/lang/String;)V

    .line 1275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendOnApnChangedDone(Z)V

    .line 1277
    return-void
.end method

.method protected onDataEnabledChanged(ZI)V
    .registers 8
    .param p1, "enable"    # Z
    .param p2, "enabledChangedReason"    # I

    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataEnabledChanged: enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enabledChangedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2024
    if-eqz p1, :cond_29

    .line 2025
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->reevaluateDataConnections()V

    .line 2026
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto :goto_5e

    .line 2029
    :cond_29
    sparse-switch p2, :sswitch_data_60

    .line 2041
    const-string v0, "specificDisabled"

    .local v0, "cleanupReason":Ljava/lang/String;
    goto :goto_35

    .line 2034
    .end local v0    # "cleanupReason":Ljava/lang/String;
    :sswitch_2f
    const-string v0, "carrierActionDisableMeteredApn"

    .line 2035
    .restart local v0    # "cleanupReason":Ljava/lang/String;
    goto :goto_35

    .line 2031
    .end local v0    # "cleanupReason":Ljava/lang/String;
    :sswitch_32
    const-string v0, "dataDisabledInternal"

    .line 2032
    .restart local v0    # "cleanupReason":Ljava/lang/String;
    nop

    .line 2046
    :goto_35
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2047
    .local v2, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataAllowedAsOff(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 2048
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2049
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 2051
    .end local v2    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_5d
    goto :goto_3f

    .line 2054
    .end local v0    # "cleanupReason":Ljava/lang/String;
    :cond_5e
    :goto_5e
    return-void

    nop

    :sswitch_data_60
    .sparse-switch
        0x1 -> :sswitch_32
        0x4 -> :sswitch_2f
    .end sparse-switch
.end method

.method protected onDataRoamingOff()V
    .registers 7

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataRoamingOff getDataRoamingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUserDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 1341
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1340
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    .line 1348
    .local v0, "currentRoamingType":I
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setRoamingDataWithRoamingType(I)Z

    .line 1350
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->reevaluateDataConnections()V

    .line 1352
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v1

    const-string v2, "roamingOff"

    if-eqz v1, :cond_89

    .line 1354
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticDataRoamingEnabledFromSettings()Z

    move-result v1

    .line 1355
    .local v1, "bDomDataOnRoamingEnabled":Z
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getInternationalDataRoamingEnabledFromSettings()Z

    move-result v3

    .line 1357
    .local v3, "bIntDataOnRoamingEnabled":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDomOrIntRoamingOn bDomDataOnRoamingEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", bIntDataOnRoamingEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", currentRoamingType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1359
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1357
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1361
    if-eqz v1, :cond_78

    if-nez v3, :cond_88

    .line 1362
    :cond_78
    const-string v4, "onDomOrIntRoamingOn: setup data for HOME."

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataProfilesAsNeeded()V

    .line 1369
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    .line 1374
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v2, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 1377
    .end local v1    # "bDomDataOnRoamingEnabled":Z
    .end local v3    # "bIntDataOnRoamingEnabled":Z
    :cond_88
    goto :goto_a0

    .line 1378
    :cond_89
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v1

    if-nez v1, :cond_a0

    .line 1385
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 1386
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataProfilesAsNeeded()V

    .line 1387
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    .line 1393
    :cond_9b
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 1397
    :cond_a0
    :goto_a0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v1

    if-nez v1, :cond_af

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isOp18Sim()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 1398
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    .line 1400
    :cond_af
    return-void
.end method

.method protected onDataRoamingOnOrSettingsChanged(I)V
    .registers 9
    .param p1, "messageType"    # I

    .line 1405
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    .line 1406
    .local v0, "currentRoamingType":I
    const/4 v1, 0x1

    const v2, 0x42030

    if-ne p1, v2, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 1409
    .local v2, "settingChanged":Z
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataRoamingOnOrSettingsChanged getDataRoamingEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mUserDataEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 1411
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", settingChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", currentRoamingType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1409
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1417
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 1418
    const-string v1, "Device is not roaming, ignore the request."

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1419
    return-void

    .line 1425
    :cond_5b
    if-nez v2, :cond_64

    .line 1426
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setRoamingDataWithRoamingType(I)Z

    move-result v3

    if-eqz v3, :cond_64

    return-void

    .line 1429
    :cond_64
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->checkDataRoamingStatus(Z)V

    .line 1431
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v3

    if-nez v3, :cond_76

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isOp18Sim()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1432
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setInitialAttachApn()V

    .line 1436
    :cond_76
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v3

    const-string v4, "onDataRoamingOnOrSettingsChanged: Tear down data connection on roaming."

    const-string v5, "onDataRoamingOnOrSettingsChanged: setup data on roaming"

    const-string v6, "roamingOn"

    if-eqz v3, :cond_9f

    .line 1437
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->checkDomesticDataRoamingEnabled()Z

    move-result v3

    if-nez v3, :cond_96

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->checkInternationalDataRoamingEnabled()Z

    move-result v3

    if-eqz v3, :cond_8f

    goto :goto_96

    .line 1441
    :cond_8f
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {p0, v1, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    goto :goto_d4

    .line 1438
    :cond_96
    :goto_96
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1439
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v6, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto :goto_d4

    .line 1445
    :cond_9f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v3

    if-nez v3, :cond_c7

    .line 1447
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDomesticRoamingEnabled()Z

    move-result v3

    if-eqz v3, :cond_ac

    goto :goto_c7

    .line 1462
    :cond_ac
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1463
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1464
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getVsimCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    move-result-object v3

    .line 1465
    .local v3, "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    sget-object v4, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->REMOTE_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-ne v3, v4, :cond_c3

    .line 1466
    const-string v1, "RSim, not tear down any data connection since ignore data roaming"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    goto :goto_d4

    .line 1468
    :cond_c3
    invoke-virtual {p0, v1, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    goto :goto_d4

    .line 1451
    .end local v3    # "type":Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    :cond_c7
    :goto_c7
    if-eqz v2, :cond_cc

    .line 1452
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->reevaluateDataConnections()V

    .line 1455
    :cond_cc
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1457
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, v6, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 1471
    :goto_d4
    return-void
.end method

.method protected onDisconnectDone(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .registers 6
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1476
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1477
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 1476
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isOperatorMccMnc(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1478
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkCpaModeOnDataDisconnect(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    .line 1482
    :cond_15
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDisconnectDone(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1484
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->areAllDataDisconnectedExceptIms()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1485
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1486
    .local v1, "apncontext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ims"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1487
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_57

    .line 1488
    const-string v0, "all data disconnect except ims, power off radio immediately"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    .line 1490
    goto :goto_58

    .line 1492
    .end local v1    # "apncontext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_57
    goto :goto_28

    .line 1494
    :cond_58
    :goto_58
    return-void
.end method

.method public onDsdaStateChanged()V
    .registers 4

    .line 2954
    const-string v0, "onDsdaStateChanged"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2955
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 2956
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    move v2, v1

    goto :goto_18

    .line 2957
    :cond_e
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v2

    :goto_18
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    .line 2959
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isAnyDataConnected()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2960
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    if-nez v2, :cond_2b

    .line 2961
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopNetStatPoll()V

    .line 2962
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopDataStallAlarm()V

    goto :goto_31

    .line 2964
    :cond_2b
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startNetStatPoll()V

    .line 2965
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startDataStallAlarm(Z)V

    .line 2967
    :goto_31
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyVoiceCallEventToDataConnection(Z)V

    .line 2971
    :cond_36
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    if-eqz v1, :cond_41

    .line 2972
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v2, "dataAllowed"

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 2975
    :cond_41
    return-void
.end method

.method protected onSimAbsent()V
    .registers 2

    .line 1309
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setIsPcoAllowedDefault(Z)V

    .line 1310
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->resetSimStatus()V

    .line 1312
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSimAbsent()V

    .line 1313
    return-void
.end method

.method public onVoiceCallEndedEx()V
    .registers 5

    .line 3002
    const-string v0, "onVoiceCallEndedEx"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3003
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    .line 3004
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    .line 3005
    .local v1, "prevIsSupportConcurrent":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v2

    .line 3006
    .local v2, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    if-nez v2, :cond_12

    move v3, v0

    goto :goto_1c

    .line 3007
    :cond_12
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v3

    :goto_1c
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    .line 3009
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isAnyDataConnected()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 3010
    if-eqz v1, :cond_2f

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    if-eqz v3, :cond_2b

    goto :goto_2f

    .line 3015
    :cond_2b
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->resetPollStats()V

    goto :goto_35

    .line 3011
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startNetStatPoll()V

    .line 3012
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->startDataStallAlarm(Z)V

    .line 3020
    :cond_35
    :goto_35
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v3, "2GVoiceCallEnded"

    invoke-virtual {p0, v3, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 3021
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyVoiceCallEventToDataConnection(Z)V

    .line 3022
    return-void
.end method

.method public onVoiceCallStartedEx()V
    .registers 3

    .line 2939
    const-string v0, "onVoiceCallStartedEx"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    .line 2941
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 2942
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    if-nez v0, :cond_10

    const/4 v1, 0x0

    goto :goto_1a

    .line 2943
    :cond_10
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isDataAllowedForConcurrent(I)Z

    move-result v1

    :goto_1a
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    .line 2945
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isAnyDataConnected()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSupportConcurrent:Z

    if-nez v1, :cond_31

    .line 2946
    const-string v1, "onVoiceCallStarted stop polling"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2947
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopNetStatPoll()V

    .line 2948
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->stopDataStallAlarm()V

    .line 2950
    :cond_31
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mInVoiceCall:Z

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->notifyVoiceCallEventToDataConnection(Z)V

    .line 2951
    return-void
.end method

.method public processPendingSetupData(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)V
    .registers 3
    .param p1, "sst"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 2908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPendingDataCall:Z

    .line 2909
    const v0, 0x421fa

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2910
    return-void
.end method

.method protected readConfiguration()V
    .registers 1

    .line 1303
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->readConfiguration()V

    .line 1304
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->readAddOnConfiguration()V

    .line 1305
    return-void
.end method

.method protected registerForAllEvents()V
    .registers 4

    .line 375
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllEvents()V

    .line 378
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 379
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerForAllEvents: mPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42202

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForRemoveRestrictEutran(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42201

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForMdDataRetryCountReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x4220f

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForPlmnData(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 395
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v0

    if-nez v0, :cond_62

    .line 397
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x421ff

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForResetAttachApn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 402
    :cond_62
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42204

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForPcoDataAfterAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42205

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForDedicatedBearerActivated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 409
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42206

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForDedicatedBearerModified(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x42207

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForDedicatedBearerDeactivationed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x4220d

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForMobileDataUsage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x4220e

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForNwLimitState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 421
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c5

    .line 422
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x4220a

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForNetworkReject(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 424
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    const v1, 0x42210

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 428
    :cond_c5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const v1, 0x4220c

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 429
    return-void
.end method

.method public registerServiceStateTrackerEvents()V
    .registers 4

    .line 356
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerServiceStateTrackerEvents()V

    .line 359
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 360
    const v1, 0x42200

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->registerForDataRoamingTypeChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    return-void
.end method

.method protected registerSettingsObserver()V
    .registers 4

    .line 439
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SettingsObserver;->unobserve()V

    .line 440
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 441
    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 440
    const v2, 0x42032

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 446
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->registerFdnContentObserver()V

    .line 448
    return-void
.end method

.method protected retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1281
    const/4 v0, 0x1

    .line 1282
    .local v0, "retry":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 1284
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "radioTurnedOff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1286
    const-string v2, "FdnEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1288
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1289
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1290
    :cond_25
    const/4 v0, 0x0

    .line 1294
    :cond_26
    if-eqz v0, :cond_2c

    .line 1295
    invoke-virtual {p0, v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkCpaModeOnRetryAfterDisconnected(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v0

    .line 1298
    :cond_2c
    return v0
.end method

.method protected setDataProfilesAsNeeded()V
    .registers 10

    .line 1498
    const-string v0, "setDataProfilesAsNeeded"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1500
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 1501
    const-string v0, "setDataProfilesAsNeeded: IWLAN side ignore."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1502
    return-void

    .line 1507
    :cond_10
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkGetOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1508
    .local v0, "operator":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mIsSimNotReady:Z

    if-eqz v1, :cond_26

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_26

    .line 1509
    :cond_20
    const-string v1, "setDataProfilesAsNeeded: ignore, sim not ready and no operator numeric"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1510
    return-void

    .line 1514
    :cond_26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1516
    .local v1, "dataProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/DataProfile;>;"
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getPreferredApnSetId()I

    move-result v2

    .line 1517
    .local v2, "preferredApnSetId":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/ApnSetting;

    .line 1518
    .local v4, "apn":Landroid/telephony/data/ApnSetting;
    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_74

    .line 1519
    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v5

    if-ne v2, v5, :cond_4f

    goto :goto_74

    .line 1528
    :cond_4f
    sget-boolean v5, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    if-eqz v5, :cond_8e

    .line 1529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataProfilesAsNeeded: APN set id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " does not match the preferred set id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    goto :goto_8e

    .line 1521
    :cond_74
    :goto_74
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->encodeInactiveTimer(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/ApnSetting;

    move-result-object v5

    .line 1522
    .local v5, "apnEncode":Landroid/telephony/data/ApnSetting;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createDataProfile(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;

    move-result-object v6

    .line 1524
    .local v6, "dp":Landroid/telephony/data/DataProfile;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8d

    .line 1525
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    .end local v5    # "apnEncode":Landroid/telephony/data/ApnSetting;
    .end local v6    # "dp":Landroid/telephony/data/DataProfile;
    :cond_8d
    nop

    .line 1533
    .end local v4    # "apn":Landroid/telephony/data/ApnSetting;
    :cond_8e
    :goto_8e
    goto :goto_35

    .line 1536
    :cond_8f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->fetchDunApns()Ljava/util/ArrayList;

    move-result-object v3

    .line 1537
    .local v3, "dunApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    if-eqz v3, :cond_d5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d5

    .line 1538
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/data/ApnSetting;

    .line 1539
    .local v5, "dun":Landroid/telephony/data/ApnSetting;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createDataProfile(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;

    move-result-object v6

    .line 1540
    .local v6, "dpDun":Landroid/telephony/data/DataProfile;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d4

    .line 1541
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDataProfilesAsNeeded: add DUN apn setting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1544
    .end local v5    # "dun":Landroid/telephony/data/ApnSetting;
    .end local v6    # "dpDun":Landroid/telephony/data/DataProfile;
    :cond_d4
    goto :goto_9f

    .line 1549
    :cond_d5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_fc

    .line 1551
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1552
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/telephony/data/DataProfile;

    .line 1551
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/data/DataProfile;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1553
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v6

    const/4 v7, 0x0

    .line 1551
    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V

    goto :goto_101

    .line 1556
    :cond_fc
    const-string v4, "setDataProfilesAsNeeded: ignore the empty data profile list"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1558
    :goto_101
    return-void
.end method

.method protected setInitialAttachApn()V
    .registers 10

    .line 1208
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 1209
    const-string v0, "setInitialAttachApn: IWLAN side ignore."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1210
    return-void

    .line 1214
    :cond_b
    const/4 v0, 0x0

    .line 1215
    .local v0, "apnSetting":Landroid/telephony/data/ApnSetting;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getPreferredApnSetId()I

    move-result v1

    .line 1216
    .local v1, "preferredApnSetId":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v2, "allApnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    if-eqz v3, :cond_1e

    .line 1220
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    :cond_1e
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1225
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getAllowedInitialAttachApnTypes()Ljava/util/List;

    move-result-object v3

    .line 1226
    .local v3, "allowedApnTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1227
    .local v5, "allowedApnType":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda3;

    invoke-direct {v8, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1228
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda4;

    invoke-direct {v8, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1229
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 1231
    invoke-interface {v7}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v7

    .line 1232
    invoke-virtual {v7, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/telephony/data/ApnSetting;

    .line 1233
    if-eqz v0, :cond_60

    goto :goto_61

    .line 1234
    .end local v5    # "allowedApnType":I
    :cond_60
    goto :goto_2b

    .line 1236
    :cond_61
    :goto_61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInitialAttachApn: Allowed APN types="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda2;->INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda2;

    .line 1237
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 1238
    const-string v7, ","

    invoke-static {v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1236
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1241
    if-nez v0, :cond_93

    .line 1242
    const-string v4, "setInitialAttachApn: X There is no available apn."

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    goto :goto_c6

    .line 1244
    :cond_93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInitialAttachApn: X selected Apn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1246
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1247
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1246
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createDataProfile(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1248
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v7

    .line 1246
    invoke-virtual {v4, v5, v7, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V

    .line 1251
    :goto_c6
    return-void
.end method

.method protected setPreferredApn(I)V
    .registers 4
    .param p1, "pos"    # I

    .line 1717
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mCanSetPreferApn:Z

    if-eqz v0, :cond_26

    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredApn: insert pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1720
    :cond_26
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 1721
    return-void
.end method

.method public setupDataForCpaChange(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 4089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CpaDct]setupDataForCpaChange() reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4090
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 4091
    return-void
.end method

.method protected setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retryFailures"    # Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    .line 859
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    const-string v1, "setupDataOnAllConnectableApns: "

    if-eqz v0, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 861
    :cond_18
    if-nez v0, :cond_72

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 863
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 864
    .local v3, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    const-string v4, ":[state="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 867
    const-string v4, ",enabled="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 869
    const-string v4, "] "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_27

    .line 871
    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 874
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_72
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 876
    .local v1, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRetryRestrictEnabled()Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 877
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 878
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dun"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 879
    :cond_a2
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    .line 880
    .local v2, "apnSetting":Landroid/telephony/data/ApnSetting;
    if-eqz v2, :cond_ca

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getPermanentFailed()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 881
    const-string v3, "2GVoiceCallEnded"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ca

    .line 882
    const-string v3, "nwTypeChanged"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ca

    .line 883
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    .line 884
    const-string v3, "set permanentFailed as false for default/dun apn"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->cancelReconnect(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 891
    .end local v2    # "apnSetting":Landroid/telephony/data/ApnSetting;
    :cond_ca
    invoke-virtual {p0, v1, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupDataOnConnectableApn(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 892
    .end local v1    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_78

    .line 893
    :cond_ce
    return-void
.end method

.method protected setupDataOnConnectableApn(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V
    .registers 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "retryFailures"    # Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    .line 898
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->VDBG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupDataOnConnectableApn: apnContext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 900
    :cond_18
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_28

    .line 901
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_45

    .line 902
    :cond_28
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    if-ne p3, v0, :cond_30

    .line 903
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    goto :goto_45

    .line 904
    :cond_30
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 905
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 907
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    .line 910
    :cond_45
    :goto_45
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 912
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 913
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_68

    .line 925
    :cond_62
    const-string v0, "No need to trysetupdata as higher priority apncontext exists"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    goto :goto_85

    .line 914
    :cond_68
    :goto_68
    const-string v0, "isConnectable() call trySetupData"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 917
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHandoverApnType:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_81

    .line 918
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mHandoverApnType:I

    .line 919
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;ILandroid/os/Message;)V

    goto :goto_85

    .line 922
    :cond_81
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;ILandroid/os/Message;)V

    .line 929
    :cond_85
    :goto_85
    return-void
.end method

.method public setupPdnByType(Ljava/lang/String;)Z
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .line 3698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupPdnByType: sendMessage: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3699
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x42003

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 3700
    const/4 v0, 0x1

    return v0
.end method

.method public shouldAutoAttach()Z
    .registers 4

    .line 2007
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v0

    .line 2008
    .local v0, "phoneSwitcher":Lcom/android/internal/telephony/PhoneSwitcher;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2009
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v2

    if-ne v1, v2, :cond_19

    .line 2010
    const-string v1, "shouldAutoAttach: prefer data sim should not auto attach"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 2011
    const/4 v1, 0x0

    return v1

    .line 2013
    :cond_19
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->shouldAutoAttach()Z

    move-result v1

    return v1
.end method

.method protected shouldCleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)Z
    .registers 11
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "disableMeteredOnly"    # Z
    .param p3, "singlePdn"    # Z

    .line 1180
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1183
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    .line 1184
    .local v1, "apnSetting":Landroid/telephony/data/ApnSetting;
    const/4 v2, 0x1

    if-eqz v1, :cond_e

    if-eqz p3, :cond_e

    return v2

    .line 1187
    :cond_e
    if-nez p2, :cond_11

    return v2

    .line 1190
    :cond_11
    if-eqz v1, :cond_50

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMetered(Landroid/telephony/data/ApnSetting;Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_50

    .line 1192
    :cond_1c
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    .line 1193
    .local v3, "isRoaming":Z
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRoamingEnabled()Z

    move-result v4

    xor-int/2addr v4, v2

    .line 1194
    .local v4, "isDataRoamingDisabled":Z
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 1195
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v6

    .line 1194
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(I)Z

    move-result v5

    xor-int/2addr v5, v2

    .line 1198
    .local v5, "isDataDisabled":Z
    if-nez v5, :cond_4e

    .line 1200
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v6

    if-nez v6, :cond_42

    if-eqz v3, :cond_42

    if-nez v4, :cond_4e

    .line 1201
    :cond_42
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isUniqueRoamingFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataRoamingTypeAllowed()Z

    move-result v6

    if-nez v6, :cond_4f

    :cond_4e
    move v0, v2

    .line 1198
    :cond_4f
    return v0

    .line 1190
    .end local v3    # "isRoaming":Z
    .end local v4    # "isDataRoamingDisabled":Z
    .end local v5    # "isDataDisabled":Z
    :cond_50
    :goto_50
    return v0
.end method

.method protected sortApnContextByPriority()V
    .registers 8

    .line 561
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 562
    const-string v0, "sortApnContextByPriority: isDataCapable == false.  No Apn Contexts loaded"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 563
    return-void

    .line 567
    :cond_e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 568
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 569
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_29

    .line 570
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    goto :goto_2a

    .line 572
    .end local v1    # "carrierConfig":Landroid/os/PersistableBundle;
    :cond_29
    const/4 v1, 0x0

    .line 575
    .restart local v1    # "carrierConfig":Landroid/os/PersistableBundle;
    :goto_2a
    const-string v2, "sortApnContextByPriority: E"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 577
    new-instance v2, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;

    invoke-direct {v2, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;-><init>(Landroid/os/PersistableBundle;)V

    .line 578
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkApnConfigTypeRepository;->getTypes()Ljava/util/Collection;

    move-result-object v2

    .line 579
    .local v2, "types":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/dataconnection/ApnConfigType;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnConfigType;

    .line 580
    .local v4, "apnConfigType":Lcom/android/internal/telephony/dataconnection/ApnConfigType;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 581
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 582
    .local v5, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnConfigType;->getPriority()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setPriority(I)V

    .line 584
    .end local v4    # "apnConfigType":Lcom/android/internal/telephony/dataconnection/ApnConfigType;
    .end local v5    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_67
    goto :goto_3c

    .line 587
    :cond_68
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 589
    .local v3, "prioritySortedApnContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda1;->INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda1;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 590
    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    .line 591
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logSortedApnContexts()V

    .line 592
    return-void
.end method

.method protected startDataStallAlarm(Z)V
    .registers 3
    .param p1, "suspectedStall"    # Z

    .line 2193
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkSkipDataStallAlarm()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2194
    const-string v0, "onDataStallAlarm: switch data-stall off, skip it!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    goto :goto_f

    .line 2196
    :cond_c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    .line 2198
    :goto_f
    return-void
.end method

.method public tearDownPdnByType(Ljava/lang/String;)Z
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .line 3690
    const v0, 0x4220b

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3691
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tearDownPdnByType: sendMessage: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 3693
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 3694
    const/4 v1, 0x1

    return v1
.end method

.method protected trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;ILandroid/os/Message;)V
    .registers 13
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "requestType"    # I
    .param p3, "onHandoverCompleteMsg"    # Landroid/os/Message;

    .line 934
    if-eqz p3, :cond_9

    .line 935
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->addHandoverCompleteMsg(Landroid/os/Message;I)V

    .line 938
    :cond_9
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 939
    const-string v0, "trySetupData: X We\'re on the simulator; assuming connected retValue=true"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 940
    return-void

    .line 943
    :cond_17
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;-><init>()V

    .line 944
    .local v0, "dataConnectionReasons":Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;
    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;ILcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2d

    .line 946
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isDataAllowedExt(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_2d

    :cond_2b
    move v1, v3

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v1, v2

    .line 948
    .local v1, "isDataAllowed":Z
    :goto_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trySetupData for APN type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", requestType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->requestTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 951
    .local v4, "logStr":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DISABLED_BY_QNS:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v5

    if-nez v5, :cond_77

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ON_OTHER_TRANSPORT:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 952
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 953
    :cond_77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", current transport="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 954
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v6

    .line 955
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v7

    .line 954
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getCurrentTransport(I)I

    move-result v6

    .line 953
    invoke-static {v6}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 956
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", preferred transport="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 957
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v6

    .line 958
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v7

    .line 957
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getPreferredTransport(I)I

    move-result v6

    .line 956
    invoke-static {v6}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 960
    :cond_c3
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 962
    const/4 v5, 0x2

    if-nez v1, :cond_1a1

    .line 964
    const-string v6, " stop retry"

    invoke-virtual {p0, p1, v0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkCpaModeOnTrySetupDataError(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;Ljava/lang/String;)Z

    .line 966
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 968
    .local v6, "str":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "trySetupData failed. apnContext = [type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", apnEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mDependencyMet="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDependencyMet()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 968
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v7

    if-nez v7, :cond_135

    .line 974
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDataEnabled() = false. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    :cond_135
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DATA_IS_DISCONNECTING:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v7

    if-eqz v7, :cond_161

    .line 979
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->isHandoverPending(I)Z

    move-result v7

    if-eqz v7, :cond_14d

    .line 985
    const-string v2, "Data is disconnecting. Will retry handover later."

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 986
    return-void

    .line 988
    :cond_14d
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "default"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_163

    .line 989
    const-string v7, "Data is disconnecting. Will retry after disconnect done."

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 990
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mFastRetryAfterDisconnecting:Z

    goto :goto_163

    .line 993
    :cond_161
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mFastRetryAfterDisconnecting:Z

    .line 998
    :cond_163
    :goto_163
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v7, :cond_183

    .line 1000
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->MTK_DATA_RETRY_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    if-eqz v2, :cond_179

    .line 1002
    const-string v2, " Keep retrying."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_183

    .line 1005
    :cond_179
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1006
    const-string v2, " Stop retrying."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    :cond_183
    :goto_183
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1012
    if-ne p2, v5, :cond_1a0

    .line 1016
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ON_OTHER_TRANSPORT:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result v2

    .line 1018
    .local v2, "fallback":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v5

    invoke-virtual {p0, v5, v3, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendHandoverCompleteMessages(IZZ)V

    .line 1020
    .end local v2    # "fallback":Z
    :cond_1a0
    return-void

    .line 1023
    .end local v6    # "str":Ljava/lang/StringBuilder;
    :cond_1a1
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mFastRetryAfterDisconnecting:Z

    .line 1024
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v6, :cond_1b8

    .line 1025
    const-string v2, "trySetupData: make a FAILED ApnContext IDLE so its reusable"

    .line 1026
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1028
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1030
    .end local v2    # "str":Ljava/lang/String;
    :cond_1b8
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getDataRat()I

    move-result v2

    .line 1031
    .local v2, "radioTech":I
    if-nez v2, :cond_1ce

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    .line 1032
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_1ce

    .line 1033
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->getVoiceRat()I

    move-result v2

    .line 1035
    :cond_1ce
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1036
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v6

    .line 1037
    invoke-virtual {v6}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v6

    .line 1036
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    .line 1038
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v6, v7, :cond_275

    .line 1040
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "emergency"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22f

    .line 1041
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_22f

    .line 1042
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add mEmergencyApn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mEmergencyApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to mAllApnSettings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->addDefaultApnSettingsAsNeeded()V

    .line 1047
    :cond_22f
    nop

    .line 1048
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v6

    .line 1049
    .local v6, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_258

    .line 1050
    const-string v7, "trySetupData: X No APN found retValue=false"

    .line 1051
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkFakeDataConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1058
    const-string v8, "waitingApns is empty"

    invoke-virtual {p0, p1, v0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkCpaModeOnTrySetupDataError(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;Ljava/lang/String;)Z

    .line 1060
    if-ne p2, v5, :cond_257

    .line 1061
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v5

    invoke-virtual {p0, v5, v3, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendHandoverCompleteMessages(IZZ)V

    .line 1064
    :cond_257
    return-void

    .line 1066
    .end local v7    # "str":Ljava/lang/String;
    :cond_258
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 1068
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "trySetupData: Create from mAllApnSettings : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 1069
    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1068
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->log(Ljava/lang/String;)V

    .line 1074
    .end local v6    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    :cond_275
    invoke-virtual {p0, p1, v2, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;II)Z

    move-result v6

    if-nez v6, :cond_284

    if-ne p2, v5, :cond_284

    .line 1076
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v5

    invoke-virtual {p0, v5, v3, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->sendHandoverCompleteMessages(IZZ)V

    .line 1080
    :cond_284
    const-string v3, " call setupData"

    invoke-virtual {p0, p1, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mtkCpaModeOnTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)Z

    .line 1082
    return-void
.end method

.method protected unregisterForAllEvents()V
    .registers 3

    .line 488
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllEvents()V

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterForAllEvents: mPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForRemoveRestrictEutran(Landroid/os/Handler;)V

    .line 495
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForMdDataRetryCountReset(Landroid/os/Handler;)V

    .line 497
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForPlmnData(Landroid/os/Handler;)V

    .line 499
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->hasOperatorIaCapability()Z

    move-result v0

    if-nez v0, :cond_43

    .line 501
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForResetAttachApn(Landroid/os/Handler;)V

    .line 505
    :cond_43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForPcoDataAfterAttached(Landroid/os/Handler;)V

    .line 508
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForDedicatedBearerActivated(Landroid/os/Handler;)V

    .line 509
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForDedicatedBearerModified(Landroid/os/Handler;)V

    .line 510
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForDedicatedBearerDeactivationed(Landroid/os/Handler;)V

    .line 513
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForMobileDataUsage(Landroid/os/Handler;)V

    .line 514
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForNwLimitState(Landroid/os/Handler;)V

    .line 515
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mTransportType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8e

    .line 516
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForNetworkReject(Landroid/os/Handler;)V

    .line 517
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 519
    :cond_8e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForModemReset(Landroid/os/Handler;)V

    .line 520
    return-void
.end method

.method public unregisterServiceStateTrackerEvents()V
    .registers 2

    .line 366
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterServiceStateTrackerEvents()V

    .line 369
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 370
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->unregisterForDataRoamingTypeChange(Landroid/os/Handler;)V

    .line 371
    return-void
.end method

.method public updateApnListForCpaConnection(Ljava/lang/String;Lmediatek/telephony/data/MtkApnSetting;)I
    .registers 10
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "apn"    # Lmediatek/telephony/data/MtkApnSetting;

    .line 4039
    const/4 v0, 0x0

    .line 4041
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]updateApnListForCpa: E mAllApnSettings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4043
    const-string v1, "NAVI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "[CpaDct]updateApnListForCpa: X mAllApnSettings="

    if-eqz v1, :cond_92

    if-eqz p2, :cond_92

    .line 4046
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4047
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataProfilesAsNeeded()V

    .line 4048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CpaDct]updateApnListForCpa: to MD mAllApnSettings="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4050
    invoke-virtual {p2}, Lmediatek/telephony/data/MtkApnSetting;->getApnTypeBitmask()I

    move-result v1

    .line 4052
    .local v1, "apnTypeBitmask":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/data/ApnSetting;>;"
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 4053
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v4

    .line 4054
    .local v4, "tempTypeBitmask":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CpaDct]tempTypeBitmask()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4055
    and-int v5, v1, v4

    if-lez v5, :cond_76

    .line 4056
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 4058
    .end local v4    # "tempTypeBitmask":I
    :cond_76
    goto :goto_4b

    .line 4060
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/data/ApnSetting;>;"
    :cond_77
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4061
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4066
    const/4 v0, 0x1

    .line 4067
    .end local v1    # "apnTypeBitmask":I
    goto :goto_ca

    :cond_92
    const-string v1, "DEFAULT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 4069
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->createAllApnList()V

    .line 4070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->logd(Ljava/lang/String;)V

    .line 4073
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->setDataProfilesAsNeeded()V

    .line 4075
    const/4 v0, 0x1

    goto :goto_ca

    .line 4077
    :cond_b6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CpaDct]paramter error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->loge(Ljava/lang/String;)V

    .line 4079
    :goto_ca
    return v0
.end method

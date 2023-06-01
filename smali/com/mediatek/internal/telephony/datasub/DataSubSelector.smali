.class public Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
.super Ljava/lang/Object;
.source "DataSubSelector.java"


# static fields
.field private static ACTION_BOOT_COMPLETE:Ljava/lang/String; = null

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "DSSelector"

.field private static final USER_BUILD:Z

.field private static mOperatorSpec:Ljava/lang/String;


# instance fields
.field private mAirplaneModeOn:Z

.field protected final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

.field private mContext:Landroid/content/Context;

.field private mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

.field private mIntent:Landroid/content/Intent;

.field private mIsInRoaming:Z

.field private mIsNeedPreCheck:Z

.field private mIsNeedWaitAirplaneModeOff:Z

.field private mIsNeedWaitAirplaneModeOffRoaming:Z

.field private mIsWaitIccid:Z

.field private mPrefNetworkModeObserver:Landroid/database/ContentObserver;

.field private mProtocolHandler:Landroid/os/Handler;

.field private mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

.field private mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->USER_BUILD:Z

    .line 78
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->ACTION_BOOT_COMPLETE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 59
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    .line 60
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsWaitIccid:Z

    .line 63
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedPreCheck:Z

    .line 64
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 65
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    .line 67
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mAirplaneModeOn:Z

    .line 71
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mContext:Landroid/content/Context;

    .line 72
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 73
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsInRoaming:Z

    .line 76
    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    .line 81
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$1;-><init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    new-instance v1, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$2;-><init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mPrefNetworkModeObserver:Landroid/database/ContentObserver;

    .line 133
    const-string v1, "DataSubSelector is created"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 134
    const-string v1, "persist.vendor.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    .line 136
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v2, "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    sget-object v2, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->ACTION_BOOT_COMPLETE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    iput-object p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mContext:Landroid/content/Context;

    .line 149
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->initOpDataSubSelector(Landroid/content/Context;)V

    .line 150
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    if-nez v0, :cond_76

    .line 151
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    .line 154
    :cond_76
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->initSimSwitchForDSS(Landroid/content/Context;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    if-nez v0, :cond_84

    .line 156
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    .line 159
    :cond_84
    invoke-static {p1, p0}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->getInstance(Landroid/content/Context;Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    .line 161
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    invoke-interface {v0, p0}, Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;->init(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    invoke-interface {v0, p0, v2}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->init(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;)V

    .line 164
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->registerPrefNetworkModeObserver()V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handleSimStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 53
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handleBootCompleteAction()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 53
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handlePrefNetworkModeChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;II)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->updateNetworkModeUtil(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handleDefaultDataChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 53
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mAirplaneModeOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 53
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handleAirPlaneModeOff(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 53
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handleSubinfoRecordUpdated(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    .line 53
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handleConnectivityAction()V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .line 53
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->ACTION_BOOT_COMPLETE:Ljava/lang/String;

    return-object v0
.end method

.method private handleAirPlaneModeOff(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->handleAirPlaneModeOff(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method private handleBootCompleteAction()V
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->handleBootCompleteAction()V

    .line 244
    return-void
.end method

.method private handleConnectivityAction()V
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->handleConnectivityAction()V

    .line 240
    return-void
.end method

.method private handleDefaultDataChanged(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 223
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->handleDefaultDataChanged(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method private handlePrefNetworkModeChanged()V
    .registers 4

    .line 212
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 214
    .local v0, "defDataSubId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 215
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 216
    .local v1, "defDataPhoneId":I
    if-ltz v1, :cond_16

    .line 217
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mCapabilitySwitch:Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/datasub/CapabilitySwitch;->setCapability(I)Z

    .line 220
    .end local v1    # "defDataPhoneId":I
    :cond_16
    return-void
.end method

.method private handleSimStateChanged(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 231
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->handleSimStateChanged(Landroid/content/Intent;)V

    .line 232
    return-void
.end method

.method private handleSubinfoRecordUpdated(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 227
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;->handleSubinfoRecordUpdated(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method private initOpDataSubSelector(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    nop

    .line 170
    :try_start_1
    invoke-static {p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 171
    nop

    .line 172
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeDataSubSelectorOPExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    .line 176
    goto :goto_18

    .line 173
    :catch_f
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "mDataSubSelectorOPExt init fail"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    return-void
.end method

.method private initSimSwitchForDSS(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    nop

    .line 182
    :try_start_1
    invoke-static {p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mTelephonyCustomizationFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 183
    nop

    .line 184
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeSimSwitchForDSSOPExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    .line 188
    goto :goto_18

    .line 185
    :catch_f
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "mSimSwitchForDSSExt init fail"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "txt"    # Ljava/lang/String;

    .line 361
    const-string v0, "DSSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "txt"    # Ljava/lang/String;

    .line 367
    const-string v0, "DSSelector"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method

.method private registerPrefNetworkModeObserver()V
    .registers 7

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 193
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 194
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 195
    iget-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mPrefNetworkModeObserver:Landroid/database/ContentObserver;

    .line 195
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 192
    .end local v1    # "subId":I
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    .end local v0    # "i":I
    :cond_39
    return-void
.end method

.method private updateNetworkModeUtil(II)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "mode"    # I

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating network mode for subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 351
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 352
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    nop

    .line 353
    const/4 v1, 0x0

    .line 355
    invoke-static {p2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v2

    int-to-long v2, v2

    .line 353
    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->setAllowedNetworkTypesForReason(IJ)V

    .line 357
    return-void
.end method


# virtual methods
.method public getAirPlaneModeOn()Z
    .registers 2

    .line 247
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mAirplaneModeOn:Z

    return v0
.end method

.method public getDataSubSelectorOpExt()Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mDataSubSelectorOPExt:Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;

    return-object v0
.end method

.method public getIsNeedPreCheck()Z
    .registers 2

    .line 259
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedPreCheck:Z

    return v0
.end method

.method public getIsWaitIccid()Z
    .registers 2

    .line 251
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsWaitIccid:Z

    return v0
.end method

.method public getPhoneNum()I
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 311
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 310
    return v0
.end method

.method public getSimSwitchForDSSExt()Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mSimSwitchForDSSExt:Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;

    return-object v0
.end method

.method public setDataEnabled(IZ)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataEnabled: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 270
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_9a

    .line 271
    const/4 v1, -0x1

    if-ne p1, v1, :cond_29

    .line 272
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_9a

    .line 274
    :cond_29
    const/4 v1, 0x0

    .line 275
    .local v1, "phoneSubId":I
    const-string v2, " to disable"

    const-string v3, "Set Sub"

    if-nez p2, :cond_51

    .line 276
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_9a

    .line 280
    :cond_51
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_52
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->getPhoneNum()I

    move-result v5

    if-ge v4, v5, :cond_9a

    .line 281
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 282
    if-eq v4, p1, :cond_7c

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 284
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_97

    .line 286
    :cond_7c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to enable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 287
    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 280
    :goto_97
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 293
    .end local v1    # "phoneSubId":I
    .end local v4    # "i":I
    :cond_9a
    :goto_9a
    return-void
.end method

.method public setDefaultData(I)V
    .registers 7
    .param p1, "phoneId"    # I

    .line 296
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 297
    .local v0, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 298
    .local v1, "sub":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 300
    .local v2, "currSub":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultDataSubId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", current default sub:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 301
    if-eq v1, v2, :cond_35

    const/4 v3, -0x1

    if-lt v1, v3, :cond_35

    .line 302
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v3

    .line 303
    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    goto :goto_3a

    .line 305
    :cond_35
    const-string v3, "setDefaultDataSubId: default data unchanged"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 307
    :goto_3a
    return-void
.end method

.method public setIsNeedPreCheck(Z)V
    .registers 2
    .param p1, "isNeedPreCheck"    # Z

    .line 263
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsNeedPreCheck:Z

    .line 264
    return-void
.end method

.method public setIsWaitIccid(Z)V
    .registers 2
    .param p1, "isWaitIccid"    # Z

    .line 255
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mIsWaitIccid:Z

    .line 256
    return-void
.end method

.method public updateNetworkMode(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mContext:Landroid/content/Context;

    .line 318
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 319
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    nop

    .line 320
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 321
    .local v1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v1, :cond_17

    .line 322
    const-string v2, "subInfoList null"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V

    .line 323
    return-void

    .line 326
    :cond_17
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mProtocolHandler:Landroid/os/Handler;

    .line 327
    new-instance v2, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;

    invoke-direct {v2, p0, v1, p2}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$3;-><init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/util/List;I)V

    .line 346
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->mProtocolHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 347
    return-void
.end method

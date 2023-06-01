.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
.super Landroid/os/Handler;
.source "WorldPhoneOp01.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# static fields
.field private static final EMSR_STANDBY_TIMER:I = 0x8

.field private static final FDD_STANDBY_TIMER:[I

.field private static final MCC_TABLE_DOMESTIC:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE1:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE3:[Ljava/lang/String;

.field private static final PROJECT_SIM_NUM:I

.field private static final PROPERTY_RIL_CT3G:[Ljava/lang/String;

.field private static final TDD_STANDBY_TIMER:[I

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sBtSapState:I

.field private static sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

.field private static sContext:Landroid/content/Context;

.field private static sDataRegState:I

.field private static sDefaultBootuUpModem:I

.field private static sDefultPhone:Lcom/android/internal/telephony/Phone;

.field private static sDenyReason:I

.field private static sFddStandByCounter:I

.field private static sFirstSelect:[Z

.field private static sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private static sImsi:[Ljava/lang/String;

.field private static sIsAutoSelectEnable:Z

.field private static sIsInvalidSim:[Z

.field private static sIsResumeCampingFail1:Z

.field private static sIsResumeCampingFail2:Z

.field private static sIsResumeCampingFail3:Z

.field private static sIsResumeCampingFail4:Z

.field private static sIsWaintInFddTimeOut:I

.field private static sIsWaintInTddTimeOut:I

.field private static sLastPlmn:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;

.field private static sMajorSim:I

.field private static sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

.field private static sNwPlmnStrings:[Ljava/lang/String;

.field private static sPlmnSs:Ljava/lang/String;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private static sRegion:I

.field private static sRilDataRadioTechnology:I

.field private static sRilDataRegState:I

.field private static sRilVoiceRadioTechnology:I

.field private static sRilVoiceRegState:I

.field private static sServiceState:Lmediatek/telephony/MtkServiceState;

.field private static sSimLocked:I

.field private static sSuspendId:[I

.field private static sSuspendWaitImsi:[Z

.field private static sSwitchModemCauseType:I

.field private static sTddStandByCounter:I

.field private static sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sUserType:I

.field private static sVoiceCapable:Z

.field private static sVoiceRegState:I

.field private static sWaitInEmsrResume:Z

.field private static sWaitInFdd:Z

.field private static sWaitInTdd:Z

.field private static smCi:[Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field private mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

.field private mFddStandByTimerRunnable:Ljava/lang/Runnable;

.field private mIsRegisterEccStateReceiver:Z

.field private mTddStandByTimerRunnable:Ljava/lang/Runnable;

.field private mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLock:Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getProjectSimNum()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    .line 74
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x3c

    const/4 v4, 0x0

    aput v3, v2, v4

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    .line 77
    new-array v1, v1, [I

    const/16 v2, 0x28

    aput v2, v1, v4

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    .line 80
    const-string v5, "46000"

    const-string v6, "46002"

    const-string v7, "46004"

    const-string v8, "46007"

    const-string v9, "46008"

    const-string v10, "00101"

    const-string v11, "00211"

    const-string v12, "00321"

    const-string v13, "00431"

    const-string v14, "00541"

    const-string v15, "00651"

    const-string v16, "00761"

    const-string v17, "00871"

    const-string v18, "00902"

    const-string v19, "01012"

    const-string v20, "01122"

    const-string v21, "01232"

    const-string v22, "46602"

    const-string v23, "50270"

    filled-new-array/range {v5 .. v23}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .line 87
    const-string v5, "46001"

    const-string v6, "46006"

    const-string v7, "46009"

    const-string v8, "45407"

    const-string v9, "46003"

    const-string v10, "46005"

    const-string v11, "45502"

    const-string v12, "46011"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    .line 91
    const-string v5, "460"

    const-string v6, "001"

    const-string v7, "002"

    const-string v8, "003"

    const-string v9, "004"

    const-string v10, "005"

    const-string v11, "006"

    const-string v12, "007"

    const-string v13, "008"

    const-string v14, "009"

    const-string v15, "010"

    const-string v16, "011"

    const-string v17, "012"

    filled-new-array/range {v5 .. v17}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .line 102
    const-string v1, "vendor.gsm.ril.ct3g"

    const-string v2, "vendor.gsm.ril.ct3g.2"

    const-string v3, "vendor.gsm.ril.ct3g.3"

    const-string v5, "vendor.gsm.ril.ct3g.4"

    filled-new-array {v1, v2, v3, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    .line 109
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    .line 110
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 111
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 112
    new-array v2, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 113
    new-array v2, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 114
    new-array v2, v0, [Lcom/mediatek/internal/telephony/MtkRIL;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    .line 117
    new-array v2, v0, [Ljava/lang/String;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    .line 129
    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    .line 130
    new-array v2, v0, [I

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    .line 132
    new-array v2, v0, [Z

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    .line 133
    new-array v2, v0, [Z

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    .line 134
    new-array v2, v0, [Z

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    .line 135
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 136
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 138
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 156
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mIsRegisterEccStateReceiver:Z

    .line 327
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 1157
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$2;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 1175
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 1206
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$4;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$4;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

    .line 1439
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$5;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$5;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    const-string v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3b
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_66

    .line 161
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    .line 162
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v4, v1

    .line 163
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v1

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    aput-object v4, v2, v1

    .line 164
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x50

    invoke-virtual {v2, p0, v4, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 167
    .end local v1    # "i":I
    :cond_66
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_67
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_a1

    .line 168
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0xa

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 169
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x1e

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x3c

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isC2kSupport()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 173
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit16 v4, v1, 0x424

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForGmssRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    :cond_9e
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 177
    .end local v1    # "i":I
    :cond_a1
    new-instance v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    .line 178
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 179
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v2, "mediatek.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v2, "mediatek.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v2, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_e3

    .line 188
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    goto :goto_e8

    .line 190
    :cond_e3
    const-string v2, "DefaultPhone = null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 192
    :goto_e8
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1110175

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceCapable:Z

    .line 194
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    .line 197
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    .line 198
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    .line 199
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    .line 200
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    .line 201
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 202
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    .line 203
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sBtSapState:I

    .line 204
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInTddTimeOut:I

    .line 205
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInFddTimeOut:I

    .line 206
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetAllProperties()V

    .line 207
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v2

    const-string v3, "persist.vendor.radio.wm_selectmode"

    if-nez v2, :cond_12d

    .line 208
    const-string v2, "Auto select disable"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 210
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    .line 211
    nop

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13d

    .line 214
    :cond_12d
    const-string v0, "Auto select enable"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    .line 216
    nop

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_13d
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v3, v0, v2

    .line 220
    const-string v4, "persist.vendor.radio.wm_fddtimer"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 222
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v2, v0, v2

    .line 224
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FDD_STANDBY_TIMER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sDefaultBootuUpModem = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 71
    invoke-static {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    return p0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    return p0
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .line 71
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimSwitched()V

    return-void
.end method

.method static synthetic access$1200()I
    .registers 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sBtSapState:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sBtSapState:I

    return p0
.end method

.method static synthetic access$1300()I
    .registers 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    return p0
.end method

.method static synthetic access$1308()I
    .registers 2

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$1400()[I
    .registers 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$1500()I
    .registers 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    return p0
.end method

.method static synthetic access$1602(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInTddTimeOut:I

    return p0
.end method

.method static synthetic access$1700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
    .param p1, "x1"    # I

    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800()I
    .registers 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    return p0
.end method

.method static synthetic access$1808()I
    .registers 2

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$1900()[I
    .registers 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;II)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimApplicationStateChanged(II)V

    return-void
.end method

.method static synthetic access$2002(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 71
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInFddTimeOut:I

    return p0
.end method

.method static synthetic access$2102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 71
    sput-boolean p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    return p0
.end method

.method static synthetic access$2200()[Z
    .registers 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic access$2300()[I
    .registers 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .line 71
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isEccInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .line 71
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->unRegisterEccStateReceiver()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;II)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimCardStateChanged(II)V

    return-void
.end method

.method static synthetic access$400()I
    .registers 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    return v0
.end method

.method static synthetic access$500()[Lcom/mediatek/internal/telephony/MtkRIL;
    .registers 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 71
    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()I
    .registers 1

    .line 71
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    return v0
.end method

.method static synthetic access$800()[Z
    .registers 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    return-object v0
.end method

.method static synthetic access$900()[Z
    .registers 1

    .line 71
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    return-object v0
.end method

.method private getRegion(Ljava/lang/String;)I
    .registers 9
    .param p1, "plmn"    # Ljava/lang/String;

    .line 1087
    const/4 v0, 0x0

    if-eqz p1, :cond_55

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_13

    goto :goto_55

    .line 1093
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_1f

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 1094
    .local v1, "currentMcc":Ljava/lang/String;
    :goto_20
    const/4 v3, 0x1

    if-eqz v1, :cond_34

    const-string v4, "46602"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    const-string v4, "50270"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1095
    :cond_33
    return v3

    .line 1097
    :cond_34
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1098
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    array-length v4, v2

    :goto_3b
    if-ge v0, v4, :cond_4e

    aget-object v5, v2, v0

    .line 1099
    .local v5, "mcc":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1100
    const-string v0, "[getRegion] REGION_DOMESTIC"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1101
    return v3

    .line 1098
    .end local v5    # "mcc":Ljava/lang/String;
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 1104
    :cond_4e
    const-string v0, "[getRegion] REGION_FOREIGN"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1105
    const/4 v0, 0x2

    return v0

    .line 1088
    .end local v1    # "currentMcc":Ljava/lang/String;
    :cond_55
    :goto_55
    const-string v1, "[getRegion] Invalid PLMN"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1089
    return v0
.end method

.method private getUserType(Ljava/lang/String;)I
    .registers 8
    .param p1, "imsi"    # Ljava/lang/String;

    .line 1109
    const/4 v0, 0x0

    if-eqz p1, :cond_46

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 1110
    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1111
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_14
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 1112
    .local v4, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1113
    const-string v0, "[getUserType] Type1 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1114
    const/4 v0, 0x1

    return v0

    .line 1111
    .end local v4    # "mccmnc":Ljava/lang/String;
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1117
    :cond_28
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    array-length v2, v1

    :goto_2b
    if-ge v0, v2, :cond_3f

    aget-object v3, v1, v0

    .line 1118
    .local v3, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1119
    const-string v0, "[getUserType] Type3 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1120
    const/4 v0, 0x3

    return v0

    .line 1117
    .end local v3    # "mccmnc":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1123
    :cond_3f
    const-string v0, "[getUserType] Type2 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1124
    const/4 v0, 0x2

    return v0

    .line 1126
    :cond_46
    const-string v1, "[getUserType] null IMSI"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1127
    return v0
.end method

.method private handleGmssRatChange(Landroid/os/AsyncResult;I)V
    .registers 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 630
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sMajorSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 633
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_7a

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_7a

    .line 634
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 635
    .local v0, "info":[I
    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "mccString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleGmssRatChange] mccString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 637
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/4 v3, 0x3

    if-ne p2, v2, :cond_5e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_5e

    .line 638
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->initNWPlmnString()V

    .line 639
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 641
    :cond_5e
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v2, :cond_79

    .line 642
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 643
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    if-eq v4, v3, :cond_79

    const/4 v3, 0x2

    if-ne v2, v3, :cond_79

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_79

    .line 645
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    .line 648
    .end local v0    # "info":[I
    .end local v1    # "mccString":Ljava/lang/String;
    :cond_79
    goto :goto_90

    .line 649
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 651
    :goto_90
    return-void
.end method

.method private handleInvalidSimNotify(ILandroid/os/AsyncResult;)V
    .registers 12
    .param p1, "slotId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 732
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_af

    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_af

    .line 733
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 734
    .local v0, "invalidSimInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 735
    .local v2, "plmn":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 736
    .local v4, "cs_invalid":I
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 737
    .local v5, "ps_invalid":I
    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 738
    .local v6, "cause":I
    const/4 v7, -0x1

    .line 739
    .local v7, "testMode":I
    const-string v8, "vendor.gsm.gcf.testmode"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 740
    .end local v7    # "testMode":I
    .local v1, "testMode":I
    if-eqz v1, :cond_56

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid SIM notified during test mode: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 742
    return-void

    .line 744
    :cond_56
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "testMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", cs_invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", ps_invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", plmn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 746
    sget-boolean v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceCapable:Z

    if-eqz v7, :cond_9e

    if-ne v4, v3, :cond_9e

    .line 747
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    if-nez v7, :cond_9e

    .line 748
    const-string v7, "CS reject, invalid SIM"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 749
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    aput-boolean v3, v7, p1

    .line 750
    return-void

    .line 753
    :cond_9e
    if-ne v5, v3, :cond_ae

    .line 754
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    if-nez v7, :cond_ae

    .line 755
    const-string v7, "PS reject, invalid SIM"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 756
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    aput-boolean v3, v7, p1

    .line 757
    return-void

    .line 760
    .end local v0    # "invalidSimInfo":[Ljava/lang/String;
    .end local v1    # "testMode":I
    .end local v2    # "plmn":Ljava/lang/String;
    .end local v4    # "cs_invalid":I
    .end local v5    # "ps_invalid":I
    .end local v6    # "cause":I
    :cond_ae
    goto :goto_c5

    .line 761
    :cond_af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 763
    :goto_c5
    return-void
.end method

.method private handleNoService()V
    .registers 15

    .line 930
    const-string v0, "[handleNoService]+ Can not find service"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 932
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 933
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 934
    .local v0, "mdType":I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 935
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aget-object v1, v1, v2

    .line 936
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 937
    .local v1, "iccState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_155

    .line 938
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const-string v3, "Standby in FDD modem"

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v2, v7, :cond_6d

    if-ne v2, v5, :cond_53

    goto :goto_6d

    .line 978
    :cond_53
    if-ne v2, v6, :cond_66

    .line 979
    if-eq v0, v4, :cond_61

    if-ne v0, v6, :cond_5a

    goto :goto_61

    .line 983
    :cond_5a
    const-string v2, "Should not enter this state"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_15a

    .line 981
    :cond_61
    :goto_61
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_15a

    .line 986
    :cond_66
    const-string v2, "Unknow user type"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_15a

    .line 939
    :cond_6d
    :goto_6d
    const/4 v2, 0x6

    const-wide/16 v8, 0x3e8

    const-string v10, "s. Timer index = "

    const-string v11, "Wait "

    const-string v12, "s"

    const-string v13, "Timer already set:"

    if-eq v0, v2, :cond_fd

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7f

    goto/16 :goto_fd

    .line 955
    :cond_7f
    if-eq v0, v4, :cond_83

    if-ne v0, v6, :cond_15a

    .line 957
    :cond_83
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v4, v2, v4

    if-ltz v4, :cond_f9

    .line 958
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v3, v5, :cond_db

    .line 959
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    if-nez v3, :cond_c0

    .line 960
    sput-boolean v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 963
    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v2, v2, v4

    int-to-long v4, v2

    mul-long/2addr v4, v8

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_15a

    .line 966
    :cond_c0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_15a

    .line 970
    :cond_db
    sput v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sSwitchModemCauseType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 972
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_15a

    .line 975
    :cond_f9
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_15a

    .line 941
    :cond_fd
    :goto_fd
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    aget v3, v2, v3

    if-ltz v3, :cond_14f

    .line 942
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    if-nez v3, :cond_135

    .line 943
    sput-boolean v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    .line 944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 946
    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    aget v2, v2, v4

    int-to-long v4, v2

    mul-long/2addr v4, v8

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15a

    .line 949
    :cond_135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sTddStandByCounter:I

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_15a

    .line 953
    :cond_14f
    const-string v2, "Standby in TDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_15a

    .line 989
    :cond_155
    const-string v2, "IccState not ready"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 991
    :cond_15a
    :goto_15a
    const-string v2, "[handleNoService]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 992
    return-void
.end method

.method private handlePlmnChange(Landroid/os/AsyncResult;I)V
    .registers 9
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 588
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sMajorSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 590
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_a7

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_a7

    .line 591
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 592
    .local v0, "plmnString":[Ljava/lang/String;
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-ne p2, v1, :cond_36

    .line 593
    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    .line 595
    :cond_36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_37
    array-length v2, v0

    if-ge v1, v2, :cond_5b

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plmnString["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 599
    .end local v1    # "i":I
    :cond_5b
    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v1, :cond_a6

    .line 600
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, p2, :cond_75

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6c

    if-ne v1, v2, :cond_75

    :cond_6c
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    if-eq v1, v2, :cond_75

    .line 602
    aget-object v1, v0, v3

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->searchForDesignateService(Ljava/lang/String;)V

    .line 606
    :cond_75
    aget-object v1, v0, v3

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 611
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_a6

    if-ne v1, v2, :cond_a6

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a6

    .line 613
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sSwitchModemCauseType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 615
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    .line 618
    .end local v0    # "plmnString":[Ljava/lang/String;
    :cond_a6
    goto :goto_bd

    .line 619
    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 621
    :goto_bd
    return-void
.end method

.method private handleRadioOn(I)V
    .registers 6
    .param p1, "slotId"    # I

    .line 550
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRadioOn Slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sMajorSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 552
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 553
    const/4 v0, 0x0

    const-string v2, "try to resume camping again"

    packed-switch p1, :pswitch_data_8a

    .line 583
    const-string v0, "unknow slotid"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_88

    .line 576
    :pswitch_35
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail4:Z

    if-eqz v3, :cond_88

    .line 577
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 578
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 579
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail4:Z

    goto :goto_88

    .line 569
    :pswitch_4a
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail3:Z

    if-eqz v3, :cond_88

    .line 570
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 571
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 572
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail3:Z

    goto :goto_88

    .line 562
    :pswitch_5f
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail2:Z

    if-eqz v3, :cond_88

    .line 563
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 564
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 565
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail2:Z

    goto :goto_88

    .line 555
    :pswitch_74
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail1:Z

    if-eqz v3, :cond_88

    .line 556
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 557
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 558
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail1:Z

    .line 585
    :cond_88
    :goto_88
    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_74
        :pswitch_5f
        :pswitch_4a
        :pswitch_35
    .end packed-switch
.end method

.method private handleRegistrationSuspend(Landroid/os/AsyncResult;I)V
    .registers 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registration Suspend Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->isModemTypeSwitching()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 702
    return-void

    .line 704
    :cond_1b
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_8b

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_8b

    .line 705
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, p2

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspending with Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 707
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v0, :cond_79

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-ne v0, p2, :cond_79

    .line 708
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_57

    .line 709
    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resumeCampingProcedure(IZ)V

    goto :goto_a1

    .line 711
    :cond_57
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    aput-boolean v1, v0, p2

    .line 712
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    if-nez v0, :cond_6e

    .line 713
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    .line 714
    const-string v0, "Wait EMSR:8s"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_73

    .line 717
    :cond_6e
    const-string v0, "Emsr Resume Timer already set:8s"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 719
    :goto_73
    const-string v0, "User type unknown, wait for IMSI"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_a1

    .line 722
    :cond_79
    const-string v0, "Not major slot, camp on OK"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 723
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v0, v0, p2

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v1, v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_a1

    .line 726
    :cond_8b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 728
    :goto_a1
    return-void
.end method

.method private handleServiceStateChange(Landroid/os/AsyncResult;I)V
    .registers 5
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 654
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sMajorSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "RadioState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, p2

    .line 656
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 657
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_149

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_149

    .line 658
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    .line 659
    if-eqz v0, :cond_143

    .line 660
    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sPlmnSs:Ljava/lang/String;

    .line 661
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getVoiceRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I

    .line 662
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilVoiceRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRegState:I

    .line 663
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRadioTechnology:I

    .line 664
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I

    .line 665
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilDataRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRegState:I

    .line 666
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilDataRadioTechnology()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRadioTechnology:I

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sMajorSim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sPlmnSs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sPlmnSs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sVoiceRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sRilVoiceRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sRilVoiceRadioTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRadioTechnology:I

    .line 673
    invoke-static {v1}, Lmediatek/telephony/MtkServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sDataRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sRilDataRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sRilDataRadioTech: , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRadioTechnology:I

    .line 677
    invoke-static {v1}, Lmediatek/telephony/MtkServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sIsAutoSelectEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 680
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 679
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 681
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v0, :cond_15f

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-ne p2, v0, :cond_15f

    .line 682
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isNoService()Z

    move-result v0

    if-eqz v0, :cond_130

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_130

    .line 684
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleNoService()V

    goto :goto_15f

    .line 685
    :cond_130
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isInService()Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 686
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sPlmnSs:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    .line 687
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 688
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p2

    goto :goto_15f

    .line 692
    :cond_143
    const-string v0, "Null sServiceState"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_15f

    .line 695
    :cond_149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 697
    :cond_15f
    :goto_15f
    return-void
.end method

.method private handleSimApplicationStateChanged(II)V
    .registers 10
    .param p1, "slotId"    # I
    .param p2, "state"    # I

    .line 250
    invoke-static {p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getSimLockedState(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_11

    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v0, :cond_11

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-eq p1, v0, :cond_11

    .line 252
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    .line 254
    :cond_11
    invoke-static {p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getSimLockedState(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v0, :cond_2e

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-eq p1, v0, :cond_2e

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    if-ne v0, v1, :cond_2e

    .line 257
    const-string v0, "retry to world mode change after not major sim pin unlock"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 258
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    .line 259
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimSwitched()V

    .line 261
    :cond_2e
    const/16 v0, 0xa

    if-ne p2, v0, :cond_178

    .line 262
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/16 v3, -0x63

    if-ne v0, v3, :cond_3e

    .line 263
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 265
    :cond_3e
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 266
    if-eqz v0, :cond_172

    .line 267
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    aput-object v3, v0, p1

    .line 272
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v3, v0, p1

    if-eqz v3, :cond_16c

    .line 273
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    .line 278
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    const-string v3, "IMSI fot slot"

    if-eqz v0, :cond_12d

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-ne p1, v0, :cond_12d

    .line 279
    const-string v0, "Major SIM"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 281
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aget-boolean v5, v4, p1

    if-eqz v5, :cond_db

    .line 282
    aput-boolean v2, v4, p1

    .line 283
    const/16 v4, 0x64

    const/4 v5, 0x2

    const-string v6, "sSwitchModemCauseType = "

    if-eq v0, v1, :cond_b0

    if-ne v0, v5, :cond_91

    goto :goto_b0

    .line 293
    :cond_91
    const/4 v5, 0x3

    if-ne v0, v5, :cond_db

    .line 294
    const/16 v0, 0xff

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_db

    .line 284
    :cond_b0
    :goto_b0
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 286
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v0, v1, :cond_d0

    .line 287
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_db

    .line 288
    :cond_d0
    if-ne v0, v5, :cond_d6

    .line 289
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_db

    .line 291
    :cond_d6
    const-string v0, "Region unknown"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 300
    :cond_db
    :goto_db
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    aget-boolean v4, v0, p1

    if-eqz v4, :cond_178

    .line 301
    aput-boolean v2, v0, p1

    .line 302
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_127

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " now ready, resuming PLMN:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with ID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sWaitInEmsrResume:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 306
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    if-nez v0, :cond_123

    .line 307
    invoke-direct {p0, p1, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resumeCampingProcedure(IZ)V

    goto :goto_178

    .line 309
    :cond_123
    invoke-direct {p0, p1, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resumeCampingProcedure(IZ)V

    goto :goto_178

    .line 312
    :cond_127
    const-string v0, "sNwPlmnStrings is Null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_178

    .line 316
    :cond_12d
    const-string v0, "Not major SIM"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    .line 318
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_178

    .line 319
    aput-boolean v2, v0, p1

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resuming with ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v0, v0, p1

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_178

    .line 275
    :cond_16c
    const-string v0, "Null sIccRecordsInstance"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 276
    return-void

    .line 269
    :cond_172
    const-string v0, "Null sUiccController"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 270
    return-void

    .line 325
    :cond_178
    :goto_178
    return-void
.end method

.method private handleSimCardStateChanged(II)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "state"    # I

    .line 230
    const/4 v0, 0x1

    if-ne p2, v0, :cond_49

    .line 231
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;

    .line 232
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, p1

    .line 233
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v0, v1, p1

    .line 234
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 235
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    aput-boolean v2, v1, p1

    .line 236
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    if-ne p1, v1, :cond_30

    .line 237
    const-string v1, "Major SIM removed, no world phone service"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 239
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 240
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 241
    const/16 v0, -0x63

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 242
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    goto :goto_49

    .line 244
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not major SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 247
    :cond_49
    :goto_49
    return-void
.end method

.method private handleSimSwitched()V
    .registers 6

    .line 886
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    .line 887
    const-string v0, "Major capability turned off"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 888
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 889
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    goto/16 :goto_c9

    .line 890
    :cond_12
    sget-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-nez v2, :cond_20

    .line 891
    const-string v0, "Auto modem selection disabled"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 892
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    goto/16 :goto_c9

    .line 893
    :cond_20
    const/16 v2, -0x63

    if-ne v0, v2, :cond_2b

    .line 894
    const-string v0, "Major SIM unknown"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 896
    :cond_2b
    const-string v0, "Auto modem selection enabled"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Major capability in slot"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 898
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aget-object v3, v0, v2

    if-eqz v3, :cond_ca

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto/16 :goto_ca

    .line 904
    :cond_5a
    const/16 v0, 0xff

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sSwitchModemCauseType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 906
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 907
    const/16 v2, 0x64

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_9c

    if-ne v0, v3, :cond_89

    goto :goto_9c

    .line 920
    :cond_89
    const/4 v3, 0x3

    if-ne v0, v3, :cond_96

    .line 921
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aput-boolean v1, v0, v3

    .line 922
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_c9

    .line 924
    :cond_96
    const-string v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_c9

    .line 908
    :cond_9c
    :goto_9c
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_a8

    .line 909
    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 911
    :cond_a8
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v0, v4, :cond_b8

    .line 912
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aput-boolean v1, v0, v2

    .line 913
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_c9

    .line 914
    :cond_b8
    if-ne v0, v3, :cond_c4

    .line 915
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    aput-boolean v1, v0, v3

    .line 916
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    goto :goto_c9

    .line 918
    :cond_c4
    const-string v0, "Unknown region"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 927
    :goto_c9
    return-void

    .line 900
    :cond_ca
    :goto_ca
    const-string v0, "Major slot IMSI not ready"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 901
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 902
    return-void
.end method

.method private handleSwitchModem(I)Z
    .registers 14
    .param p1, "toModem"    # I

    .line 766
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 768
    .local v0, "mMajorSim":I
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInFddTimeOut:I

    const/4 v2, 0x0

    if-nez v1, :cond_31

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInTddTimeOut:I

    if-nez v1, :cond_31

    .line 769
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isEccInProgress()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleSwitchModem]In ECC:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mIsRegisterEccStateReceiver:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 771
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mIsRegisterEccStateReceiver:Z

    if-nez v1, :cond_30

    .line 772
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->registerEccStateReceiver()V

    .line 774
    :cond_30
    return v2

    .line 777
    :cond_31
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInFddTimeOut:I

    .line 778
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInTddTimeOut:I

    .line 780
    :cond_35
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_40

    .line 781
    const-string v1, "sim has been locked!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 782
    return v2

    .line 784
    :cond_40
    if-ltz v0, :cond_54

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_54

    .line 785
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v1

    if-ne v1, v3, :cond_54

    .line 786
    const-string v1, "Invalid SIM, switch not executed!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 787
    return v2

    .line 790
    :cond_54
    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-eqz v1, :cond_64

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isNeedSwitchModem()Z

    move-result v1

    if-nez v1, :cond_64

    .line 791
    const-string v1, "[handleSwitchModem]No need to handle, switch not executed!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 792
    return v2

    .line 795
    :cond_64
    const/16 v1, 0x64

    const/16 v4, 0x65

    if-ne p1, v4, :cond_74

    .line 796
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 797
    const/4 p1, 0x6

    goto :goto_7f

    .line 799
    :cond_72
    const/4 p1, 0x4

    goto :goto_7f

    .line 801
    :cond_74
    if-ne p1, v1, :cond_7f

    .line 802
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 803
    const/4 p1, 0x5

    goto :goto_7f

    .line 805
    :cond_7e
    const/4 p1, 0x3

    .line 809
    :cond_7f
    :goto_7f
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-ne p1, v5, :cond_a9

    .line 810
    if-ne p1, v9, :cond_91

    .line 811
    const-string v1, "Already in WG modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_a8

    .line 812
    :cond_91
    if-ne p1, v8, :cond_99

    .line 813
    const-string v1, "Already in TG modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_a8

    .line 814
    :cond_99
    if-ne p1, v7, :cond_a1

    .line 815
    const-string v1, "Already in FDD CSFB modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_a8

    .line 816
    :cond_a1
    if-ne p1, v6, :cond_a8

    .line 817
    const-string v1, "Already in TDD CSFB modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 819
    :cond_a8
    :goto_a8
    return v2

    .line 822
    :cond_a9
    sget-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    const-string v10, "Storing modem type: "

    const/4 v11, 0x0

    if-nez v5, :cond_ca

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 824
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_12b

    .line 826
    :cond_ca
    sget v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I

    if-nez v5, :cond_e8

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 828
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_12b

    .line 829
    :cond_e8
    if-ne v5, v1, :cond_10a

    .line 830
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 831
    const-string v1, "Storing modem type: 5"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 832
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    invoke-virtual {v1, v7, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_12b

    .line 835
    :cond_fd
    const-string v1, "Storing modem type: 3"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 836
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    invoke-virtual {v1, v9, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_12b

    .line 839
    :cond_10a
    if-ne v5, v4, :cond_12b

    .line 840
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 841
    const-string v1, "Storing modem type: 6"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 842
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    invoke-virtual {v1, v6, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_12b

    .line 845
    :cond_11f
    const-string v1, "Storing modem type: 4"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 846
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    .line 852
    :cond_12b
    :goto_12b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12c
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v1, v4, :cond_159

    .line 853
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_156

    .line 854
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not idle, modem switch not allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 855
    return v2

    .line 852
    :cond_156
    add-int/lit8 v1, v1, 0x1

    goto :goto_12c

    .line 859
    .end local v1    # "i":I
    :cond_159
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 861
    if-ne p1, v9, :cond_164

    .line 862
    const-string v1, "Switching to WG modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_17b

    .line 863
    :cond_164
    if-ne p1, v8, :cond_16c

    .line 864
    const-string v1, "Switching to TG modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_17b

    .line 865
    :cond_16c
    if-ne p1, v7, :cond_174

    .line 866
    const-string v1, "Switching to FDD CSFB modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_17b

    .line 867
    :cond_174
    if-ne p1, v6, :cond_17b

    .line 868
    const-string v1, "Switching to TDD CSFB modem"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 870
    :cond_17b
    :goto_17b
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isSimSwitching()Z

    move-result v1

    if-ne v1, v3, :cond_19c

    .line 871
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getToModemType()I

    move-result v1

    if-ne p1, v1, :cond_19c

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim switching, already will to set modem:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 873
    return v2

    .line 877
    :cond_19c
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v2

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModemCauseType(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    .line 880
    invoke-static {v2, p1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->switchModem(II)V

    .line 881
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetNetworkProperties()V

    .line 882
    return v3
.end method

.method private static declared-synchronized initNWPlmnString()V
    .registers 2

    const-class v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    monitor-enter v0

    .line 624
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    if-nez v1, :cond_c

    .line 625
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 627
    :cond_c
    monitor-exit v0

    return-void

    .line 623
    :catchall_e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isAllowCampOn(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "plmnString"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[isAllowCampOn]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "User type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, "mdType":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 999
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isSimSwitching()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_49

    .line 1000
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getToModemType()I

    move-result v0

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimSwitching mdType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_65

    .line 1003
    :cond_49
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mdType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1006
    :goto_65
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const-string v5, "Camp on OK"

    const/4 v6, 0x6

    const-string v7, "Camp on REJECT"

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-eq v1, v2, :cond_93

    if-ne v1, v8, :cond_76

    goto :goto_93

    .line 1034
    :cond_76
    if-ne v1, v9, :cond_8d

    .line 1035
    if-eq v0, v6, :cond_87

    if-ne v0, v4, :cond_7d

    goto :goto_87

    .line 1040
    :cond_7d
    if-eq v0, v3, :cond_81

    if-ne v0, v9, :cond_c8

    .line 1042
    :cond_81
    sput v10, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1043
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1044
    return v2

    .line 1037
    :cond_87
    :goto_87
    sput v8, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1038
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1039
    return v10

    .line 1047
    :cond_8d
    const-string v1, "Unknown user type"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_c8

    .line 1007
    :cond_93
    :goto_93
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v1, v2, :cond_ac

    .line 1008
    if-eq v0, v6, :cond_a6

    if-ne v0, v4, :cond_9c

    goto :goto_a6

    .line 1013
    :cond_9c
    if-eq v0, v3, :cond_a0

    if-ne v0, v9, :cond_c8

    .line 1015
    :cond_a0
    sput v9, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1016
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1017
    return v10

    .line 1010
    :cond_a6
    :goto_a6
    sput v10, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1011
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1012
    return v2

    .line 1019
    :cond_ac
    if-ne v1, v8, :cond_c3

    .line 1020
    if-eq v0, v6, :cond_bd

    if-ne v0, v4, :cond_b3

    goto :goto_bd

    .line 1025
    :cond_b3
    if-eq v0, v3, :cond_b7

    if-ne v0, v9, :cond_c8

    .line 1027
    :cond_b7
    sput v10, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1028
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1029
    return v2

    .line 1022
    :cond_bd
    :goto_bd
    sput v8, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1023
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1024
    return v10

    .line 1032
    :cond_c3
    const-string v1, "Unknow region"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1049
    :cond_c8
    :goto_c8
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1050
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1052
    return v10
.end method

.method private isCdmaCard(I)Z
    .registers 6
    .param p1, "slotId"    # I

    .line 1411
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1412
    return v1

    .line 1414
    :cond_8
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getC2KWPCardType()[I

    move-result-object v0

    .line 1415
    .local v0, "cardType":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCdmaCard(), cardType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1416
    aget v2, v0, p1

    and-int/lit8 v2, v2, 0x4

    if-gtz v2, :cond_34

    aget v2, v0, p1

    and-int/lit8 v2, v2, 0x8

    if-gtz v2, :cond_34

    .line 1418
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isCt3gDualMode(I)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_34
    const/4 v1, 0x1

    .line 1419
    .local v1, "retCdmaCard":Z
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCdmaCard(), slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " retCdmaCard="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1420
    return v1
.end method

.method private isCt3gDualMode(I)Z
    .registers 5
    .param p1, "slotId"    # I

    .line 1430
    if-ltz p1, :cond_2b

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_2b

    .line 1434
    :cond_8
    aget-object v0, v0, p1

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1435
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCt3gDualMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1436
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1431
    .end local v0    # "result":Ljava/lang/String;
    :cond_2b
    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCt3gDualMode: invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1432
    const/4 v0, 0x0

    return v0
.end method

.method private isEccInProgress()Z
    .registers 7

    .line 1471
    const-string v0, "ril.cdma.inecmmode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1472
    .local v0, "value":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1473
    .local v1, "inEcm":Z
    const/4 v2, 0x0

    .line 1474
    .local v2, "isInEcc":Z
    nop

    .line 1475
    const-string v3, "telecom"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1474
    invoke-static {v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v3

    .line 1476
    .local v3, "tm":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v3, :cond_28

    .line 1478
    :try_start_1c
    invoke-interface {v3}, Lcom/android/internal/telecom/ITelecomService;->isInEmergencyCall()Z

    move-result v4
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_22

    move v2, v4

    .line 1481
    goto :goto_28

    .line 1479
    :catch_22
    move-exception v4

    .line 1480
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Exception of isEccInProgress"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1483
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

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1484
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

.method private isInService()Z
    .registers 4

    .line 1056
    const/4 v0, 0x0

    .line 1058
    .local v0, "inService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I

    if-eqz v1, :cond_9

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I

    if-nez v1, :cond_a

    .line 1060
    :cond_9
    const/4 v0, 0x1

    .line 1062
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1063
    return v0
.end method

.method private isNeedReloadModem(I)Z
    .registers 6
    .param p1, "capabilitySimId"    # I

    .line 1393
    const/4 v0, 0x1

    .line 1394
    .local v0, "isNeed":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isC2kSupport()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1395
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getActiveSvlteModeSlotId()I

    move-result v1

    .line 1396
    .local v1, "activeSvlteModeSlotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isNeedReloadModem] activeSvlteModeSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sUserType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", capabilitySimId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1398
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_48

    if-ltz p1, :cond_3a

    if-eq p1, v1, :cond_40

    .line 1400
    :cond_3a
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isCdmaCard(I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1401
    :cond_40
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_48

    .line 1402
    const/4 v0, 0x0

    .line 1406
    .end local v1    # "activeSvlteModeSlotId":I
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isNeedReloadModem] isNeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1407
    return v0
.end method

.method private isNeedSwitchModem()Z
    .registers 6

    .line 1376
    const/4 v0, 0x1

    .line 1377
    .local v0, "isNeed":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    .line 1378
    .local v1, "majorSimId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isC2kSupport()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1379
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getActiveSvlteModeSlotId()I

    move-result v2

    .line 1380
    .local v2, "activeSvlteModeSlotId":I
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    if-ltz v1, :cond_18

    if-eq v1, v2, :cond_1e

    .line 1382
    :cond_18
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isCdmaCard(I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1383
    :cond_1e
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_26

    .line 1384
    const/4 v0, 0x0

    .line 1388
    .end local v2    # "activeSvlteModeSlotId":I
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isNeedSwitchModem] isNeed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1389
    return v0
.end method

.method private isNoService()Z
    .registers 5

    .line 1067
    const/4 v0, 0x0

    .line 1069
    .local v0, "noService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRegState:I

    if-eqz v1, :cond_e

    const/16 v3, 0xa

    if-ne v1, v3, :cond_18

    :cond_e
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I

    if-ne v1, v2, :cond_18

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRegState:I

    if-nez v1, :cond_18

    .line 1077
    const/4 v0, 0x1

    goto :goto_19

    .line 1079
    :cond_18
    const/4 v0, 0x0

    .line 1081
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1082
    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WPOP01]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORLDMODE"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    return-void
.end method

.method private registerEccStateReceiver()V
    .registers 4

    .line 1451
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 1452
    const-string v0, "registerEccStateReceiver, context is null => return"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1453
    return-void

    .line 1455
    :cond_a
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1456
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1457
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1458
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mIsRegisterEccStateReceiver:Z

    .line 1459
    return-void
.end method

.method private removeEmsrResumeByTimer()V
    .registers 2

    .line 1221
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    if-eqz v0, :cond_11

    .line 1222
    const-string v0, "Remove EMSR wait timer. Set sWaitInEmsrResume = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1223
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z

    .line 1224
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1226
    :cond_11
    return-void
.end method

.method private removeModemStandByTimer()V
    .registers 3

    .line 1194
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1195
    const-string v0, "Remove TDD wait timer. Set sWaitInTdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1196
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInTdd:Z

    .line 1197
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1199
    :cond_11
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    if-eqz v0, :cond_21

    .line 1200
    const-string v0, "Remove FDD wait timer. Set sWaitInFdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1201
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInFdd:Z

    .line 1202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1204
    :cond_21
    return-void
.end method

.method private resetAllProperties()V
    .registers 4

    .line 1229
    const-string v0, "[resetAllProperties]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1230
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    .line 1231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_15

    .line 1232
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v2, v1, v0

    .line 1231
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1234
    .end local v0    # "i":I
    :cond_15
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    .line 1235
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetSimProperties()V

    .line 1236
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetNetworkProperties()V

    .line 1237
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    .line 1238
    return-void
.end method

.method private resetNetworkProperties()V
    .registers 5

    .line 1241
    const-string v0, "[resetNetworkProperties]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1242
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_15

    .line 1244
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1243
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1246
    .end local v1    # "i":I
    :cond_15
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 1247
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1a
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_26

    .line 1248
    const-string v3, ""

    aput-object v3, v2, v1

    .line 1247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1251
    .end local v1    # "i":I
    :cond_26
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeEmsrResumeByTimer()V

    .line 1252
    const/16 v1, 0xff

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sSwitchModemCauseType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1254
    monitor-exit v0

    .line 1255
    return-void

    .line 1254
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private resetSimProperties()V
    .registers 5

    .line 1258
    const-string v0, "[resetSimProperties]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1259
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1260
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_16

    .line 1261
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v1

    .line 1260
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1263
    .end local v1    # "i":I
    :cond_16
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 1264
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 1265
    monitor-exit v0

    .line 1266
    return-void

    .line 1265
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private resumeCampingProcedure(IZ)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "isResumeModem"    # Z

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume camping slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isResumeModem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sSimLocked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1134
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1135
    .local v0, "plmnString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1136
    .local v2, "switchModem":Z
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSimLocked:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_76

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_76

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isNeedSwitchModem()Z

    move-result v3

    if-nez v3, :cond_3e

    goto :goto_76

    .line 1139
    :cond_3e
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sSwitchModemCauseType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",DenyReason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1141
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6c

    .line 1142
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    move-result v2

    goto :goto_77

    .line 1143
    :cond_6c
    const/4 v3, 0x3

    if-ne v1, v3, :cond_77

    .line 1144
    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    move-result v2

    goto :goto_77

    .line 1137
    :cond_76
    :goto_76
    const/4 v2, 0x0

    .line 1147
    :cond_77
    :goto_77
    if-nez v2, :cond_92

    .line 1148
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 1149
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeEmsrResumeByTimer()V

    .line 1150
    if-eqz p2, :cond_92

    .line 1151
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I

    aget v3, v3, p1

    add-int/lit8 v4, p1, 0x46

    .line 1152
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1151
    invoke-virtual {v1, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 1155
    :cond_92
    return-void
.end method

.method private searchForDesignateService(Ljava/lang/String;)V
    .registers 8
    .param p1, "strPlmn"    # Ljava/lang/String;

    .line 1269
    if-nez p1, :cond_8

    .line 1270
    const-string v0, "[searchForDesignateService]- null source"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1271
    return-void

    .line 1273
    :cond_8
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1274
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_6d

    aget-object v4, v0, v3

    .line 1275
    .local v4, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 1276
    const-string v0, "Find TD service"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sUserType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sRegion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1278
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1279
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sSwitchModemCauseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1281
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    .line 1282
    goto :goto_6d

    .line 1274
    .end local v4    # "mccmnc":Ljava/lang/String;
    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1286
    :cond_6d
    :goto_6d
    return-void
.end method

.method private unRegisterEccStateReceiver()V
    .registers 3

    .line 1462
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 1463
    const-string v0, "unRegisterEccStateReceiver, context is null => return"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1464
    return-void

    .line 1466
    :cond_a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->mIsRegisterEccStateReceiver:Z

    .line 1468
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 422
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 423
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_13e

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_13d

    .line 501
    :sswitch_25
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 502
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 503
    goto/16 :goto_13d

    .line 497
    :sswitch_2f
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 498
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 499
    goto/16 :goto_13d

    .line 493
    :sswitch_39
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 494
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 495
    goto/16 :goto_13d

    .line 489
    :sswitch_43
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 491
    goto/16 :goto_13d

    .line 541
    :sswitch_4d
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 542
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 543
    goto/16 :goto_13d

    .line 537
    :sswitch_57
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 538
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 539
    goto/16 :goto_13d

    .line 533
    :sswitch_61
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 534
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 535
    goto/16 :goto_13d

    .line 529
    :sswitch_6b
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 531
    goto/16 :goto_13d

    .line 523
    :sswitch_75
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13d

    .line 524
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_4> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 525
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail4:Z

    goto/16 :goto_13d

    .line 517
    :sswitch_82
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13d

    .line 518
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_3> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 519
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail3:Z

    goto/16 :goto_13d

    .line 511
    :sswitch_8f
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13d

    .line 512
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_2> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 513
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail2:Z

    goto/16 :goto_13d

    .line 505
    :sswitch_9c
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13d

    .line 506
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_1> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 507
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsResumeCampingFail1:Z

    goto/16 :goto_13d

    .line 485
    :sswitch_a9
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 487
    goto/16 :goto_13d

    .line 481
    :sswitch_b3
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 482
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 483
    goto/16 :goto_13d

    .line 477
    :sswitch_bd
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0, v5, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 479
    goto/16 :goto_13d

    .line 473
    :sswitch_c7
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 474
    invoke-direct {p0, v4, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 475
    goto/16 :goto_13d

    .line 469
    :sswitch_d1
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 470
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 471
    goto :goto_13d

    .line 457
    :sswitch_da
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 459
    goto :goto_13d

    .line 445
    :sswitch_e3
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 446
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 447
    goto :goto_13d

    .line 433
    :sswitch_ec
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 435
    goto :goto_13d

    .line 465
    :sswitch_f5
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 467
    goto :goto_13d

    .line 453
    :sswitch_fe
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 455
    goto :goto_13d

    .line 441
    :sswitch_107
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 442
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 443
    goto :goto_13d

    .line 429
    :sswitch_110
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 431
    goto :goto_13d

    .line 461
    :sswitch_119
    const-string v1, "handleMessage : <EVENT_RADIO_ON_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRadioOn(I)V

    .line 463
    goto :goto_13d

    .line 449
    :sswitch_122
    const-string v1, "handleMessage : <EVENT_RADIO_ON_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 450
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRadioOn(I)V

    .line 451
    goto :goto_13d

    .line 437
    :sswitch_12b
    const-string v1, "handleMessage : <EVENT_RADIO_ON_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 438
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRadioOn(I)V

    .line 439
    goto :goto_13d

    .line 425
    :sswitch_134
    const-string v1, "handleMessage : <EVENT_RADIO_ON_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleRadioOn(I)V

    .line 427
    nop

    .line 547
    :cond_13d
    :goto_13d
    return-void

    :sswitch_data_13e
    .sparse-switch
        0x0 -> :sswitch_134
        0x1 -> :sswitch_12b
        0x2 -> :sswitch_122
        0x3 -> :sswitch_119
        0xa -> :sswitch_110
        0xb -> :sswitch_107
        0xc -> :sswitch_fe
        0xd -> :sswitch_f5
        0x1e -> :sswitch_ec
        0x1f -> :sswitch_e3
        0x20 -> :sswitch_da
        0x21 -> :sswitch_d1
        0x3c -> :sswitch_c7
        0x3d -> :sswitch_bd
        0x3e -> :sswitch_b3
        0x3f -> :sswitch_a9
        0x46 -> :sswitch_9c
        0x47 -> :sswitch_8f
        0x48 -> :sswitch_82
        0x49 -> :sswitch_75
        0x50 -> :sswitch_6b
        0x51 -> :sswitch_61
        0x52 -> :sswitch_57
        0x53 -> :sswitch_4d
        0x424 -> :sswitch_43
        0x425 -> :sswitch_39
        0x426 -> :sswitch_2f
        0x427 -> :sswitch_25
    .end sparse-switch
.end method

.method public notifyRadioCapabilityChange(I)V
    .registers 7
    .param p1, "capabilitySimId"    # I

    .line 1311
    const/4 v0, 0x0

    .line 1312
    .local v0, "toModem":I
    const-string v1, "[setRadioCapabilityChange]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Major capability will be set to slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1314
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeEmsrResumeByTimer()V

    .line 1315
    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    if-nez v1, :cond_2b

    .line 1316
    const-string v1, "Auto modem selection disabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1317
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    goto/16 :goto_ca

    .line 1319
    :cond_2b
    const-string v1, "Auto modem selection enabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1320
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    aget-object v2, v1, p1

    const/4 v3, 0x0

    if-eqz v2, :cond_d1

    aget-object v1, v1, p1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto/16 :goto_d1

    .line 1326
    :cond_43
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 1327
    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_64

    if-ne v1, v2, :cond_54

    goto :goto_64

    .line 1341
    :cond_54
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5e

    .line 1342
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v3, v1, p1

    .line 1343
    const/16 v0, 0x64

    goto :goto_83

    .line 1345
    :cond_5e
    const-string v1, "Unknown user type"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1346
    return-void

    .line 1328
    :cond_64
    :goto_64
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_70

    .line 1329
    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    .line 1331
    :cond_70
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I

    if-ne v1, v4, :cond_7b

    .line 1332
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v3, v1, p1

    .line 1333
    const/16 v0, 0x65

    goto :goto_83

    .line 1334
    :cond_7b
    if-ne v1, v2, :cond_cb

    .line 1335
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v3, v1, p1

    .line 1336
    const/16 v0, 0x64

    .line 1349
    :goto_83
    const/16 v1, 0x65

    if-ne v0, v1, :cond_91

    .line 1350
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 1351
    const/4 v0, 0x6

    goto :goto_9e

    .line 1353
    :cond_8f
    const/4 v0, 0x4

    goto :goto_9e

    .line 1355
    :cond_91
    const/16 v1, 0x64

    if-ne v0, v1, :cond_9e

    .line 1356
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 1357
    const/4 v0, 0x5

    goto :goto_9e

    .line 1359
    :cond_9d
    const/4 v0, 0x3

    .line 1363
    :cond_9e
    :goto_9e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRadioCapabilityChange: Storing modem type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1365
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isNeedReloadModem(I)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 1366
    return-void

    .line 1368
    :cond_b9
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->reloadModemType(ILandroid/os/Message;)V

    .line 1369
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resetNetworkProperties()V

    .line 1370
    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->setSimSwitchingFlag(Z)V

    .line 1371
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->saveToModemType(I)V

    .line 1373
    :goto_ca
    return-void

    .line 1338
    :cond_cb
    const-string v1, "Unknown region"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1339
    return-void

    .line 1322
    :cond_d1
    :goto_d1
    const-string v1, "Capaility slot IMSI not ready"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1323
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I

    .line 1324
    return-void
.end method

.method public setModemSelectionMode(II)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .line 1290
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.vendor.radio.wm_selectmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1d

    .line 1293
    const-string v1, "Modem Selection <AUTO>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1294
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    .line 1295
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I

    .line 1296
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimSwitched()V

    goto :goto_4b

    .line 1298
    :cond_1d
    const-string v0, "Modem Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1300
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z

    .line 1301
    const/16 v0, 0xff

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sSwitchModemCauseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 1303
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z

    .line 1304
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    if-ne p2, v0, :cond_4b

    .line 1305
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 1308
    :cond_4b
    :goto_4b
    return-void
.end method

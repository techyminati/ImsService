.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.super Landroid/os/Handler;
.source "WorldPhoneOm.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# static fields
.field private static final EMSR_STANDBY_TIMER:I = 0x8

.field private static final FDD_STANDBY_TIMER:[I

.field private static final MCC_TABLE_DOMESTIC:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE1:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE1_EXT:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE3:[Ljava/lang/String;

.field private static final PROJECT_SIM_NUM:I

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

.field private static sMccDomestic:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

.field private static sNwPlmnStrings:[Ljava/lang/String;

.field private static sPlmnSs:Ljava/lang/String;

.field private static sPlmnType1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlmnType1Ext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlmnType3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private static sRegion:I

.field private static sRilDataRadioTechnology:I

.field private static sRilDataRegState:I

.field private static sRilVoiceRadioTechnology:I

.field private static sRilVoiceRegState:I

.field private static sServiceState:Lmediatek/telephony/MtkServiceState;

.field private static sSimLocked:I

.field private static sSimLockedSlotId:I

.field private static sSuspendId:[I

.field private static sSuspendWaitImsi:[Z

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
    .registers 13

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLock:Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getProjectSimNum()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    .line 77
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x3c

    const/4 v4, 0x0

    aput v3, v2, v4

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    .line 80
    new-array v1, v1, [I

    const/16 v2, 0x28

    aput v2, v1, v4

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    .line 83
    const-string v1, "46000"

    const-string v2, "46002"

    const-string v3, "46004"

    const-string v5, "46007"

    const-string v6, "46008"

    filled-new-array {v1, v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .line 86
    const-string v1, "45412"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1_EXT:[Ljava/lang/String;

    .line 89
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

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    .line 93
    const-string v1, "460"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .line 102
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    .line 103
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 104
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 105
    new-array v2, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 106
    new-array v2, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 107
    new-array v2, v0, [Lcom/mediatek/internal/telephony/MtkRIL;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    .line 110
    new-array v2, v0, [Ljava/lang/String;

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    .line 122
    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    .line 123
    new-array v2, v0, [I

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    .line 125
    new-array v2, v0, [Z

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    .line 126
    new-array v2, v0, [Z

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    .line 127
    new-array v2, v0, [Z

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    .line 128
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 129
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 131
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    .line 147
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 149
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mIsRegisterEccStateReceiver:Z

    .line 347
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 1197
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$2;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 1214
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 1244
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$4;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$4;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

    .line 1555
    new-instance v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$5;-><init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    const-string v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3b
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_66

    .line 154
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    .line 155
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v4, v1

    .line 156
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->smCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v1

    check-cast v4, Lcom/mediatek/internal/telephony/MtkRIL;

    aput-object v4, v2, v1

    .line 157
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x50

    invoke-virtual {v2, p0, v4, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 160
    .end local v1    # "i":I
    :cond_66
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_67
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_a1

    .line 161
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0xa

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 162
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x1e

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x0

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 164
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x3c

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isC2kSupport()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 167
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v1

    add-int/lit16 v4, v1, 0x424

    invoke-virtual {v2, p0, v4, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForGmssRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    :cond_9e
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 172
    .end local v1    # "i":I
    :cond_a1
    new-instance v1, Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sModemSwitchHandler:Lcom/mediatek/internal/telephony/ModemSwitchHandler;

    .line 173
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    .line 175
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v2, "mediatek.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v2, "mediatek.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v2, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v2, "mediatek.intent.action.ACTION_TEST_WORLDPHOE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_e0

    .line 187
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    goto :goto_e5

    .line 189
    :cond_e0
    const-string v2, "DefaultPhone = null"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 191
    :goto_e5
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1110175

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceCapable:Z

    .line 193
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    .line 196
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    .line 197
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    .line 198
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    .line 199
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    .line 200
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 201
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    .line 202
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I

    .line 203
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInTddTimeOut:I

    .line 204
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInFddTimeOut:I

    .line 205
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetAllProperties()V

    .line 208
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    .line 212
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->loadDefaultData()V

    .line 214
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v2

    const-string v3, "persist.vendor.radio.wm_selectmode"

    if-nez v2, :cond_147

    .line 215
    const-string v2, "Auto select disable"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 218
    nop

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_155

    .line 221
    :cond_147
    const-string v0, "Auto select enable"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 223
    nop

    .line 224
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_155
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v0, v2

    .line 227
    const-string v4, "persist.vendor.radio.wm_fddtimer"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 229
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v2, v0, v2

    .line 231
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FDD_STANDBY_TIMER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sDefaultBootuUpModem = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 74
    invoke-static {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    return v0
.end method

.method static synthetic access$1000()[Z
    .registers 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    return-object v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 74
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    return p0
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .line 74
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;II)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleWorldPhoneTest(II)V

    return-void
.end method

.method static synthetic access$1300()I
    .registers 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 74
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I

    return p0
.end method

.method static synthetic access$1400()I
    .registers 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$1402(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 74
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    return p0
.end method

.method static synthetic access$1408()I
    .registers 2

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$1500()[I
    .registers 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$1602(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 74
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInTddTimeOut:I

    return p0
.end method

.method static synthetic access$1700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
    .param p1, "x1"    # I

    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800()I
    .registers 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 74
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    return p0
.end method

.method static synthetic access$1808()I
    .registers 2

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$1900()[I
    .registers 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    return v0
.end method

.method static synthetic access$2002(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 74
    sput p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInFddTimeOut:I

    return p0
.end method

.method static synthetic access$2102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 74
    sput-boolean p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    return p0
.end method

.method static synthetic access$2200()[Z
    .registers 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic access$2300()[I
    .registers 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .line 74
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isEccInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .line 74
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->unRegisterEccStateReceiver()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;II)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimApplicationStateChanged(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;II)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimCardStateChanged(II)V

    return-void
.end method

.method static synthetic access$500()I
    .registers 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    return v0
.end method

.method static synthetic access$600()[Lcom/mediatek/internal/telephony/MtkRIL;
    .registers 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 74
    sput-object p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800()I
    .registers 1

    .line 74
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    return v0
.end method

.method static synthetic access$900()[Z
    .registers 1

    .line 74
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    return-object v0
.end method

.method private containsCdma(I)Z
    .registers 3
    .param p1, "cardType"    # I

    .line 1548
    and-int/lit8 v0, p1, 0x4

    if-gtz v0, :cond_b

    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_9

    goto :goto_b

    .line 1552
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 1550
    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method private getRegion(Ljava/lang/String;)I
    .registers 6
    .param p1, "plmn"    # Ljava/lang/String;

    .line 1123
    const/4 v0, 0x0

    if-eqz p1, :cond_3e

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_13

    goto :goto_3e

    .line 1127
    :cond_13
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1128
    .local v0, "currentMcc":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1129
    .local v2, "mcc":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1130
    const-string v1, "[getRegion] REGION_DOMESTIC"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1131
    const/4 v1, 0x1

    return v1

    .line 1133
    .end local v2    # "mcc":Ljava/lang/String;
    :cond_36
    goto :goto_1d

    .line 1134
    :cond_37
    const-string v1, "[getRegion] REGION_FOREIGN"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1135
    const/4 v1, 0x2

    return v1

    .line 1124
    .end local v0    # "currentMcc":Ljava/lang/String;
    :cond_3e
    :goto_3e
    const-string v1, "[getRegion] Invalid PLMN"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1125
    return v0
.end method

.method private getSimLockState()Z
    .registers 4

    .line 256
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v0

    .line 257
    .local v0, "policy":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_f

    const/4 v2, 0x7

    if-gt v0, v2, :cond_f

    .line 258
    return v1

    .line 260
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private getUserType(Ljava/lang/String;)I
    .registers 6
    .param p1, "imsi"    # Ljava/lang/String;

    .line 1139
    const/4 v0, 0x0

    if-eqz p1, :cond_76

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 1140
    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1141
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1142
    .local v1, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1143
    const-string v0, "[getUserType] Type1 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1144
    return v2

    .line 1146
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_2f
    goto :goto_16

    .line 1147
    :cond_30
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1148
    .restart local v1    # "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1149
    const-string v0, "[getUserType] Extended Type1 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1150
    return v2

    .line 1152
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_4e
    goto :goto_36

    .line 1153
    :cond_4f
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1154
    .restart local v1    # "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1155
    const-string v0, "[getUserType] Type3 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1156
    const/4 v0, 0x3

    return v0

    .line 1158
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_6e
    goto :goto_55

    .line 1159
    :cond_6f
    const-string v0, "[getUserType] Type2 user"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1160
    const/4 v0, 0x2

    return v0

    .line 1162
    :cond_76
    const-string v1, "[getUserType] null IMSI"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1163
    return v0
.end method

.method private handleGmssRatChange(Landroid/os/AsyncResult;I)V
    .registers 9
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, "info":[I
    const/4 v1, 0x0

    .line 661
    .local v1, "mccString":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sMajorSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 664
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7f

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_7f

    .line 665
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 666
    const/4 v2, 0x1

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleGmssRatChange] mccString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 668
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v4, 0x3

    if-ne p2, v3, :cond_61

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_61

    .line 669
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->initNWPlmnString()V

    .line 670
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    .line 672
    :cond_61
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v3

    if-ne v3, v2, :cond_95

    .line 673
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 674
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eq v3, v4, :cond_95

    const/4 v3, 0x2

    if-ne v2, v3, :cond_95

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_95

    .line 676
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    goto :goto_95

    .line 680
    :cond_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncResult is wrong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 682
    :cond_95
    :goto_95
    return-void
.end method

.method private handleInvalidSimNotify(ILandroid/os/AsyncResult;)V
    .registers 12
    .param p1, "slotId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 773
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_af

    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_af

    .line 774
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 775
    .local v0, "invalidSimInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 776
    .local v2, "plmn":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 777
    .local v4, "cs_invalid":I
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 778
    .local v5, "ps_invalid":I
    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 779
    .local v6, "cause":I
    const/4 v7, -0x1

    .line 780
    .local v7, "testMode":I
    const-string v8, "vendor.gsm.gcf.testmode"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 781
    .end local v7    # "testMode":I
    .local v1, "testMode":I
    if-eqz v1, :cond_56

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid SIM notified during test mode: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 783
    return-void

    .line 785
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

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 787
    sget-boolean v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceCapable:Z

    if-eqz v7, :cond_9e

    if-ne v4, v3, :cond_9e

    .line 788
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    if-nez v7, :cond_9e

    .line 789
    const-string v7, "CS reject, invalid SIM"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 790
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v3, v7, p1

    .line 791
    return-void

    .line 794
    :cond_9e
    if-ne v5, v3, :cond_ae

    .line 795
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    if-nez v7, :cond_ae

    .line 796
    const-string v7, "PS reject, invalid SIM"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 797
    sget-object v7, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v3, v7, p1

    .line 798
    return-void

    .line 801
    .end local v0    # "invalidSimInfo":[Ljava/lang/String;
    .end local v1    # "testMode":I
    .end local v2    # "plmn":Ljava/lang/String;
    .end local v4    # "cs_invalid":I
    .end local v5    # "ps_invalid":I
    .end local v6    # "cause":I
    :cond_ae
    goto :goto_c5

    .line 802
    :cond_af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 804
    :goto_c5
    return-void
.end method

.method private handleNoService()V
    .registers 14

    .line 973
    const-string v0, "[handleNoService]+ Can not find service"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 975
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 976
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 977
    .local v0, "mdType":I
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v1, v1, v2

    .line 978
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 979
    .local v1, "iccState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_129

    .line 980
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const-string v3, "Standby in FDD modem"

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v2, v6, :cond_10e

    .line 981
    const/4 v2, 0x6

    const-wide/16 v7, 0x3e8

    const-string v9, "s. Timer index = "

    const-string v10, "Wait "

    const-string v11, "s"

    const-string v12, "Timer already set:"

    if-eq v0, v2, :cond_b6

    const/4 v2, 0x4

    if-ne v0, v2, :cond_59

    goto :goto_b6

    .line 997
    :cond_59
    if-eq v0, v4, :cond_5d

    if-ne v0, v5, :cond_12e

    .line 999
    :cond_5d
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v4, v2, v4

    if-ltz v4, :cond_b1

    .line 1000
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    if-nez v3, :cond_96

    .line 1001
    sput-boolean v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    .line 1002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1004
    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v2, v2, v4

    int-to-long v4, v2

    mul-long/2addr v4, v7

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_12e

    .line 1007
    :cond_96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_12e

    .line 1011
    :cond_b1
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_12e

    .line 983
    :cond_b6
    :goto_b6
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v3, v2, v3

    if-ltz v3, :cond_108

    .line 984
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    if-nez v3, :cond_ee

    .line 985
    sput-boolean v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    .line 986
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 988
    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v2, v2, v4

    int-to-long v4, v2

    mul-long/2addr v4, v7

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12e

    .line 991
    :cond_ee
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_12e

    .line 995
    :cond_108
    const-string v2, "Standby in TDD modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_12e

    .line 1014
    :cond_10e
    const/4 v6, 0x2

    if-eq v2, v6, :cond_11a

    if-ne v2, v5, :cond_114

    goto :goto_11a

    .line 1022
    :cond_114
    const-string v2, "Unknow user type"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_12e

    .line 1015
    :cond_11a
    :goto_11a
    if-eq v0, v4, :cond_125

    if-ne v0, v5, :cond_11f

    goto :goto_125

    .line 1019
    :cond_11f
    const-string v2, "Should not enter this state"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_12e

    .line 1017
    :cond_125
    :goto_125
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_12e

    .line 1025
    :cond_129
    const-string v2, "IccState not ready"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1027
    :cond_12e
    :goto_12e
    const-string v2, "[handleNoService]-"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method private handlePlmnChange(Landroid/os/AsyncResult;I)V
    .registers 9
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 610
    const-string v0, "persist.vendor.radio.simswitch"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "currMajorSim":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 612
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v2

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMajorSim]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_36

    .line 615
    :cond_2f
    sput p2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 616
    const-string v1, "[getMajorSim]: fail to get major SIM"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 618
    :goto_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slot:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sMajorSim:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 620
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_c0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_c0

    .line 621
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 622
    .local v1, "plmnString":[Ljava/lang/String;
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p2, v3, :cond_66

    .line 623
    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    .line 625
    :cond_66
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_67
    array-length v4, v1

    if-ge v3, v4, :cond_8b

    .line 626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plmnString["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 625
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 629
    .end local v3    # "i":I
    :cond_8b
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v3

    if-ne v3, v2, :cond_bf

    .line 632
    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 633
    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v5, 0x2

    if-ne v4, p2, :cond_ac

    sget v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-ne v4, v2, :cond_ac

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    if-eq v2, v5, :cond_ac

    .line 635
    aget-object v2, v1, v3

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->searchForDesignateService(Ljava/lang/String;)V

    .line 640
    :cond_ac
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_bf

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v2, v5, :cond_bf

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_bf

    .line 643
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    .line 646
    .end local v1    # "plmnString":[Ljava/lang/String;
    :cond_bf
    goto :goto_d6

    .line 647
    :cond_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncResult is wrong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 649
    :goto_d6
    return-void
.end method

.method private handleRadioOn(I)V
    .registers 6
    .param p1, "slotId"    # I

    .line 572
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRadioOn Slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sMajorSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 574
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 575
    const/4 v0, 0x0

    const-string v2, "try to resume camping again"

    packed-switch p1, :pswitch_data_8a

    .line 605
    const-string v0, "unknow slotid"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_88

    .line 598
    :pswitch_35
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail4:Z

    if-eqz v3, :cond_88

    .line 599
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 600
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 601
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail4:Z

    goto :goto_88

    .line 591
    :pswitch_4a
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail3:Z

    if-eqz v3, :cond_88

    .line 592
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 593
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 594
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail3:Z

    goto :goto_88

    .line 584
    :pswitch_5f
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail2:Z

    if-eqz v3, :cond_88

    .line 585
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 586
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 587
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail2:Z

    goto :goto_88

    .line 577
    :pswitch_74
    sget-boolean v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail1:Z

    if-eqz v3, :cond_88

    .line 578
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 579
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 580
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail1:Z

    .line 607
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

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registration Suspend Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 739
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->isModemTypeSwitching()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 740
    return-void

    .line 742
    :cond_1b
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_8d

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_8d

    .line 743
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, p2

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspending with Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 747
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7b

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne v0, p2, :cond_7b

    .line 749
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    if-eqz v0, :cond_59

    .line 750
    invoke-direct {p0, p2, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(IZ)V

    goto :goto_a3

    .line 752
    :cond_59
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    aput-boolean v1, v0, p2

    .line 753
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    if-nez v0, :cond_70

    .line 754
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    .line 755
    const-string v0, "Wait EMSR:8s"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_75

    .line 758
    :cond_70
    const-string v0, "Emsr Resume Timer already set:8s"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 760
    :goto_75
    const-string v0, "User type unknown, wait for IMSI"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_a3

    .line 763
    :cond_7b
    const-string v0, "Not major slot or in maual selection mode, camp on OK"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 764
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v0, v0, p2

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_a3

    .line 767
    :cond_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 769
    :goto_a3
    return-void
.end method

.method private handleServiceStateChange(Landroid/os/AsyncResult;I)V
    .registers 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "slotId"    # I

    .line 685
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sMajorSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "RadioState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v1, v1, p2

    .line 687
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 688
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_153

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_153

    .line 689
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    .line 690
    if-eqz v0, :cond_14d

    .line 691
    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    .line 692
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getVoiceRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    .line 693
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilVoiceRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I

    .line 694
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRadioTechnology:I

    .line 695
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getDataRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    .line 696
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilDataRegState()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I

    .line 697
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Lmediatek/telephony/MtkServiceState;

    invoke-virtual {v0}, Lmediatek/telephony/MtkServiceState;->getRilDataRadioTechnology()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRadioTechnology:I

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sMajorSim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sPlmnSs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sVoiceRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sRilVoiceRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sRilVoiceRadioTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRadioTechnology:I

    .line 704
    invoke-static {v1}, Lmediatek/telephony/MtkServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sDataRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sRilDataRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sRilDataRadioTech: , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRadioTechnology:I

    .line 708
    invoke-static {v1}, Lmediatek/telephony/MtkServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 709
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    .line 710
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p2, v0, :cond_169

    .line 711
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_139

    .line 712
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isNoService()Z

    move-result v0

    if-eqz v0, :cond_122

    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->getRadioState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_122

    .line 714
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleNoService()V

    goto :goto_169

    .line 715
    :cond_122
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isInService()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 716
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    .line 717
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 718
    const-string v0, "reset sIsInvalidSim"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 719
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v2, v0, p2

    goto :goto_169

    .line 722
    :cond_139
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isInService()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 723
    const-string v0, "reset sIsInvalidSim in manual mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 724
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    .line 725
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v2, v0, p2

    goto :goto_169

    .line 730
    :cond_14d
    const-string v0, "Null sServiceState"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_169

    .line 733
    :cond_153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 735
    :cond_169
    :goto_169
    return-void
.end method

.method private handleSimApplicationStateChanged(II)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "state"    # I

    .line 264
    invoke-static {p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getSimLockedState(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, v0, :cond_45

    .line 265
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v0

    if-ne v0, v3, :cond_45

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p1, v0, :cond_17

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    if-ne p1, v0, :cond_45

    .line 267
    :cond_17
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSimLockState()Z

    move-result v0

    .line 268
    .local v0, "lockPolicy":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle sim applicatin state changed,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 269
    if-ne v0, v3, :cond_41

    const/4 v4, 0x4

    if-ne p2, v4, :cond_41

    .line 270
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    .line 271
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    goto :goto_45

    .line 273
    :cond_41
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    .line 274
    sput p1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    .line 277
    .end local v0    # "lockPolicy":Z
    :cond_45
    :goto_45
    invoke-static {p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getSimLockedState(I)Z

    move-result v0

    if-nez v0, :cond_69

    .line 278
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v0

    if-ne v0, v3, :cond_69

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p1, v0, :cond_59

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    if-ne p1, v0, :cond_69

    :cond_59
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    if-ne v0, v3, :cond_69

    .line 280
    const-string v0, "retry to world mode change after not major sim pin unlock"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 281
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    .line 282
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    .line 283
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V

    .line 286
    :cond_69
    const/16 v0, 0xa

    if-ne p2, v0, :cond_192

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset sIsInvalidSim by solt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aput-boolean v2, v0, p1

    .line 289
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 290
    if-eqz v0, :cond_18c

    .line 291
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    aput-object v1, v0, p1

    .line 296
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v0, p1

    if-eqz v1, :cond_186

    .line 297
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    .line 302
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v0

    if-ne v0, v3, :cond_145

    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p1, v0, :cond_145

    .line 304
    const-string v0, "Major SIM"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 306
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aget-boolean v4, v1, p1

    if-eqz v4, :cond_f1

    .line 307
    aput-boolean v2, v1, p1

    .line 308
    const/16 v1, 0x64

    const/4 v4, 0x2

    if-ne v0, v3, :cond_e9

    .line 309
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v0, v3, :cond_dd

    .line 310
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    goto :goto_f1

    .line 311
    :cond_dd
    if-ne v0, v4, :cond_e3

    .line 312
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    goto :goto_f1

    .line 314
    :cond_e3
    const-string v0, "Region unknown"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_f1

    .line 316
    :cond_e9
    if-eq v0, v4, :cond_ee

    const/4 v4, 0x3

    if-ne v0, v4, :cond_f1

    .line 317
    :cond_ee
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    .line 320
    :cond_f1
    :goto_f1
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_192

    .line 321
    aput-boolean v2, v0, p1

    .line 322
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_13f

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSI fot slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " now ready, resuming PLMN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sWaitInEmsrResume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 326
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    if-nez v0, :cond_13b

    .line 327
    invoke-direct {p0, p1, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(IZ)V

    goto :goto_192

    .line 329
    :cond_13b
    invoke-direct {p0, p1, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(IZ)V

    goto :goto_192

    .line 332
    :cond_13f
    const-string v0, "sNwPlmnStrings is Null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_192

    .line 336
    :cond_145
    const-string v0, "Not major SIM or in maual selection mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 337
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    .line 338
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_192

    .line 339
    aput-boolean v2, v0, p1

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSI for slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resuming with ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v0, v0, p1

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_192

    .line 299
    :cond_186
    const-string v0, "Null sIccRecordsInstance"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 300
    return-void

    .line 293
    :cond_18c
    const-string v0, "Null sUiccController"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 294
    return-void

    .line 345
    :cond_192
    :goto_192
    return-void
.end method

.method private handleSimCardStateChanged(II)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "state"    # I

    .line 237
    const/4 v0, 0x1

    if-ne p2, v0, :cond_45

    .line 238
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;

    .line 239
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, p1

    .line 240
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v0, v1, p1

    .line 241
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 242
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    if-ne p1, v1, :cond_2c

    .line 243
    const-string v1, "Major SIM removed, no world phone service"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 245
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 246
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 247
    const/16 v0, -0x63

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 248
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    goto :goto_45

    .line 250
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not major SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 253
    :cond_45
    :goto_45
    return-void
.end method

.method private handleSimSwitched()V
    .registers 6

    .line 932
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    .line 933
    const-string v0, "Major capability turned off"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 934
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 935
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    goto/16 :goto_ad

    .line 936
    :cond_12
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v0

    if-nez v0, :cond_22

    .line 937
    const-string v0, "Auto modem selection disabled"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 938
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    goto/16 :goto_ad

    .line 939
    :cond_22
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    const/16 v2, -0x63

    if-ne v0, v2, :cond_2f

    .line 940
    const-string v0, "Major SIM unknown"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_ad

    .line 942
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Major capability in slot"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 943
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v3, v0, v2

    if-eqz v3, :cond_ae

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_ae

    .line 949
    :cond_58
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 950
    const/16 v2, 0x64

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_98

    .line 951
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_76

    .line 952
    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 954
    :cond_76
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v0, v4, :cond_86

    .line 955
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v1, v0, v2

    .line 956
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    goto :goto_ad

    .line 957
    :cond_86
    if-ne v0, v3, :cond_92

    .line 958
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v1, v0, v3

    .line 959
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    goto :goto_ad

    .line 961
    :cond_92
    const-string v0, "Unknown region"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_ad

    .line 963
    :cond_98
    if-eq v0, v3, :cond_a4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_9e

    goto :goto_a4

    .line 967
    :cond_9e
    const-string v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_ad

    .line 964
    :cond_a4
    :goto_a4
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v1, v0, v3

    .line 965
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    .line 970
    :goto_ad
    return-void

    .line 945
    :cond_ae
    :goto_ae
    const-string v0, "Major slot IMSI not ready"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 946
    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 947
    return-void
.end method

.method private handleSwitchModem(I)Z
    .registers 14
    .param p1, "toModem"    # I

    .line 807
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    .line 809
    .local v0, "mMajorSim":I
    const/4 v1, 0x0

    .line 810
    .local v1, "ci":Lcom/android/internal/telephony/CommandsInterface;
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInFddTimeOut:I

    const/4 v3, 0x0

    if-nez v2, :cond_32

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInTddTimeOut:I

    if-nez v2, :cond_32

    .line 811
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isEccInProgress()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleSwitchModem]In ECC:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mIsRegisterEccStateReceiver:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 813
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mIsRegisterEccStateReceiver:Z

    if-nez v2, :cond_31

    .line 814
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->registerEccStateReceiver()V

    .line 816
    :cond_31
    return v3

    .line 819
    :cond_32
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInFddTimeOut:I

    .line 820
    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInTddTimeOut:I

    .line 823
    :cond_36
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4f

    .line 824
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 825
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isNeedSwitchModem(I)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 826
    const-string v2, "[handleSwitchModem]No need to handle, switch not executed!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 827
    return v3

    .line 831
    :cond_4f
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    if-ne v2, v4, :cond_59

    .line 832
    const-string v2, "sim has been locked!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 833
    return v3

    .line 835
    :cond_59
    if-ltz v0, :cond_6d

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_6d

    .line 836
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v2

    if-ne v2, v4, :cond_6d

    .line 837
    const-string v2, "[handleSwitchModem] Invalid SIM, switch not executed!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 838
    return v3

    .line 840
    :cond_6d
    const/16 v2, 0x64

    const/16 v5, 0x65

    if-ne p1, v5, :cond_7d

    .line 841
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 842
    const/4 p1, 0x6

    goto :goto_88

    .line 844
    :cond_7b
    const/4 p1, 0x4

    goto :goto_88

    .line 846
    :cond_7d
    if-ne p1, v2, :cond_88

    .line 847
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v6

    if-eqz v6, :cond_87

    .line 848
    const/4 p1, 0x5

    goto :goto_88

    .line 850
    :cond_87
    const/4 p1, 0x3

    .line 854
    :cond_88
    :goto_88
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v6

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-ne p1, v6, :cond_b2

    .line 855
    if-ne p1, v10, :cond_9a

    .line 856
    const-string v2, "Already in WG modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_b1

    .line 857
    :cond_9a
    if-ne p1, v9, :cond_a2

    .line 858
    const-string v2, "Already in TG modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_b1

    .line 859
    :cond_a2
    if-ne p1, v8, :cond_aa

    .line 860
    const-string v2, "Already in FDD CSFB modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_b1

    .line 861
    :cond_aa
    if-ne p1, v7, :cond_b1

    .line 862
    const-string v2, "Already in TDD CSFB modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 864
    :cond_b1
    :goto_b1
    return v3

    .line 867
    :cond_b2
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v6

    const/4 v11, 0x0

    if-nez v6, :cond_d5

    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleSwitchModem] Auto select disable, storing modem type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 869
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_138

    .line 871
    :cond_d5
    sget v6, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I

    if-nez v6, :cond_f5

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleSwitchModem] Storing modem type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 873
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_138

    .line 874
    :cond_f5
    if-ne v6, v2, :cond_117

    .line 875
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 876
    const-string v2, "[handleSwitchModem] Storing modem type: 5"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 878
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v3

    invoke-virtual {v2, v8, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_138

    .line 881
    :cond_10a
    const-string v2, "[handleSwitchModem] Storing modem type: 3"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 883
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v3

    invoke-virtual {v2, v10, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_138

    .line 886
    :cond_117
    if-ne v6, v5, :cond_138

    .line 887
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 888
    const-string v2, "[handleSwitchModem] Storing modem type: 6"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 890
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v3

    invoke-virtual {v2, v7, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_138

    .line 893
    :cond_12c
    const-string v2, "[handleSwitchModem] Storing modem type: 4"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 895
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, v3

    invoke-virtual {v2, v9, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    .line 901
    :cond_138
    :goto_138
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_139
    sget v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v2, v5, :cond_166

    .line 902
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_163

    .line 903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not idle, modem switch not allowed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 904
    return v3

    .line 901
    :cond_163
    add-int/lit8 v2, v2, 0x1

    goto :goto_139

    .line 908
    .end local v2    # "i":I
    :cond_166
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 910
    if-ne p1, v10, :cond_171

    .line 911
    const-string v2, "Switching to WG modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_188

    .line 912
    :cond_171
    if-ne p1, v9, :cond_179

    .line 913
    const-string v2, "Switching to TG modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_188

    .line 914
    :cond_179
    if-ne p1, v8, :cond_181

    .line 915
    const-string v2, "Switching to FDD CSFB modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_188

    .line 916
    :cond_181
    if-ne p1, v7, :cond_188

    .line 917
    const-string v2, "Switching to TDD CSFB modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 919
    :cond_188
    :goto_188
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isSimSwitching()Z

    move-result v2

    if-ne v2, v4, :cond_1a9

    .line 920
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getToModemType()I

    move-result v2

    if-ne p1, v2, :cond_1a9

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim switching, already will to set modem:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 922
    return v3

    .line 926
    :cond_1a9
    invoke-static {v3, p1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->switchModem(II)V

    .line 927
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    .line 928
    return v4
.end method

.method private handleWorldPhoneTest(II)V
    .registers 10
    .param p1, "fakeUserType"    # I
    .param p2, "fakeRegion"    # I

    .line 1619
    const/4 v0, 0x0

    .line 1621
    .local v0, "hasChanged":Z
    if-nez p1, :cond_23

    if-nez p2, :cond_23

    .line 1622
    const-string v1, "Leave ADB Test mode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1624
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1625
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1626
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1627
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1628
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->loadDefaultData()V

    goto/16 :goto_118

    .line 1630
    :cond_23
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 1631
    const/16 v2, -0x63

    if-eq v1, v2, :cond_b6

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b6

    .line 1632
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v1, v2, v1

    .line 1633
    .local v1, "imsi":Ljava/lang/String;
    const/4 v2, 0x5

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v1, :cond_6a

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 1634
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1635
    packed-switch p1, :pswitch_data_11a

    .line 1645
    :pswitch_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown fakeUserType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_6f

    .line 1641
    :pswitch_5c
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1642
    const/4 v0, 0x1

    .line 1643
    goto :goto_6f

    .line 1637
    :pswitch_63
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1638
    const/4 v0, 0x1

    .line 1639
    goto :goto_6f

    .line 1648
    :cond_6a
    const-string v5, "Imsi of sMajorSim is unknown"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1651
    :goto_6f
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 1652
    .local v5, "currentMcc":Ljava/lang/String;
    if-eqz v5, :cond_b0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_82

    goto :goto_b0

    .line 1655
    :cond_82
    const/4 v2, 0x3

    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1656
    .end local v5    # "currentMcc":Ljava/lang/String;
    .local v2, "currentMcc":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_91

    .line 1657
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    const/4 v0, 0x1

    goto :goto_b5

    .line 1659
    :cond_91
    const/4 v3, 0x2

    if-ne p2, v3, :cond_9b

    .line 1660
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1661
    const/4 v0, 0x1

    goto :goto_b5

    .line 1663
    :cond_9b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown fakeRegion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_b5

    .line 1653
    .end local v2    # "currentMcc":Ljava/lang/String;
    .restart local v5    # "currentMcc":Ljava/lang/String;
    :cond_b0
    :goto_b0
    const-string v2, "Invalid sNwPlmnStrings"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1666
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v5    # "currentMcc":Ljava/lang/String;
    :goto_b5
    goto :goto_bb

    .line 1667
    :cond_b6
    const-string v1, "sMajorSim is Unknown or Capability OFF"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1670
    :goto_bb
    if-eqz v0, :cond_118

    .line 1671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sPlmnType1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sPlmnType1Ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sPlmnType3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sMccDomestic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioTechModeSwitch()V

    .line 1678
    :cond_118
    :goto_118
    return-void

    nop

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_63
        :pswitch_47
        :pswitch_5c
    .end packed-switch
.end method

.method private static declared-synchronized initNWPlmnString()V
    .registers 2

    const-class v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    monitor-enter v0

    .line 652
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-nez v1, :cond_c

    .line 653
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 655
    :cond_c
    monitor-exit v0

    return-void

    .line 651
    :catchall_e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private is3GCdmaCard(I)Z
    .registers 3
    .param p1, "cardType"    # I

    .line 1539
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_10

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_10

    .line 1541
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->containsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1542
    const/4 v0, 0x1

    return v0

    .line 1544
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private is4GCdmaCard(I)Z
    .registers 3
    .param p1, "cardType"    # I

    .line 1531
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_c

    .line 1532
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->containsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1533
    const/4 v0, 0x1

    return v0

    .line 1535
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private isAllowCampOn(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "plmnString"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[isAllowCampOn] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "User type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1033
    const/4 v0, 0x0

    .line 1034
    .local v0, "mdType":I
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 1035
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isSimSwitching()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_49

    .line 1036
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getToModemType()I

    move-result v0

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimSwitching mdType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_4d

    .line 1039
    :cond_49
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 1041
    :goto_4d
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v3, 0x5

    const-string v4, "Camp on OK"

    const/4 v5, 0x4

    const/4 v6, 0x6

    const-string v7, "Camp on REJECT"

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-ne v1, v2, :cond_91

    .line 1042
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v1, v2, :cond_74

    .line 1043
    if-eq v0, v6, :cond_6e

    if-ne v0, v5, :cond_64

    goto :goto_6e

    .line 1048
    :cond_64
    if-eq v0, v3, :cond_68

    if-ne v0, v9, :cond_a6

    .line 1050
    :cond_68
    sput v9, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1051
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1052
    return v10

    .line 1045
    :cond_6e
    :goto_6e
    sput v10, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1046
    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1047
    return v2

    .line 1054
    :cond_74
    if-ne v1, v8, :cond_8b

    .line 1055
    if-eq v0, v6, :cond_85

    if-ne v0, v5, :cond_7b

    goto :goto_85

    .line 1060
    :cond_7b
    if-eq v0, v3, :cond_7f

    if-ne v0, v9, :cond_a6

    .line 1062
    :cond_7f
    sput v10, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1063
    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1064
    return v2

    .line 1057
    :cond_85
    :goto_85
    sput v8, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1058
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1059
    return v10

    .line 1067
    :cond_8b
    const-string v1, "Unknow region"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_a6

    .line 1069
    :cond_91
    if-eq v1, v8, :cond_9c

    if-ne v1, v9, :cond_96

    goto :goto_9c

    .line 1082
    :cond_96
    const-string v1, "Unknown user type"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_a6

    .line 1070
    :cond_9c
    :goto_9c
    if-eq v0, v6, :cond_b2

    if-ne v0, v5, :cond_a1

    goto :goto_b2

    .line 1075
    :cond_a1
    if-eq v0, v3, :cond_ac

    if-ne v0, v9, :cond_a6

    goto :goto_ac

    .line 1084
    :cond_a6
    :goto_a6
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1085
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1086
    return v10

    .line 1077
    :cond_ac
    :goto_ac
    sput v10, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1078
    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1079
    return v2

    .line 1072
    :cond_b2
    :goto_b2
    sput v8, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1073
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1074
    return v10
.end method

.method private isEccInProgress()Z
    .registers 7

    .line 1587
    const-string v0, "ril.cdma.inecmmode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1588
    .local v0, "value":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1589
    .local v1, "inEcm":Z
    const/4 v2, 0x0

    .line 1590
    .local v2, "isInEcc":Z
    nop

    .line 1591
    const-string v3, "telecom"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1590
    invoke-static {v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v3

    .line 1592
    .local v3, "tm":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v3, :cond_28

    .line 1594
    :try_start_1c
    invoke-interface {v3}, Lcom/android/internal/telecom/ITelecomService;->isInEmergencyCall()Z

    move-result v4
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_22

    move v2, v4

    .line 1597
    goto :goto_28

    .line 1595
    :catch_22
    move-exception v4

    .line 1596
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Exception of isEccInProgress"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1599
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

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1600
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

    .line 1090
    const/4 v0, 0x0

    .line 1092
    .local v0, "inService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    if-eqz v1, :cond_9

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    if-nez v1, :cond_a

    .line 1094
    :cond_9
    const/4 v0, 0x1

    .line 1096
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1097
    return v0
.end method

.method private isNeedSwitchModem(I)Z
    .registers 6
    .param p1, "majorSimId"    # I

    .line 1502
    const/4 v0, 0x1

    .line 1503
    .local v0, "isNeed":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isC2kSupport()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1504
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getActiveSvlteModeSlotId()I

    move-result v1

    .line 1505
    .local v1, "activeSvlteModeSlotId":I
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    if-ltz p1, :cond_1c

    if-ne p1, v1, :cond_1c

    .line 1507
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1c

    .line 1508
    const/4 v0, 0x0

    .line 1512
    .end local v1    # "activeSvlteModeSlotId":I
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isNeedSwitchModem] isNeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1513
    return v0
.end method

.method private isNoService()Z
    .registers 5

    .line 1101
    const/4 v0, 0x0

    .line 1103
    .local v0, "noService":Z
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I

    if-eqz v1, :cond_e

    const/16 v3, 0xa

    if-ne v1, v3, :cond_18

    :cond_e
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I

    if-ne v1, v2, :cond_18

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I

    if-nez v1, :cond_18

    .line 1111
    const/4 v0, 0x1

    goto :goto_19

    .line 1113
    :cond_18
    const/4 v0, 0x0

    .line 1115
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1116
    return v0
.end method

.method private isSpecialCardMode()Z
    .registers 7

    .line 1517
    const/4 v0, 0x0

    .line 1518
    .local v0, "specialCardMode":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getC2KWPCardType()[I

    move-result-object v1

    .line 1520
    .local v1, "cardType":[I
    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is4GCdmaCard(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_17

    aget v3, v1, v4

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is4GCdmaCard(I)Z

    move-result v3

    if-nez v3, :cond_27

    :cond_17
    aget v3, v1, v2

    .line 1521
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is3GCdmaCard(I)Z

    move-result v3

    if-eqz v3, :cond_48

    aget v3, v1, v4

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->is3GCdmaCard(I)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1522
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSpecialCardMode cardType1="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cardType2="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1524
    const/4 v0, 0x1

    .line 1526
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSpecialCardMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1527
    return v0
.end method

.method private static loadDefaultData()V
    .registers 6

    .line 1604
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_11

    aget-object v4, v0, v3

    .line 1605
    .local v4, "plmn":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    .end local v4    # "plmn":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1607
    :cond_11
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE1_EXT:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_21

    aget-object v4, v0, v3

    .line 1608
    .restart local v4    # "plmn":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    .end local v4    # "plmn":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1610
    :cond_21
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_25
    if-ge v3, v1, :cond_31

    aget-object v4, v0, v3

    .line 1611
    .restart local v4    # "plmn":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1610
    .end local v4    # "plmn":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1613
    :cond_31
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    array-length v1, v0

    :goto_34
    if-ge v2, v1, :cond_40

    aget-object v3, v0, v2

    .line 1614
    .local v3, "mcc":Ljava/lang/String;
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    .end local v3    # "mcc":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 1616
    :cond_40
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 1681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WPOM]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORLDMODE"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    return-void
.end method

.method private registerEccStateReceiver()V
    .registers 4

    .line 1567
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 1568
    const-string v0, "registerEccStateReceiver, context is null => return"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1569
    return-void

    .line 1571
    :cond_a
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1572
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1573
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1574
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mIsRegisterEccStateReceiver:Z

    .line 1575
    return-void
.end method

.method private removeEmsrResumeByTimer()V
    .registers 2

    .line 1259
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    if-eqz v0, :cond_11

    .line 1260
    const-string v0, "Remove EMSR wait timer. Set sWaitInEmsrResume = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1261
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInEmsrResume:Z

    .line 1262
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mEmsrResumeByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1264
    :cond_11
    return-void
.end method

.method private removeModemStandByTimer()V
    .registers 3

    .line 1232
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1233
    const-string v0, "Remove TDD wait timer. Set sWaitInTdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1234
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInTdd:Z

    .line 1235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1237
    :cond_11
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    if-eqz v0, :cond_21

    .line 1238
    const-string v0, "Remove FDD wait timer. Set sWaitInFdd = false"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1239
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sWaitInFdd:Z

    .line 1240
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1242
    :cond_21
    return-void
.end method

.method private resetAllProperties()V
    .registers 4

    .line 1267
    const-string v0, "[resetAllProperties]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1268
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    .line 1269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_15

    .line 1270
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v2, v1, v0

    .line 1269
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1272
    .end local v0    # "i":I
    :cond_15
    sput v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    .line 1273
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail1:Z

    .line 1274
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail2:Z

    .line 1275
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail3:Z

    .line 1276
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail4:Z

    .line 1277
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I

    .line 1278
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetSimProperties()V

    .line 1279
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    .line 1280
    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    .line 1281
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I

    .line 1282
    return-void
.end method

.method private resetNetworkProperties()V
    .registers 5

    .line 1285
    const-string v0, "[resetNetworkProperties]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1286
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_15

    .line 1288
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1287
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1290
    .end local v1    # "i":I
    :cond_15
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 1291
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1a
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_26

    .line 1292
    const-string v3, ""

    aput-object v3, v2, v1

    .line 1291
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1295
    .end local v1    # "i":I
    :cond_26
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeEmsrResumeByTimer()V

    .line 1296
    monitor-exit v0

    .line 1297
    return-void

    .line 1296
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private resetSimProperties()V
    .registers 5

    .line 1300
    const-string v0, "[resetSimProperties]"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1301
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1302
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_16

    .line 1303
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v1

    .line 1302
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1305
    .end local v1    # "i":I
    :cond_16
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1306
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 1307
    monitor-exit v0

    .line 1308
    return-void

    .line 1307
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

    .line 1168
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

    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1171
    const/4 v0, 0x0

    .line 1172
    .local v0, "switchModem":Z
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_87

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_87

    .line 1173
    aget-object v1, v1, v2

    .line 1174
    .local v1, "plmnString":Ljava/lang/String;
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLocked:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6a

    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_6a

    .line 1177
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1178
    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_60

    .line 1179
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    move-result v0

    goto :goto_6b

    .line 1180
    :cond_60
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6b

    .line 1181
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    move-result v0

    goto :goto_6b

    .line 1175
    :cond_6a
    :goto_6a
    const/4 v0, 0x0

    .line 1184
    :cond_6b
    :goto_6b
    if-nez v0, :cond_8c

    .line 1185
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 1186
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeEmsrResumeByTimer()V

    .line 1187
    if-eqz p2, :cond_8c

    .line 1188
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I

    aget v3, v3, p1

    add-int/lit8 v4, p1, 0x46

    .line 1189
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1188
    invoke-virtual {v2, v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_8c

    .line 1193
    .end local v1    # "plmnString":Ljava/lang/String;
    :cond_87
    const-string v1, "sNwPlmnStrings[0] is null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1195
    :cond_8c
    :goto_8c
    return-void
.end method

.method private searchForDesignateService(Ljava/lang/String;)V
    .registers 5
    .param p1, "strPlmn"    # Ljava/lang/String;

    .line 1311
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_a

    goto :goto_5c

    .line 1315
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1316
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1317
    .local v1, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1318
    const-string v0, "Find TD service"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sUserType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sRegion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1320
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5b

    .line 1321
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    .line 1322
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    goto :goto_5b

    .line 1326
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_5a
    goto :goto_15

    .line 1328
    :cond_5b
    :goto_5b
    return-void

    .line 1312
    :cond_5c
    :goto_5c
    const-string v0, "[searchForDesignateService]- null source"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1313
    return-void
.end method

.method private unRegisterEccStateReceiver()V
    .registers 3

    .line 1578
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 1579
    const-string v0, "unRegisterEccStateReceiver, context is null => return"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1580
    return-void

    .line 1582
    :cond_a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mWorldPhoneEccStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->mIsRegisterEccStateReceiver:Z

    .line 1584
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 444
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 445
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_13e

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_13d

    .line 547
    :sswitch_25
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 548
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 549
    goto/16 :goto_13d

    .line 543
    :sswitch_2f
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 544
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 545
    goto/16 :goto_13d

    .line 539
    :sswitch_39
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 541
    goto/16 :goto_13d

    .line 535
    :sswitch_43
    const-string v1, "handleMessage : <EVENT_WP_GMSS_RAT_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 536
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleGmssRatChange(Landroid/os/AsyncResult;I)V

    .line 537
    goto/16 :goto_13d

    .line 563
    :sswitch_4d
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 564
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 565
    goto/16 :goto_13d

    .line 559
    :sswitch_57
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 561
    goto/16 :goto_13d

    .line 555
    :sswitch_61
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 557
    goto/16 :goto_13d

    .line 551
    :sswitch_6b
    const-string v1, "handleMessage : <EVENT_SERVICE_STATE_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 552
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleServiceStateChange(Landroid/os/AsyncResult;I)V

    .line 553
    goto/16 :goto_13d

    .line 529
    :sswitch_75
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13d

    .line 530
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_4> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 531
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail4:Z

    goto/16 :goto_13d

    .line 523
    :sswitch_82
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13d

    .line 524
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_3> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 525
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail3:Z

    goto/16 :goto_13d

    .line 517
    :sswitch_8f
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13d

    .line 518
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_2> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 519
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail2:Z

    goto/16 :goto_13d

    .line 511
    :sswitch_9c
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13d

    .line 512
    const-string v1, "handleMessage : <EVENT_RESUME_CAMPING_1> with exception"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 513
    sput-boolean v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsResumeCampingFail1:Z

    goto/16 :goto_13d

    .line 507
    :sswitch_a9
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 508
    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 509
    goto/16 :goto_13d

    .line 503
    :sswitch_b3
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 504
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 505
    goto/16 :goto_13d

    .line 499
    :sswitch_bd
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 500
    invoke-direct {p0, v5, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 501
    goto/16 :goto_13d

    .line 495
    :sswitch_c7
    const-string v1, "handleMessage : <EVENT_INVALID_SIM_NOTIFY_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 496
    invoke-direct {p0, v4, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleInvalidSimNotify(ILandroid/os/AsyncResult;)V

    .line 497
    goto/16 :goto_13d

    .line 491
    :sswitch_d1
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 492
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 493
    goto :goto_13d

    .line 479
    :sswitch_da
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 480
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 481
    goto :goto_13d

    .line 467
    :sswitch_e3
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 468
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 469
    goto :goto_13d

    .line 455
    :sswitch_ec
    const-string v1, "handleMessage : <EVENT_REG_SUSPENDED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRegistrationSuspend(Landroid/os/AsyncResult;I)V

    .line 457
    goto :goto_13d

    .line 487
    :sswitch_f5
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 488
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 489
    goto :goto_13d

    .line 475
    :sswitch_fe
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 476
    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 477
    goto :goto_13d

    .line 463
    :sswitch_107
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 464
    invoke-direct {p0, v0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 465
    goto :goto_13d

    .line 451
    :sswitch_110
    const-string v1, "handleMessage : <EVENT_REG_PLMN_CHANGED_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 452
    invoke-direct {p0, v0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    .line 453
    goto :goto_13d

    .line 483
    :sswitch_119
    const-string v1, "handleMessage : <EVENT_RADIO_ON_4>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    .line 485
    goto :goto_13d

    .line 471
    :sswitch_122
    const-string v1, "handleMessage : <EVENT_RADIO_ON_3>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 472
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    .line 473
    goto :goto_13d

    .line 459
    :sswitch_12b
    const-string v1, "handleMessage : <EVENT_RADIO_ON_2>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 460
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    .line 461
    goto :goto_13d

    .line 447
    :sswitch_134
    const-string v1, "handleMessage : <EVENT_RADIO_ON_1>"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 448
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioOn(I)V

    .line 449
    nop

    .line 569
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

.method public handleRadioTechModeSwitch()V
    .registers 6

    .line 1445
    const/4 v0, 0x0

    .line 1446
    .local v0, "toModem":I
    const-string v1, "[handleRadioTechModeSwitch]"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1447
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v1

    if-nez v1, :cond_16

    .line 1448
    const-string v1, "Auto modem selection disabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1449
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    goto/16 :goto_b3

    .line 1451
    :cond_16
    const-string v1, "Auto modem selection enabled"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1452
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_b4

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto/16 :goto_b4

    .line 1458
    :cond_30
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1459
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6a

    .line 1460
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v1, :cond_4c

    .line 1461
    aget-object v1, v1, v4

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 1463
    :cond_4c
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v1, v3, :cond_59

    .line 1464
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v4, v1, v2

    .line 1465
    const/16 v0, 0x65

    goto :goto_7e

    .line 1466
    :cond_59
    if-ne v1, v2, :cond_64

    .line 1467
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v4, v1, v2

    .line 1468
    const/16 v0, 0x64

    goto :goto_7e

    .line 1470
    :cond_64
    const-string v1, "Unknown region"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1471
    return-void

    .line 1473
    :cond_6a
    if-eq v1, v2, :cond_76

    const/4 v2, 0x3

    if-ne v1, v2, :cond_70

    goto :goto_76

    .line 1477
    :cond_70
    const-string v1, "Unknown user type"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1478
    return-void

    .line 1474
    :cond_76
    :goto_76
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    sget v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    aput-boolean v4, v1, v2

    .line 1475
    const/16 v0, 0x64

    .line 1481
    :goto_7e
    const/16 v1, 0x65

    if-ne v0, v1, :cond_8c

    .line 1482
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1483
    const/4 v0, 0x6

    goto :goto_99

    .line 1485
    :cond_8a
    const/4 v0, 0x4

    goto :goto_99

    .line 1487
    :cond_8c
    const/16 v1, 0x64

    if-ne v0, v1, :cond_99

    .line 1488
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 1489
    const/4 v0, 0x5

    goto :goto_99

    .line 1491
    :cond_98
    const/4 v0, 0x3

    .line 1495
    :cond_99
    :goto_99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleRadioTechModeSwitch]: switch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1496
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    .line 1497
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    .line 1499
    :goto_b3
    return-void

    .line 1454
    :cond_b4
    :goto_b4
    const-string v1, "Capaility slot IMSI not ready"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1455
    sput v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1456
    return-void
.end method

.method public notifyRadioCapabilityChange(I)V
    .registers 9
    .param p1, "capailitySimId"    # I

    .line 1350
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1351
    .local v0, "majorSimId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getActiveSvlteModeSlotId()I

    move-result v1

    .line 1352
    .local v1, "activeSvlteModeSlotId":I
    const/4 v2, 0x0

    .line 1354
    .local v2, "toModem":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRadioCapabilityChange] majorSimId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " capailitySimId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1356
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeEmsrResumeByTimer()V

    .line 1357
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getModemSelectionMode()I

    move-result v3

    if-nez v3, :cond_38

    .line 1358
    const-string v3, "[setRadioCapabilityChange] Auto modem selection disabled"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1359
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    goto/16 :goto_10c

    .line 1361
    :cond_38
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v4, v3, p1

    const/4 v5, 0x0

    if-eqz v4, :cond_10d

    aget-object v3, v3, p1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto/16 :goto_10d

    .line 1367
    :cond_4b
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1368
    const/4 v4, 0x2

    const/4 v6, 0x1

    if-ne v3, v6, :cond_7f

    .line 1369
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;

    if-eqz v3, :cond_65

    .line 1370
    aget-object v3, v3, v5

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    .line 1372
    :cond_65
    sget v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I

    if-ne v3, v6, :cond_70

    .line 1373
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v5, v3, p1

    .line 1374
    const/16 v2, 0x65

    goto :goto_91

    .line 1375
    :cond_70
    if-ne v3, v4, :cond_79

    .line 1376
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v5, v3, p1

    .line 1377
    const/16 v2, 0x64

    goto :goto_91

    .line 1379
    :cond_79
    const-string v3, "Unknown region"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1380
    return-void

    .line 1382
    :cond_7f
    if-eq v3, v4, :cond_8b

    const/4 v4, 0x3

    if-ne v3, v4, :cond_85

    goto :goto_8b

    .line 1386
    :cond_85
    const-string v3, "Unknown user type"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1387
    return-void

    .line 1383
    :cond_8b
    :goto_8b
    sget-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v5, v3, p1

    .line 1384
    const/16 v2, 0x64

    .line 1390
    :goto_91
    const/16 v3, 0x65

    if-ne v2, v3, :cond_9f

    .line 1391
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 1392
    const/4 v2, 0x6

    goto :goto_ac

    .line 1394
    :cond_9d
    const/4 v2, 0x4

    goto :goto_ac

    .line 1396
    :cond_9f
    const/16 v3, 0x64

    if-ne v2, v3, :cond_ac

    .line 1397
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 1398
    const/4 v2, 0x5

    goto :goto_ac

    .line 1400
    :cond_ab
    const/4 v2, 0x3

    .line 1404
    :cond_ac
    :goto_ac
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRadioCapabilityChange: Storing modem type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1405
    const/4 v3, 0x0

    .line 1406
    .local v3, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    const/16 v4, -0x63

    if-eq v0, v4, :cond_107

    .line 1407
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 1408
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isSpecialCardMode()Z

    move-result v4

    if-nez v4, :cond_ea

    .line 1409
    if-eq p1, v1, :cond_dd

    .line 1411
    const-string v4, "new RT mode is CSFB"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1412
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v3, v4, v0

    goto :goto_f4

    .line 1416
    :cond_dd
    const/4 v4, 0x5

    if-ne v2, v4, :cond_f4

    .line 1417
    const-string v4, "new RT mode is SVLTE and new type is LWG"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1418
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v3, v4, v0

    goto :goto_f4

    .line 1423
    :cond_ea
    const-string v4, "isSpecialCardMode=true, ignore this change!"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_f4

    .line 1426
    :cond_f0
    sget-object v4, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v3, v4, v5

    .line 1429
    :cond_f4
    :goto_f4
    if-eqz v3, :cond_10c

    .line 1430
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->reloadModemType(ILandroid/os/Message;)V

    .line 1431
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resetNetworkProperties()V

    .line 1432
    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->setSimSwitchingFlag(Z)V

    .line 1433
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->saveToModemType(I)V

    .line 1434
    invoke-virtual {v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->storeModemType(ILandroid/os/Message;)V

    goto :goto_10c

    .line 1439
    :cond_107
    const-string v4, "notifyRadioCapabilityChange: major sim is unknown"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1442
    .end local v3    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    :cond_10c
    :goto_10c
    return-void

    .line 1363
    :cond_10d
    :goto_10d
    const-string v3, "Capaility slot IMSI not ready"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1364
    sput v5, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I

    .line 1365
    return-void
.end method

.method public setModemSelectionMode(II)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .line 1332
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.vendor.radio.wm_selectmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    .line 1334
    const-string v0, "Modem Selection <AUTO>"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1336
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I

    .line 1337
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V

    goto :goto_2c

    .line 1339
    :cond_1b
    const-string v0, "Modem Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 1342
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z

    .line 1343
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 1344
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V

    .line 1347
    :cond_2c
    :goto_2c
    return-void
.end method

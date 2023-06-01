.class public Lcom/mediatek/internal/telephony/cat/MtkCatService;
.super Lcom/android/internal/telephony/cat/CatService;
.source "MtkCatService.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/cat/MtkAppInterface;


# static fields
.field static final BIP_STATE_CHANGED:Ljava/lang/String; = "mediatek.intent.action.BIP_STATE_CHANGED"

.field private static final DBG:Z = true

.field private static final DISABLE_DISPLAY_TEXT_DELAYED_TIME:I = 0x7530

.field private static final IVSR_DELAYED_TIME:I = 0xea60

.field public static final MSG_ID_CACHED_DISPLAY_TEXT_TIMEOUT:I = 0x2e

.field private static final MSG_ID_CALL_CTRL:I = 0x19

.field public static final MSG_ID_CONN_RETRY_TIMEOUT:I = 0x2f

.field static final MSG_ID_DB_HANDLER:I = 0xc

.field private static final MSG_ID_DISABLE_DISPLAY_TEXT_DELAYED:I = 0xf

.field static final MSG_ID_EVENT_DOWNLOAD:I = 0xb

.field private static final MSG_ID_IVSR_DELAYED:I = 0xe

.field static final MSG_ID_LAUNCH_DB_SETUP_MENU:I = 0xd

.field private static final MSG_ID_SETUP_MENU_RESET:I = 0x18

.field protected static mLock:Ljava/lang/Object;

.field private static sInstKey:[Ljava/lang/String;


# instance fields
.field private MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

.field private isDisplayTextDisabled:Z

.field private isIvsrBootUp:Z

.field private mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

.field private mIsProactiveCmdResponsed:Z

.field private mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

.field private mMtkStkAppInstalled:Z

.field private mPhoneType:I

.field private mReadFromPreferenceDone:Z

.field public mSaveNewSetUpMenu:Z

.field private mSetUpMenuFromMD:Z

.field mTimeoutHandler:Landroid/os/Handler;

.field private simIdfromIntent:I

.field private simState:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 127
    const-string v0, "sInstanceSim1"

    const-string v1, "sInstanceSim2"

    const-string v2, "sInstanceSim3"

    const-string v3, "sInstanceSim4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstKey:[Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccProfile;I)V
    .registers 13
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "ca"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p3, "ir"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p6, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p7, "slotId"    # I

    .line 191
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccProfile;I)V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSaveNewSetUpMenu:Z

    .line 132
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSetUpMenuFromMD:Z

    .line 133
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mReadFromPreferenceDone:Z

    .line 135
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkStkAppInstalled:Z

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 144
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I

    .line 145
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simIdfromIntent:I

    .line 148
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isIvsrBootUp:Z

    .line 151
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isDisplayTextDisabled:Z

    .line 154
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 158
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mPhoneType:I

    .line 160
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService$1;-><init>(Lcom/mediatek/internal/telephony/cat/MtkCatService;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mTimeoutHandler:Landroid/os/Handler;

    .line 997
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;-><init>(Lcom/mediatek/internal/telephony/cat/MtkCatService;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 197
    const-string v0, "ro.vendor.mtk_ril_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "c6m_1rild"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 198
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v0, p0, v2, v3, p5}, Lcom/mediatek/internal/telephony/cat/BipService;->getInstance(Landroid/content/Context;Landroid/os/Handler;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/mediatek/internal/telephony/cat/BipService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 203
    :cond_5c
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.intent.action.IVSR_NOTIFY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "mediatek.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, "mSIMStateChangeFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    const-string v3, "CatService: is running"

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0x18

    invoke-virtual {v3, p0, v4, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setOnStkSetupMenuReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isMtkStkAppInstalled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkStkAppInstalled:Z

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTK STK app installed = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkStkAppInstalled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/cat/MtkCatService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isDisplayTextDisabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/cat/MtkCatService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isDisplayTextDisabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/cat/MtkCatService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "x1"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleDBHandler(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/internal/telephony/cat/MtkCatService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isIvsrBootUp:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/internal/telephony/cat/MtkCatService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simIdfromIntent:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/internal/telephony/cat/MtkCatService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simIdfromIntent:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 108
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    return v0
.end method

.method private checkSetupWizardInstalled()Z
    .registers 10

    .line 1145
    const-string v0, "com.google.android.setupwizard"

    const-string v1, "com.google.android.setupwizard"

    .line 1146
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "com.google.android.setupwizard.SetupWizardActivity"

    .line 1148
    .local v2, "activityName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1149
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    if-nez v3, :cond_15

    .line 1150
    const-string v0, "fail to get PM"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1151
    return v4

    .line 1155
    :cond_15
    const/4 v5, 0x1

    .line 1157
    .local v5, "isPkgInstalled":Z
    :try_start_16
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 1161
    goto :goto_21

    .line 1158
    :catch_1a
    move-exception v6

    .line 1159
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "fail to get SetupWizard package"

    invoke-static {p0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1160
    const/4 v5, 0x0

    .line 1163
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_21
    const/4 v6, 0x1

    if-ne v5, v6, :cond_40

    .line 1164
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-direct {v7, v0, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 1166
    .local v0, "pkgEnabledState":I
    if-eq v0, v6, :cond_3a

    if-nez v0, :cond_34

    goto :goto_3a

    .line 1171
    :cond_34
    const-string v6, "Setup Wizard Activity is not activate"

    invoke-static {p0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_40

    .line 1168
    :cond_3a
    :goto_3a
    const-string v4, "should not show DISPLAY_TEXT immediately"

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    return v6

    .line 1175
    .end local v0    # "pkgEnabledState":I
    :cond_40
    :goto_40
    const-string v0, "isPkgInstalled = false"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1176
    return v4
.end method

.method public static getBatteryState(Landroid/content/Context;)I
    .registers 15
    .param p0, "context"    # Landroid/content/Context;

    .line 1242
    const/16 v0, 0xff

    .line 1243
    .local v0, "batteryState":I
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v1, "filter":Landroid/content/IntentFilter;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 1245
    .local v2, "batteryStatus":Landroid/content/Intent;
    const-string v3, "MtkCatService"

    if-eqz v2, :cond_93

    .line 1246
    const-string v4, "level"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1247
    .local v4, "level":I
    const-string v6, "scale"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1248
    .local v6, "scale":I
    const-string v7, "status"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1249
    .local v5, "status":I
    const/4 v7, 0x2

    if-eq v5, v7, :cond_2e

    const/4 v7, 0x5

    if-ne v5, v7, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v7, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v7, 0x1

    .line 1252
    .local v7, "isCharging":Z
    :goto_2f
    int-to-float v8, v4

    int-to-float v9, v6

    div-float/2addr v8, v9

    .line 1253
    .local v8, "batteryPct":F
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " batteryPct == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, "isCharging:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    if-eqz v7, :cond_53

    .line 1256
    const/16 v0, 0xff

    goto :goto_93

    .line 1257
    :cond_53
    float-to-double v9, v8

    const-wide v11, 0x3fa999999999999aL    # 0.05

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_5f

    .line 1258
    const/4 v0, 0x0

    goto :goto_93

    .line 1259
    :cond_5f
    float-to-double v9, v8

    cmpl-double v9, v9, v11

    const-wide v10, 0x3fc3333333333333L    # 0.15

    if-lez v9, :cond_70

    float-to-double v12, v8

    cmpg-double v9, v12, v10

    if-gtz v9, :cond_70

    .line 1260
    const/4 v0, 0x1

    goto :goto_93

    .line 1261
    :cond_70
    float-to-double v12, v8

    cmpl-double v9, v12, v10

    const-wide v10, 0x3fe3333333333333L    # 0.6

    if-lez v9, :cond_81

    float-to-double v12, v8

    cmpg-double v9, v12, v10

    if-gtz v9, :cond_81

    .line 1262
    const/4 v0, 0x2

    goto :goto_93

    .line 1263
    :cond_81
    float-to-double v12, v8

    cmpl-double v9, v12, v10

    const/high16 v10, 0x3f800000    # 1.0f

    if-lez v9, :cond_8e

    cmpg-float v9, v8, v10

    if-gez v9, :cond_8e

    .line 1264
    const/4 v0, 0x3

    goto :goto_93

    .line 1265
    :cond_8e
    cmpl-float v9, v8, v10

    if-nez v9, :cond_93

    .line 1266
    const/4 v0, 0x4

    .line 1269
    .end local v4    # "level":I
    .end local v5    # "status":I
    .end local v6    # "scale":I
    .end local v7    # "isCharging":Z
    .end local v8    # "batteryPct":F
    :cond_93
    :goto_93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBatteryState() batteryState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    return v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/cat/CatService;
    .registers 7
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 689
    const-string v0, "CatService"

    const-string v1, "call getInstance 2"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const/4 v1, 0x0

    .line 691
    .local v1, "sim_id":I
    if-eqz p2, :cond_22

    .line 692
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getPhoneId()I

    move-result v1

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get SIM id from UiccCard. sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_22
    invoke-static {p0, p1, p2, v1}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/cat/MtkAppInterface;
    .registers 2

    .line 704
    const-string v0, "CatService"

    const-string v1, "call getInstance 4"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v0, v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    return-object v0
.end method

.method public static getInstance(I)Lcom/mediatek/internal/telephony/cat/MtkAppInterface;
    .registers 3
    .param p0, "slotId"    # I

    .line 714
    const-string v0, "CatService"

    const-string v1, "call getInstance 3"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    return-object v0
.end method

.method private getPhoneType()I
    .registers 5

    .line 1284
    const/4 v0, 0x0

    .line 1285
    .local v0, "phoneType":I
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 1286
    .local v1, "subId":[I
    if-eqz v1, :cond_32

    .line 1287
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 1288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneType phoneType:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mSlotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1290
    :cond_32
    return v0
.end method

.method public static getSaveNewSetUpMenuFlag(I)Z
    .registers 4
    .param p0, "sim_id"    # I

    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, "result":Z
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p0

    if-eqz v1, :cond_2c

    .line 771
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p0

    check-cast v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSaveNewSetUpMenu:Z

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mSaveNewSetUpMenu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CatService"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_2c
    return v0
.end method

.method private handleDBHandler(I)V
    .registers 5
    .param p1, "sim_id"    # I

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDBHandler, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method private handleEventDownload(Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;)V
    .registers 8
    .param p1, "resMsg"    # Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    .line 915
    iget v1, p1, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mEvent:I

    iget v2, p1, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mSourceId:I

    iget v3, p1, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mDestinationId:I

    iget-object v4, p1, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mAdditionalInfo:[B

    iget-boolean v5, p1, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mOneShot:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->eventDownload(III[BZ)V

    .line 917
    return-void
.end method

.method private static handleProactiveCmdFromDB(Lcom/mediatek/internal/telephony/cat/MtkCatService;Ljava/lang/String;)V
    .registers 5
    .param p0, "inst"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "data"    # Ljava/lang/String;

    .line 720
    const-string v0, "MtkCatService"

    if-nez p1, :cond_a

    .line 721
    const-string v1, "handleProactiveCmdFromDB: cmd = null"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    return-void

    .line 725
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleProactiveCmdFromDB: cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    new-instance v1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;-><init>(ILjava/lang/String;)V

    .line 727
    .local v1, "rilMsg":Lcom/mediatek/internal/telephony/cat/MtkRilMessage;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 728
    const-string v2, "handleProactiveCmdFromDB: over"

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method private isAlarmBoot()Z
    .registers 3

    .line 1140
    const-string v0, "vendor.sys.boot.reason"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_12

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private isMtkStkAppInstalled()Z
    .registers 6

    .line 1274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.internal.stk.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1276
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1278
    .local v2, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_18

    move v4, v3

    goto :goto_1c

    :cond_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1280
    .local v4, "numReceiver":I
    :goto_1c
    if-lez v4, :cond_1f

    const/4 v3, 0x1

    :cond_1f
    return v3
.end method

.method private isSetUpMenuCmd(Ljava/lang/String;)Z
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 739
    const/4 v0, 0x0

    .line 741
    .local v0, "validCmd":Z
    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 742
    return v1

    .line 745
    :cond_5
    const/4 v2, 0x2

    :try_start_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x38

    const/16 v4, 0x35

    const/16 v5, 0x32

    if-ne v2, v3, :cond_2d

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2d

    .line 746
    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_3e

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_3e

    .line 747
    const/4 v0, 0x1

    goto :goto_3e

    .line 750
    :cond_2d
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_3e

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1
    :try_end_3b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_3b} :catch_40

    if-ne v1, v4, :cond_3e

    .line 751
    const/4 v0, 0x1

    .line 758
    :cond_3e
    :goto_3e
    nop

    .line 760
    return v0

    .line 754
    :catch_40
    move-exception v2

    .line 755
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException isSetUpMenuCmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 757
    return v1
.end method

.method private mtkBroadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .registers 5
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 665
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.internal.stk.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "STK CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 667
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    const-string v2, "SLOT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface;->getDefaultSTKApplication()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtkBroadcastCatCmdIntent Sending CmdMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on slotid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method private static readCmdFromPreference(Lcom/mediatek/internal/telephony/cat/MtkCatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "inst"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 1203
    const/4 v0, 0x0

    .line 1204
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1206
    .local v1, "cmd":Ljava/lang/String;
    if-nez p0, :cond_12

    .line 1207
    const-string v2, "MtkCatService"

    const-string v3, "readCmdFromPreference with null instance"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const/4 v2, 0x0

    return-object v2

    .line 1211
    :cond_12
    sget-object v2, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1212
    :try_start_15
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mReadFromPreferenceDone:Z

    if-nez v3, :cond_4a

    .line 1213
    const-string v3, "set_up_menu"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object v0, v3

    .line 1214
    const-string v3, ""

    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1215
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mReadFromPreferenceDone:Z

    .line 1216
    const-string v3, "MtkCatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readCmdFromPreference, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1217
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 1219
    :cond_4a
    const-string v3, "MtkCatService"

    const-string v4, "readCmdFromPreference, do not read again"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :goto_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_15 .. :try_end_52} :catchall_5a

    .line 1222
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_59

    .line 1223
    const/4 v1, 0x0

    .line 1225
    :cond_59
    return-object v1

    .line 1221
    :catchall_5a
    move-exception v3

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v3
.end method

.method private static saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 1191
    const/4 v0, 0x0

    .line 1192
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 1193
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1194
    :try_start_5
    const-string v3, "MtkCatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCmdToPreference, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-string v3, "set_up_menu"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object v0, v3

    .line 1196
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object v1, v3

    .line 1197
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1198
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1199
    monitor-exit v2

    .line 1200
    return-void

    .line 1199
    :catchall_38
    move-exception v3

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v3
.end method

.method private sendTerminalResponseByCurrentCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .registers 9
    .param p1, "catCmd"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 219
    if-nez p1, :cond_8

    .line 220
    const-string v0, "catCmd is null."

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    return-void

    .line 223
    :cond_8
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v6

    .line 224
    .local v6, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send TR for cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    .line 235
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_55

    .line 231
    :pswitch_3b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 232
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    const/4 v3, 0x0

    .line 231
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->handleStkCallSetupRequestFromSimWithResCode(ZILandroid/os/Message;)V

    .line 233
    goto :goto_55

    .line 228
    :pswitch_49
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 229
    nop

    .line 239
    :goto_55
    return-void

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_49
        :pswitch_49
        :pswitch_3b
    .end packed-switch
.end method


# virtual methods
.method cancelTimeOut(I)V
    .registers 4
    .param p1, "msg"    # I

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTimeOut, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    return-void
.end method

.method public dispose()V
    .registers 4

    .line 242
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disposing MtkCatService object : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_61

    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v1, v1, v2

    if-nez v1, :cond_26

    goto :goto_61

    .line 250
    :cond_26
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_34

    .line 251
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->MtkCatServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    :cond_34
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_46

    .line 255
    const-string v1, "Send TR for the last pending commands."

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponseByCurrentCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 258
    :cond_46
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unSetOnStkSetupMenuReset(Landroid/os/Handler;)V

    .line 259
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 261
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleDBHandler(I)V

    .line 262
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_79

    .line 264
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    if-eqz v0, :cond_5d

    .line 265
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->dispose()V

    .line 268
    :cond_5d
    invoke-super {p0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 269
    return-void

    .line 246
    :cond_61
    :goto_61
    :try_start_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sInstance is null, maybe dispose already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    monitor-exit v0

    return-void

    .line 262
    :catchall_79
    move-exception v1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_79

    throw v1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 994
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 3

    .line 1185
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1186
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v0

    return-object v1

    .line 1187
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .registers 13
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .line 926
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 927
    return-void

    .line 929
    :cond_7
    const/4 v0, 0x0

    .line 930
    .local v0, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v7, 0x0

    .line 931
    .local v7, "helpRequired":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v8

    .line 932
    .local v8, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget v1, v8, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    .line 934
    .local v9, "type":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_82

    goto :goto_7d

    .line 978
    :pswitch_22
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v9, v1, :cond_7d

    .line 979
    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    if-nez v1, :cond_2e

    .line 981
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(I)V

    .line 983
    :cond_2e
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-boolean v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    iget v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    move-object v1, p0

    move-object v2, v8

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 985
    iput-object v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 986
    return-void

    .line 964
    :pswitch_3d
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v9, v1, :cond_51

    .line 965
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 966
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    .line 965
    invoke-virtual {v1, v2, v3, v10}, Lcom/mediatek/internal/telephony/MtkRIL;->handleStkCallSetupRequestFromSimWithResCode(ZILandroid/os/Message;)V

    .line 967
    iput-object v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 968
    return-void

    .line 970
    :cond_51
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v9, v1, :cond_7d

    .line 971
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-boolean v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    iget v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    move-object v1, p0

    move-object v2, v8

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 973
    iput-object v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 974
    return-void

    .line 936
    :pswitch_64
    const/4 v7, 0x1

    .line 954
    :pswitch_65
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v9, v1, :cond_6d

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v9, v1, :cond_7d

    .line 957
    :cond_6d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 958
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    .line 957
    invoke-virtual {v1, v2, v3, v10}, Lcom/mediatek/internal/telephony/MtkRIL;->handleStkCallSetupRequestFromSimWithResCode(ZILandroid/os/Message;)V

    .line 959
    iput-object v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 960
    return-void

    .line 990
    :cond_7d
    :goto_7d
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 991
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_64
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_3d
        :pswitch_22
    .end packed-switch
.end method

.method protected handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .registers 32
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "isProactiveCmd"    # Z

    .line 359
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    if-eqz p2, :cond_33

    .line 363
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_33

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProactiveCommand mSlotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cmdParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->addLocalLog(Ljava/lang/String;)V

    .line 371
    :cond_33
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;

    invoke-direct {v0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    move-object v9, v0

    .line 373
    .local v9, "cmdMsg":Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;
    const/4 v10, 0x0

    .line 376
    .local v10, "response":Landroid/os/Message;
    const/4 v11, 0x0

    .line 377
    .local v11, "isAlarmState":Z
    const/4 v12, 0x0

    .line 378
    .local v12, "isFlightMode":Z
    const/4 v13, 0x0

    .line 380
    .local v13, "flightMode":I
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ", flightMode = "

    const-string v2, ", isFlightMode = "

    const-string v3, "isAlarmState = "

    const-string v4, "airplane_mode_on"

    const-string v5, "fail to get property from Settings"

    const/4 v14, 0x0

    const-string v15, "Default Message"

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_456

    .line 653
    const-string v0, "HandleCommand Callback to CatService"

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    .line 655
    return-void

    .line 604
    :pswitch_63
    move-object v15, v8

    check-cast v15, Lcom/android/internal/telephony/cat/BIPClientParams;

    .line 611
    .local v15, "cmd":Lcom/android/internal/telephony/cat/BIPClientParams;
    const/4 v1, 0x0

    .line 613
    .local v1, "noAlphaUsrCnf":Z
    :try_start_67
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110140

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_74
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_67 .. :try_end_74} :catch_75

    .line 617
    .end local v1    # "noAlphaUsrCnf":Z
    .local v0, "noAlphaUsrCnf":Z
    goto :goto_78

    .line 615
    .end local v0    # "noAlphaUsrCnf":Z
    .restart local v1    # "noAlphaUsrCnf":Z
    :catch_75
    move-exception v0

    .line 616
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    move v0, v1

    .line 618
    .end local v1    # "noAlphaUsrCnf":Z
    .local v0, "noAlphaUsrCnf":Z
    :goto_78
    iget-object v1, v15, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_c4

    iget-boolean v1, v15, Lcom/android/internal/telephony/cat/BIPClientParams;->mHasAlphaId:Z

    if-nez v1, :cond_84

    if-eqz v0, :cond_c4

    .line 619
    :cond_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with null alpha id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    if-eqz p2, :cond_b0

    .line 622
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_c3

    .line 623
    :cond_b0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v1, v2, :cond_c3

    .line 624
    iget-object v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 625
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    .line 624
    invoke-virtual {v1, v6, v2, v14}, Lcom/mediatek/internal/telephony/MtkRIL;->handleStkCallSetupRequestFromSimWithResCode(ZILandroid/os/Message;)V

    .line 627
    :cond_c3
    :goto_c3
    return-void

    .line 631
    :cond_c4
    iget-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mStkAppInstalled:Z

    if-nez v1, :cond_e0

    iget-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkStkAppInstalled:Z

    if-nez v1, :cond_e0

    .line 632
    const-string v1, "No STK application found."

    invoke-static {v7, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    if-eqz p2, :cond_e0

    .line 634
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 636
    return-void

    .line 645
    :cond_e0
    if-eqz p2, :cond_449

    .line 646
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v1, v2, :cond_fa

    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v1, v2, :cond_fa

    .line 648
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v1, v2, :cond_449

    .line 649
    :cond_fa
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_449

    .line 591
    .end local v0    # "noAlphaUsrCnf":Z
    .end local v15    # "cmd":Lcom/android/internal/telephony/cat/BIPClientParams;
    :pswitch_108
    iput-boolean v6, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 592
    goto/16 :goto_449

    .line 583
    :pswitch_10c
    iput-boolean v6, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 584
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_449

    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 585
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_449

    .line 586
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    const v1, 0x10407d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 587
    .local v0, "message":Ljava/lang/CharSequence;
    move-object v1, v8

    check-cast v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_449

    .line 573
    .end local v0    # "message":Ljava/lang/CharSequence;
    :pswitch_13a
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 575
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v14, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 577
    :cond_14e
    iput-boolean v6, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 578
    goto/16 :goto_449

    .line 563
    :pswitch_152
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    iget v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimCardState(I)I

    move-result v0

    iput v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    iget v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_449

    .line 566
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 568
    return-void

    .line 544
    :pswitch_187
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isAlarmBoot()Z

    move-result v11

    .line 546
    :try_start_18b
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_195
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_18b .. :try_end_195} :catch_197

    .line 551
    .end local v13    # "flightMode":I
    .local v0, "flightMode":I
    move v13, v0

    goto :goto_19d

    .line 548
    .end local v0    # "flightMode":I
    .restart local v13    # "flightMode":I
    :catch_197
    move-exception v0

    .line 549
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v7, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    const/4 v4, 0x0

    move v13, v4

    .line 552
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_19d
    if-eqz v13, :cond_1a0

    goto :goto_1a1

    :cond_1a0
    const/4 v6, 0x0

    :goto_1a1
    move v12, v6

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    if-eqz v11, :cond_449

    if-eqz v12, :cond_449

    .line 556
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 558
    return-void

    .line 534
    :pswitch_1d1
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_449

    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 536
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_449

    .line 537
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    const v1, 0x104047b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 538
    .local v0, "message":Ljava/lang/CharSequence;
    move-object v1, v8

    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_449

    .line 458
    .end local v0    # "message":Ljava/lang/CharSequence;
    :pswitch_1fd
    const/4 v0, 0x0

    .line 460
    .local v0, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v1, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x3

    const/4 v4, 0x4

    if-ne v1, v2, :cond_2b9

    .line 462
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 463
    .local v14, "cal":Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 464
    .local v1, "temp":I
    const/4 v5, 0x0

    .line 465
    .local v5, "hibyte":I
    const/4 v15, 0x0

    .line 466
    .local v15, "lobyte":I
    const/4 v2, 0x7

    new-array v2, v2, [B

    .line 468
    .local v2, "datetime":[B
    invoke-virtual {v14, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit16 v3, v3, -0x7d0

    .line 469
    .end local v1    # "temp":I
    .local v3, "temp":I
    div-int/lit8 v1, v3, 0xa

    .line 470
    .end local v5    # "hibyte":I
    .local v1, "hibyte":I
    rem-int/lit8 v5, v3, 0xa

    shl-int/2addr v5, v4

    .line 471
    .end local v15    # "lobyte":I
    .local v5, "lobyte":I
    or-int v15, v5, v1

    int-to-byte v15, v15

    const/16 v17, 0x0

    aput-byte v15, v2, v17

    .line 473
    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    .line 474
    .end local v3    # "temp":I
    .local v19, "temp":I
    div-int/lit8 v1, v19, 0xa

    .line 475
    rem-int/lit8 v3, v19, 0xa

    shl-int/2addr v3, v4

    .line 476
    .end local v5    # "lobyte":I
    .local v3, "lobyte":I
    or-int v5, v3, v1

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    .line 478
    const/4 v5, 0x5

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 479
    .end local v19    # "temp":I
    .local v15, "temp":I
    div-int/lit8 v1, v15, 0xa

    .line 480
    rem-int/lit8 v19, v15, 0xa

    shl-int/lit8 v3, v19, 0x4

    .line 481
    or-int v6, v3, v1

    int-to-byte v6, v6

    const/16 v18, 0x2

    aput-byte v6, v2, v18

    .line 483
    const/16 v6, 0xb

    invoke-virtual {v14, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 484
    .end local v15    # "temp":I
    .local v6, "temp":I
    div-int/lit8 v1, v6, 0xa

    .line 485
    rem-int/lit8 v15, v6, 0xa

    shl-int/lit8 v3, v15, 0x4

    .line 486
    or-int v15, v3, v1

    int-to-byte v15, v15

    const/16 v16, 0x3

    aput-byte v15, v2, v16

    .line 488
    const/16 v15, 0xc

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 489
    div-int/lit8 v1, v6, 0xa

    .line 490
    rem-int/lit8 v15, v6, 0xa

    shl-int/lit8 v3, v15, 0x4

    .line 491
    or-int v15, v3, v1

    int-to-byte v15, v15

    aput-byte v15, v2, v4

    .line 493
    const/16 v15, 0xd

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 494
    div-int/lit8 v1, v6, 0xa

    .line 495
    rem-int/lit8 v15, v6, 0xa

    shl-int/lit8 v3, v15, 0x4

    .line 496
    or-int v15, v3, v1

    int-to-byte v15, v15

    aput-byte v15, v2, v5

    .line 499
    const/16 v15, 0xf

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const v16, 0xdbba0

    div-int v15, v15, v16

    .line 500
    .end local v6    # "temp":I
    .restart local v15    # "temp":I
    div-int/lit8 v16, v15, 0xa

    .line 501
    .end local v1    # "hibyte":I
    .local v16, "hibyte":I
    rem-int/lit8 v1, v15, 0xa

    shl-int/lit8 v20, v1, 0x4

    .line 502
    .end local v3    # "lobyte":I
    .local v20, "lobyte":I
    or-int v1, v20, v16

    int-to-byte v1, v1

    const/4 v3, 0x6

    aput-byte v1, v2, v3

    .line 504
    new-instance v6, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;

    const/4 v1, 0x0

    aget-byte v22, v2, v1

    const/4 v1, 0x1

    aget-byte v23, v2, v1

    const/4 v1, 0x2

    aget-byte v24, v2, v1

    const/4 v1, 0x3

    aget-byte v25, v2, v1

    aget-byte v26, v2, v4

    aget-byte v27, v2, v5

    aget-byte v28, v2, v3

    move-object/from16 v21, v6

    invoke-direct/range {v21 .. v28}, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;-><init>(IIIIIII)V

    .line 507
    .end local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    .end local v2    # "datetime":[B
    .local v17, "datetime":[B
    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 509
    return-void

    .line 510
    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v14    # "cal":Ljava/util/Calendar;
    .end local v15    # "temp":I
    .end local v16    # "hibyte":I
    .end local v17    # "datetime":[B
    .end local v20    # "lobyte":I
    .restart local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_2b9
    iget-object v1, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    if-ne v1, v4, :cond_2ef

    .line 513
    const/4 v1, 0x2

    new-array v14, v1, [B

    .line 514
    .local v14, "lang":[B
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    .line 516
    .local v15, "locale":Ljava/util/Locale;
    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v14, v2

    .line 517
    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v14, v2

    .line 519
    new-instance v6, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;

    invoke-direct {v6, v14}, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;-><init>([B)V

    .line 521
    .end local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 523
    return-void

    .line 524
    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v14    # "lang":[B
    .end local v15    # "locale":Ljava/util/Locale;
    .restart local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_2ef
    iget-object v1, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_30e

    .line 526
    iget-object v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->getBatteryState(Landroid/content/Context;)I

    move-result v14

    .line 527
    .local v14, "batterystate":I
    new-instance v6, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;

    invoke-direct {v6, v14}, Lcom/mediatek/internal/telephony/cat/MtkProvideLocalInformationResponseData;-><init>(I)V

    .line 528
    .end local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 529
    return-void

    .line 532
    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v14    # "batterystate":I
    .restart local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_30e
    return-void

    .line 451
    .end local v0    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_30f
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    if-eqz v0, :cond_316

    .line 452
    invoke-virtual {v0, v9}, Lcom/mediatek/internal/telephony/cat/BipService;->setSetupEventList(Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;)V

    .line 455
    :cond_316
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 456
    goto/16 :goto_449

    .line 405
    :pswitch_31b
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isAlarmBoot()Z

    move-result v11

    .line 407
    :try_start_31f
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_329
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_31f .. :try_end_329} :catch_32b

    .line 412
    .end local v13    # "flightMode":I
    .local v0, "flightMode":I
    move v13, v0

    goto :goto_331

    .line 409
    .end local v0    # "flightMode":I
    .restart local v13    # "flightMode":I
    :catch_32b
    move-exception v0

    .line 410
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v7, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    const/4 v4, 0x0

    move v13, v4

    .line 413
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_331
    if-eqz v13, :cond_335

    const/4 v6, 0x1

    goto :goto_336

    :cond_335
    const/4 v6, 0x0

    :goto_336
    move v12, v6

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    if-eqz v11, :cond_366

    if-eqz v12, :cond_366

    .line 418
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 419
    return-void

    .line 423
    :cond_366
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->checkSetupWizardInstalled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37a

    .line 424
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 426
    return-void

    .line 430
    :cond_37a
    iget-boolean v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isIvsrBootUp:Z

    if-eqz v0, :cond_390

    .line 431
    const-string v0, "[IVSR send TR directly"

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 434
    return-void

    .line 437
    :cond_390
    iget-boolean v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isDisplayTextDisabled:Z

    if-eqz v0, :cond_449

    .line 438
    const-string v0, "[Sim Recovery send TR directly"

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 441
    return-void

    .line 594
    :pswitch_3a6
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_449

    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 595
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_449

    .line 596
    iget-object v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    const v1, 0x10400c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 597
    .local v0, "message":Ljava/lang/CharSequence;
    move-object v1, v8

    check-cast v1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_449

    .line 445
    .end local v0    # "message":Ljava/lang/CharSequence;
    :pswitch_3d2
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    if-eqz v0, :cond_3da

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v3, v0

    goto :goto_3dd

    .line 446
    :cond_3da
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v3, v0

    :goto_3dd
    nop

    .line 447
    .local v3, "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 448
    goto :goto_449

    .line 382
    .end local v3    # "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    :pswitch_3e9
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v0

    if-eqz v0, :cond_3f6

    .line 383
    iput-object v14, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_3f8

    .line 385
    :cond_3f6
    iput-object v9, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 387
    :goto_3f8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSetUpMenuFromMD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSetUpMenuFromMD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAT"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    if-eqz v0, :cond_427

    .line 389
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;

    iget-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSetUpMenuFromMD:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_423

    const/4 v1, 0x1

    goto :goto_424

    .line 390
    :cond_423
    const/4 v1, 0x0

    .line 389
    :goto_424
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkMenu;->setSetUpMenuFlag(I)V

    .line 392
    :cond_427
    iget-boolean v0, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSetUpMenuFromMD:Z

    if-nez v0, :cond_42f

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 394
    goto :goto_449

    .line 396
    :cond_42f
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSetUpMenuFromMD:Z

    .line 398
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    if-eqz v0, :cond_43a

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v3, v0

    goto :goto_43d

    .line 399
    :cond_43a
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v3, v0

    :goto_43d
    nop

    .line 400
    .restart local v3    # "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    iget-object v2, v8, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 401
    nop

    .line 657
    .end local v3    # "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    :cond_449
    :goto_449
    iput-object v9, v7, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 660
    invoke-direct {v7, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mtkBroadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 661
    invoke-virtual {v9, v8, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->convertToCatCmdMessage(Lcom/android/internal/telephony/cat/CommandParams;Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 662
    return-void

    :pswitch_data_456
    .packed-switch 0x1
        :pswitch_3e9
        :pswitch_3d2
        :pswitch_3a6
        :pswitch_31b
        :pswitch_30f
        :pswitch_1fd
        :pswitch_1d1
        :pswitch_187
        :pswitch_152
        :pswitch_152
        :pswitch_13a
        :pswitch_13a
        :pswitch_10c
        :pswitch_10c
        :pswitch_10c
        :pswitch_10c
        :pswitch_108
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 780
    const-string v0, "com.mediatek.engineermode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkCatservice handleMessage["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    const/4 v1, 0x0

    .line 782
    .local v1, "cmd":Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;
    const/4 v2, 0x0

    .line 783
    .local v2, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v3, 0x0

    .line 785
    .local v3, "ret":I
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v4, :sswitch_data_136

    goto/16 :goto_131

    .line 844
    :sswitch_29
    const-string v0, "SETUP_MENU_RESET : Setup menu reset."

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 845
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 846
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_3b

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3b

    .line 847
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSaveNewSetUpMenu:Z

    goto :goto_40

    .line 849
    :cond_3b
    const-string v4, "SETUP_MENU_RESET : AsyncResult null."

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    :goto_40
    return-void

    .line 839
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_41
    const-string v0, "[IVSR cancel IVSR flag"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isIvsrBootUp:Z

    .line 841
    return-void

    .line 853
    :sswitch_49
    const-string v0, "MSG_ID_LAUNCH_DB_SETUP_MENU"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    const/4 v0, 0x0

    .line 855
    .local v0, "strCmd":Ljava/lang/String;
    const/4 v4, 0x0

    .line 857
    .local v4, "inst":Lcom/mediatek/internal/telephony/cat/MtkCatService;
    sget-object v6, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v6, v6, v7

    check-cast v6, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstKey:[Ljava/lang/String;

    iget v9, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v8, v8, v9

    invoke-static {v6, v7, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->readCmdFromPreference(Lcom/mediatek/internal/telephony/cat/MtkCatService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    sget-object v6, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v6, v6, v7

    if-eqz v6, :cond_7b

    if-eqz v0, :cond_7b

    .line 861
    sget-object v6, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v6, v6, v7

    check-cast v6, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-static {v6, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleProactiveCmdFromDB(Lcom/mediatek/internal/telephony/cat/MtkCatService;Ljava/lang/String;)V

    .line 862
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSaveNewSetUpMenu:Z

    .line 864
    :cond_7b
    return-void

    .line 835
    .end local v0    # "strCmd":Ljava/lang/String;
    .end local v4    # "inst":Lcom/mediatek/internal/telephony/cat/MtkCatService;
    :sswitch_7c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleDBHandler(I)V

    .line 836
    return-void

    .line 832
    :sswitch_82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleEventDownload(Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;)V

    .line 833
    return-void

    .line 790
    :sswitch_8a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ril message arrived, slotid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 791
    const/4 v4, 0x0

    .line 792
    .local v4, "data":Ljava/lang/String;
    const/4 v6, 0x0

    .line 793
    .local v6, "flag":Z
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_131

    .line 794
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 795
    .local v7, "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-nez v8, :cond_b4

    .line 796
    const-string v0, "mMsgDecoder == null, return."

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    return-void

    .line 799
    :cond_b4
    if-eqz v7, :cond_131

    iget-object v8, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_131

    .line 801
    :try_start_ba
    iget-object v8, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    move-object v4, v8

    .line 804
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isSetUpMenuCmd(Ljava/lang/String;)Z

    move-result v8

    .line 805
    .local v8, "isValid":Z
    if-eqz v8, :cond_eb

    sget-object v9, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v9, v9, v10

    if-ne p0, v9, :cond_eb

    .line 806
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstKey:[Ljava/lang/String;

    iget v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    aget-object v9, v9, v10

    invoke-static {v0, v9, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->saveCmdToPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSaveNewSetUpMenu:Z

    .line 808
    const/4 v6, 0x1

    .line 809
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v5, v4}, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;-><init>(ILjava/lang/String;)V

    .line 810
    .local v0, "rilMsg":Lcom/mediatek/internal/telephony/cat/MtkRilMessage;
    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->setSetUpMenuFromMD(Z)V

    .line 811
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 812
    return-void

    .line 814
    .end local v0    # "rilMsg":Lcom/mediatek/internal/telephony/cat/MtkRilMessage;
    :cond_eb
    const-string v5, "BIP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12e

    .line 815
    new-instance v5, Landroid/content/Intent;

    const-string v9, "mediatek.intent.action.BIP_STATE_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, "BIP_CMD"

    invoke-virtual {v5, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    const-string v9, "SLOT_ID"

    iget v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 818
    move-object v9, v0

    .line 819
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Broadcast BIP Intent: Sending data: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " on slotid:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_12d
    .catch Ljava/lang/ClassCastException; {:try_start_ba .. :try_end_12d} :catch_12f

    .line 823
    return-void

    .line 827
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "isValid":Z
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_12e
    goto :goto_131

    .line 825
    :catch_12f
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/ClassCastException;
    return-void

    .line 866
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v4    # "data":Ljava/lang/String;
    .end local v6    # "flag":Z
    .end local v7    # "ar":Landroid/os/AsyncResult;
    :cond_131
    :goto_131
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->handleMessage(Landroid/os/Message;)V

    .line 867
    return-void

    nop

    :sswitch_data_136
    .sparse-switch
        0x1 -> :sswitch_8a
        0x2 -> :sswitch_8a
        0x3 -> :sswitch_8a
        0x5 -> :sswitch_8a
        0xb -> :sswitch_82
        0xc -> :sswitch_7c
        0xd -> :sswitch_49
        0xe -> :sswitch_41
        0x18 -> :sswitch_29
    .end sparse-switch
.end method

.method protected handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .registers 14
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .line 273
    if-nez p1, :cond_3

    .line 274
    return-void

    .line 278
    :cond_3
    const/4 v0, 0x0

    .line 279
    .local v0, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_10e

    .line 349
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 350
    return-void

    .line 281
    :pswitch_e
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    .line 282
    if-eqz v0, :cond_9e

    .line 283
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_20

    .line 284
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_9e

    .line 286
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event notify error code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_64

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v3, 0x11

    if-eq v1, v3, :cond_5c

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v3, 0x12

    if-eq v1, v3, :cond_5c

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v3, 0x13

    if-eq v1, v3, :cond_5c

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_64

    .line 293
    :cond_5c
    const-string v1, "notify user text message even though get icon fail"

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    .line 296
    :cond_64
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v3, 0x40

    if-ne v1, v3, :cond_74

    .line 297
    const-string v1, "Open Channel with ResultCode"

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    .line 300
    :cond_74
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_9e

    .line 301
    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 302
    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    .line 303
    .local v1, "type":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v1, v3, :cond_93

    .line 304
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mMtkCmdIf:Lcom/mediatek/internal/telephony/MtkRIL;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    .line 305
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v4

    const/4 v5, 0x0

    .line 304
    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->handleStkCallSetupRequestFromSimWithResCode(ZILandroid/os/Message;)V

    goto :goto_9e

    .line 307
    :cond_93
    iget-object v7, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 313
    .end local v1    # "type":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :cond_9e
    :goto_9e
    return-void

    .line 315
    :pswitch_9f
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a6

    .line 316
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 319
    :cond_a6
    :try_start_a6
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_aa
    .catch Ljava/lang/ClassCastException; {:try_start_a6 .. :try_end_aa} :catch_f5

    move-object v0, v1

    .line 330
    nop

    .line 331
    if-eqz v0, :cond_f4

    .line 332
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v1, v2, :cond_bd

    .line 333
    move-object v1, p1

    check-cast v1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;->mSetUpMenuFromMD:Z

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSetUpMenuFromMD:Z

    .line 335
    :cond_bd
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-eq v1, v2, :cond_f0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_ca

    goto :goto_f0

    .line 342
    :cond_ca
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SS-handleMessage: invalid proactive command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAT"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v5, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_f4

    .line 337
    :cond_f0
    :goto_f0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    .line 347
    :cond_f4
    :goto_f4
    return-void

    .line 320
    :catch_f5
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "Fail to parse proactive command"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_10c

    .line 326
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v4, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 329
    :cond_10c
    return-void

    nop

    :pswitch_data_10e
    .packed-switch 0x2
        :pswitch_9f
        :pswitch_e
    .end packed-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .registers 7
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    monitor-enter p0

    .line 871
    :try_start_1
    const-string v0, "MtkCatService onCmdResponse"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_3f

    .line 872
    if-nez p1, :cond_a

    .line 873
    monitor-exit p0

    return-void

    .line 875
    :cond_a
    const/4 v0, 0x0

    .line 876
    .local v0, "msg":Landroid/os/Message;
    :try_start_b
    const-class v1, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_1d

    .line 878
    invoke-virtual {p0, v2, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    move-object v0, v1

    .line 879
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3d

    .line 882
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/MtkCatService;
    :cond_1d
    const/4 v1, 0x0

    .line 883
    .local v1, "resMtkMsg":Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v3, :cond_2b

    .line 884
    new-instance v3, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v3, v4, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    move-object v1, v3

    goto :goto_35

    .line 886
    :cond_2b
    new-instance v3, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    invoke-static {}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->getCmdMsg()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    move-object v1, v3

    .line 888
    :goto_35
    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object v0, v2

    .line 889
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_3f

    .line 891
    .end local v1    # "resMtkMsg":Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;
    :goto_3d
    monitor-exit p0

    return-void

    .line 870
    .end local v0    # "msg":Landroid/os/Message;
    .end local p1    # "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDBHandler(I)V
    .registers 4
    .param p1, "sim_id"    # I

    monitor-enter p0

    .line 904
    const/16 v0, 0xc

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, v0, p1, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 905
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    .line 906
    monitor-exit p0

    return-void

    .line 903
    .end local v0    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .end local p1    # "sim_id":I
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onEventDownload(Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;)V
    .registers 3
    .param p1, "resMsg"    # Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    monitor-enter p0

    .line 894
    if-nez p1, :cond_5

    .line 895
    monitor-exit p0

    return-void

    .line 898
    :cond_5
    const/16 v0, 0xb

    :try_start_7
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 899
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    .line 900
    monitor-exit p0

    return-void

    .line 893
    .end local v0    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .end local p1    # "resMsg":Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onLaunchCachedSetupMenu()V
    .registers 4

    monitor-enter p0

    .line 910
    const/16 v0, 0xd

    :try_start_3
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 911
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 912
    monitor-exit p0

    return-void

    .line 909
    .end local v0    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/MtkCatService;
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSetResponsedFlag()V
    .registers 2

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIsProactiveCmdResponsed:Z

    .line 677
    return-void
.end method

.method protected sendMenuSelection(IZ)V
    .registers 5
    .param p1, "menuId"    # I
    .param p2, "helpRequired"    # Z

    .line 681
    const-string v0, "CatService"

    const-string v1, "sendMenuSelection SET_UP_MENU"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    .line 683
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->cancelTimeOut(I)V

    .line 684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->isDisplayTextDisabled:Z

    .line 685
    return-void
.end method

.method startTimeOut(IJ)V
    .registers 6
    .param p1, "msg"    # I
    .param p2, "delay"    # J

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimeOut, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->cancelTimeOut(I)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 186
    return-void
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 10
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 1048
    const/4 v0, 0x0

    .line 1049
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    .line 1051
    .local v1, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p3, :cond_51

    .line 1061
    const/4 v2, 0x1

    .line 1062
    .local v2, "newPhoneType":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->getPhoneType()I

    move-result v2

    .line 1063
    const-string v3, "MtkCatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update PhoneType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mSlotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mPhoneType:I

    .line 1066
    .local v3, "oldPhoneType":I
    iput v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mPhoneType:I

    .line 1074
    if-eqz v3, :cond_3c

    if-eq v3, v2, :cond_3c

    .line 1075
    const-string v4, "MtkCatService"

    const-string v5, "phone type change,reset card state to absent....."

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1078
    :cond_3c
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mPhoneType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_46

    .line 1079
    invoke-virtual {p3, v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    goto :goto_4b

    .line 1081
    :cond_46
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 1083
    :goto_4b
    if-eqz v0, :cond_51

    .line 1084
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1088
    .end local v2    # "newPhoneType":I
    .end local v3    # "oldPhoneType":I
    :cond_51
    sget-object v2, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1089
    if-eqz v1, :cond_92

    :try_start_56
    sget-object v3, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v3, v1, :cond_92

    .line 1090
    sget-object v3, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_63

    .line 1091
    sget-object v3, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1094
    :cond_63
    const-string v3, "Reinitialize the Service with SIMRecords and UiccCardApplication"

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1096
    sput-object v1, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1097
    sput-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1100
    sget-object v3, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForRecordsLoaded slotid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " instance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    :cond_92
    monitor-exit v2

    .line 1105
    return-void

    .line 1104
    :catchall_94
    move-exception v3

    monitor-exit v2
    :try_end_96
    .catchall {:try_start_56 .. :try_end_96} :catchall_94

    throw v3
.end method

.method protected updateIccAvailability()V
    .registers 7

    .line 1109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_a

    .line 1110
    const-string v0, "updateIccAvailability, mUiccController is null"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
    return-void

    .line 1114
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1115
    .local v0, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 1116
    .local v1, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_1a

    .line 1117
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    .line 1119
    :cond_1a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1120
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " New Card State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Old Card State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1123
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_51

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v3, :cond_51

    .line 1124
    invoke-virtual {p0, v0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto :goto_74

    .line 1125
    :cond_51
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_74

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v3, :cond_74

    .line 1127
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6a

    .line 1128
    const-string v3, "updateIccAvailability(): Radio unavailable"

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    goto :goto_74

    .line 1132
    :cond_6a
    const-string v3, "SIM present. Reporting STK service running now..."

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1133
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    .line 1136
    :cond_74
    :goto_74
    return-void
.end method

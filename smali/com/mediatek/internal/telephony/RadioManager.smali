.class public Lcom/mediatek/internal/telephony/RadioManager;
.super Landroid/os/Handler;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/RadioManager$ModemPowerCasue;,
        Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;,
        Lcom/mediatek/internal/telephony/RadioManager$PowerSM;,
        Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;,
        Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$ForceRefreshSimStateRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;,
        Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;
    }
.end annotation


# static fields
.field protected static final ACTION_AIRPLANE_CHANGE_DONE:Ljava/lang/String; = "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

.field public static final ACTION_FORCE_SET_RADIO_POWER:Ljava/lang/String; = "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

.field public static final ACTION_MODEM_POWER_NO_CHANGE:Ljava/lang/String; = "com.mediatek.intent.action.MODEM_POWER_CHANGE"

.field private static final ACTION_WIFI_OFFLOAD_SERVICE_ON:Ljava/lang/String; = "mediatek.intent.action.WFC_POWER_ON_MODEM"

.field private static final ACTION_WIFI_ONLY_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_WIFI_ONLY_MODE"

.field protected static final AIRPLANE_MODE_OFF:Z = false

.field protected static final AIRPLANE_MODE_ON:Z = true

.field public static final ERROR_AIRPLANE_MODE:I = 0x2

.field public static final ERROR_ICCID_NOT_READY:I = 0x5

.field public static final ERROR_MODEM_OFF:I = 0x4

.field public static final ERROR_NO_PHONE_INSTANCE:I = 0x1

.field public static final ERROR_PCO:I = 0x6

.field public static final ERROR_PCO_ALREADY_OFF:I = 0x7

.field public static final ERROR_SIM_SWITCH_EXECUTING:I = 0x8

.field public static final ERROR_TURN_OFF_RADIO_DURING_ECC:I = 0x9

.field public static final ERROR_WIFI_ONLY:I = 0x3

.field private static final EVENT_DSBP_STATE_CHANGED:[I

.field private static final EVENT_DSBP_STATE_CHANGED_SLOT_1:I = 0xa

.field private static final EVENT_DSBP_STATE_CHANGED_SLOT_2:I = 0xb

.field private static final EVENT_DSBP_STATE_CHANGED_SLOT_3:I = 0xc

.field private static final EVENT_DSBP_STATE_CHANGED_SLOT_4:I = 0xd

.field private static final EVENT_MULTI_SIM_CONFIG_CHANGED:I = 0xe

.field private static final EVENT_RADIO_AVAILABLE:[I

.field private static final EVENT_RADIO_AVAILABLE_SLOT_1:I = 0x1

.field private static final EVENT_RADIO_AVAILABLE_SLOT_2:I = 0x2

.field private static final EVENT_RADIO_AVAILABLE_SLOT_3:I = 0x3

.field private static final EVENT_RADIO_AVAILABLE_SLOT_4:I = 0x4

.field private static final EVENT_REPORT_AIRPLANE_DONE:I = 0x8

.field private static final EVENT_REPORT_SIM_MODE_DONE:I = 0x9

.field private static final EVENT_SET_MODEM_POWER_OFF_DONE:I = 0x6

.field private static final EVENT_SET_SILENT_REBOOT_DONE:I = 0x7

.field private static final EVENT_VIRTUAL_SIM_ON:I = 0x5

.field protected static final EXTRA_AIRPLANE_MODE:Ljava/lang/String; = "airplaneMode"

.field public static final EXTRA_MODEM_POWER:Ljava/lang/String; = "modemPower"

.field private static final EXTRA_WIFI_OFFLOAD_SERVICE_ON:Ljava/lang/String; = "mediatek:POWER_ON_MODEM"

.field private static final ICC_READ_NOT_READY:Z = false

.field private static final ICC_READ_READY:Z = true

.field protected static final INITIAL_RETRY_INTERVAL_MSEC:I = 0xc8

.field protected static final INVALID_PHONE_ID:I = -0x1

.field private static final IS_NOT_SILENT_REBOOT:Ljava/lang/String; = "0"

.field protected static final IS_SILENT_REBOOT:Ljava/lang/String; = "1"

.field static final LOG_TAG:Ljava/lang/String; = "RadioManager"

.field private static final MAX_PHONE_COUNT:I = 0x4

.field protected static final MODEM_POWER_OFF:Z = false

.field protected static final MODEM_POWER_ON:Z = true

.field protected static final MODE_PHONE1_ONLY:I = 0x1

.field private static final MODE_PHONE2_ONLY:I = 0x2

.field private static final MODE_PHONE3_ONLY:I = 0x4

.field private static final MODE_PHONE4_ONLY:I = 0x8

.field protected static final NO_SIM_INSERTED:I = 0x0

.field private static final PREF_CATEGORY_RADIO_STATUS:Ljava/lang/String; = "RADIO_STATUS"

.field private static final PROPERTY_AIRPLANE_MODE:Ljava/lang/String; = "persist.vendor.radio.airplane.mode.on"

.field protected static PROPERTY_RADIO_OFF:[Ljava/lang/String; = null

.field protected static final PROPERTY_SILENT_REBOOT_MD1:Ljava/lang/String; = "vendor.gsm.ril.eboot"

.field private static final PROPERTY_SIM_MODE:Ljava/lang/String; = "persist.vendor.radio.sim.mode"

.field protected static final RADIO_POWER_OFF:Z = false

.field protected static final RADIO_POWER_ON:Z = true

.field public static final REASON_NONE:I = -0x1

.field public static final REASON_PCO_OFF:I = 0x1

.field public static final REASON_PCO_ON:I = 0x0

.field private static final REGISTRANTS_WITH_NO_NAME:Ljava/lang/String; = "NO_NAME"

.field protected static final SIM_INSERTED:I = 0x1

.field private static final SIM_NOT_INITIALIZED:I = -0x1

.field protected static final STRING_NO_SIM_INSERTED:Ljava/lang/String; = "N/A"

.field public static final SUCCESS:I = 0x0

.field protected static final TO_SET_MODEM_POWER:I = 0x2

.field protected static final TO_SET_RADIO_POWER:I = 0x1

.field private static final WIFI_ONLY_INIT:I = -0x1

.field private static final WIFI_ONLY_MODE_OFF:Z = false

.field private static final WIFI_ONLY_MODE_ON:Z = true

.field private static final isOP01:Z

.field private static final isOP09:Z

.field private static final mFlightModePowerOffModem:Z

.field protected static mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/mediatek/internal/telephony/IRadioPower;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sIccidPreference:Landroid/content/SharedPreferences;

.field private static sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;


# instance fields
.field private mAirDnMsgSent:Z

.field protected mAirplaneMode:Z

.field protected mBitmapForPhoneCount:I

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mForceRefreshSimStateRunnable:[Ljava/lang/Runnable;

.field private mForceSetRadioPowerRunnable:[Ljava/lang/Runnable;

.field private mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

.field private mInitializeWaitCounter:[I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDsbpChanging:[Z

.field private mIsPendingRadioByDsbpChanging:Z

.field private mIsRadioUnavailable:Z

.field private mIsWifiOn:Z

.field private mIsWifiOnlyDevice:Z

.field private mModemPower:Z

.field private mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

.field private mNeedIgnoreMessageForChangeDone:Z

.field private mNeedIgnoreMessageForWait:Z

.field private mNotifyMSimModeChangeRunnable:Ljava/lang/Runnable;

.field private mNotifySimModeChangeRunnable:[Ljava/lang/Runnable;

.field protected mPhoneCount:I

.field private mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

.field private mRadioPowerRunnable:[Ljava/lang/Runnable;

.field public mReason:[I

.field protected mSimInsertedStatus:[I

.field private mSimModeSetting:I

.field private mWifiOnlyMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 189
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    .line 192
    const-string v0, "vendor.ril.ipo.radiooff"

    const-string v1, "vendor.ril.ipo.radiooff.2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_RADIO_OFF:[Ljava/lang/String;

    .line 212
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_4e

    sput-object v1, Lcom/mediatek/internal/telephony/RadioManager;->EVENT_RADIO_AVAILABLE:[I

    .line 215
    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/mediatek/internal/telephony/RadioManager;->EVENT_DSBP_STATE_CHANGED:[I

    .line 236
    nop

    .line 237
    const-string v0, "ro.vendor.mtk_flight_mode_power_off_md"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/RadioManager;->mFlightModePowerOffModem:Z

    .line 239
    nop

    .line 240
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OP01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/mediatek/internal/telephony/RadioManager;->isOP01:Z

    .line 241
    nop

    .line 242
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP09"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/RadioManager;->isOP09:Z

    .line 241
    return-void

    :array_4e
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_5a
    .array-data 4
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Landroid/os/Handler;-><init>()V

    .line 131
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 136
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 182
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    .line 185
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsPendingRadioByDsbpChanging:Z

    .line 187
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/mediatek/internal/telephony/RadioManager;->mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 254
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:Z

    .line 257
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsRadioUnavailable:Z

    .line 394
    new-instance v6, Lcom/mediatek/internal/telephony/RadioManager$1;

    invoke-direct {v6, v0}, Lcom/mediatek/internal/telephony/RadioManager$1;-><init>(Lcom/mediatek/internal/telephony/RadioManager;)V

    iput-object v6, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 279
    .local v6, "airplaneMode":I
    invoke-static/range {p1 .. p1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v7

    .line 281
    .local v7, "wifionlyMode":I
    iput-boolean v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mAirDnMsgSent:Z

    .line 284
    invoke-static {v1, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v8

    .line 285
    .local v8, "imsMgr":Lcom/android/ims/ImsManager;
    invoke-virtual {v8}, Lcom/android/ims/ImsManager;->isServiceReady()Z

    move-result v9

    if-eqz v9, :cond_61

    invoke-static/range {p1 .. p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 286
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    move-result v9

    if-nez v9, :cond_61

    .line 287
    const-string v9, "initial actual wifi state when wifi calling is on"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 288
    const-string v9, "wifi"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 289
    .local v9, "wiFiManager":Landroid/net/wifi/WifiManager;
    if-eqz v9, :cond_61

    .line 290
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-ne v10, v5, :cond_5e

    move v10, v5

    goto :goto_5f

    :cond_5e
    move v10, v3

    :goto_5f
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    .line 295
    .end local v9    # "wiFiManager":Landroid/net/wifi/WifiManager;
    :cond_61
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initialize RadioManager under airplane mode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " wifi only mode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " wifi mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "phoneCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 299
    const/4 v9, 0x4

    new-array v10, v9, [I

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    .line 300
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_95
    const/4 v11, -0x1

    if-ge v10, v9, :cond_9f

    .line 301
    iget-object v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v11, v12, v10

    .line 300
    add-int/lit8 v10, v10, 0x1

    goto :goto_95

    .line 303
    .end local v10    # "i":I
    :cond_9f
    new-array v10, v9, [I

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mInitializeWaitCounter:[I

    .line 304
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_a4
    if-ge v10, v9, :cond_ad

    .line 305
    iget-object v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mInitializeWaitCounter:[I

    aput v3, v12, v10

    .line 304
    add-int/lit8 v10, v10, 0x1

    goto :goto_a4

    .line 307
    .end local v10    # "i":I
    :cond_ad
    new-array v10, v9, [Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mRadioPowerRunnable:[Ljava/lang/Runnable;

    .line 308
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_b2
    if-ge v10, v9, :cond_c0

    .line 309
    iget-object v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mRadioPowerRunnable:[Ljava/lang/Runnable;

    new-instance v13, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v13, v0, v5, v10}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    aput-object v13, v12, v10

    .line 308
    add-int/lit8 v10, v10, 0x1

    goto :goto_b2

    .line 311
    .end local v10    # "i":I
    :cond_c0
    new-array v10, v9, [Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifySimModeChangeRunnable:[Ljava/lang/Runnable;

    .line 312
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_c5
    if-ge v10, v9, :cond_d3

    .line 313
    iget-object v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifySimModeChangeRunnable:[Ljava/lang/Runnable;

    new-instance v13, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;

    invoke-direct {v13, v0, v5, v10}, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    aput-object v13, v12, v10

    .line 312
    add-int/lit8 v10, v10, 0x1

    goto :goto_c5

    .line 315
    .end local v10    # "i":I
    :cond_d3
    new-instance v10, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;

    const/4 v12, 0x3

    invoke-direct {v10, v0, v12}, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;I)V

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyMSimModeChangeRunnable:Ljava/lang/Runnable;

    .line 316
    new-array v10, v9, [Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mForceSetRadioPowerRunnable:[Ljava/lang/Runnable;

    .line 317
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_e0
    if-ge v10, v9, :cond_ee

    .line 318
    iget-object v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mForceSetRadioPowerRunnable:[Ljava/lang/Runnable;

    new-instance v13, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v13, v0, v5, v10}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    aput-object v13, v12, v10

    .line 317
    add-int/lit8 v10, v10, 0x1

    goto :goto_e0

    .line 320
    .end local v10    # "i":I
    :cond_ee
    new-array v10, v9, [Lcom/mediatek/internal/telephony/RadioManager$ForceRefreshSimStateRunnable;

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mForceRefreshSimStateRunnable:[Ljava/lang/Runnable;

    .line 322
    iput-object v1, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    .line 323
    if-nez v6, :cond_f8

    move v10, v3

    goto :goto_f9

    :cond_f8
    move v10, v5

    :goto_f9
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 324
    if-nez v7, :cond_ff

    move v10, v5

    goto :goto_100

    :cond_ff
    move v10, v3

    :goto_100
    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 326
    move-object/from16 v10, p3

    iput-object v10, v0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 327
    iput v2, v0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    .line 328
    invoke-direct {v0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->convertPhoneCountIntoBitmap(I)I

    move-result v12

    iput v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    .line 329
    iget-object v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    const-string v13, "RADIO_STATUS"

    invoke-virtual {v12, v13, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    sput-object v12, Lcom/mediatek/internal/telephony/RadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    const-string v14, "msim_mode_setting"

    invoke-static {v12, v14, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    .line 332
    new-instance v12, Lcom/mediatek/internal/telephony/ImsSwitchController;

    iget-object v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    iget v14, v0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    iget-object v15, v0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v12, v13, v14, v15}, Lcom/mediatek/internal/telephony/ImsSwitchController;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v12, v0, Lcom/mediatek/internal/telephony/RadioManager;->mImsSwitchController:Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 334
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v12

    .line 335
    .local v12, "mainPhoneId":I
    iget-object v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v13, v13, v12

    check-cast v13, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 337
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 338
    const/16 v15, 0x8

    invoke-virtual {v0, v15}, Lcom/mediatek/internal/telephony/RadioManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 335
    invoke-virtual {v13, v15, v14, v11}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 340
    const-string v11, "Not BSP Package, register intent!!!"

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 341
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 342
    .local v11, "filter":Landroid/content/IntentFilter;
    const-string v13, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v13, "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v13, "android.intent.action.ACTION_WIFI_ONLY_MODE"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v13, "mediatek.intent.action.WFC_POWER_ON_MODEM"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v13, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v13, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v11, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v13, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    iget-object v14, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v13, v14, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/RadioManager;->registerListener()V

    .line 351
    const/16 v13, 0xe

    invoke-static {v0, v13, v4}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 354
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getActiveRatConfig()Ljava/lang/String;

    move-result-object v4

    const-string v13, ""

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18f

    .line 355
    iput-boolean v5, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOnlyDevice:Z

    .line 358
    :cond_18f
    new-instance v4, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    const-string v13, "PowerSM"

    invoke-direct {v4, v0, v13}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;-><init>(Lcom/mediatek/internal/telephony/RadioManager;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    .line 359
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->start()V

    .line 361
    new-array v4, v9, [I

    iput-object v4, v0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    .line 362
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a0
    if-ge v4, v9, :cond_1d7

    .line 363
    if-ge v4, v2, :cond_1cd

    .line 364
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v13

    .line 365
    .local v13, "subId":I
    iget-object v14, v0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    const-string v15, "dataKeySaState"

    invoke-static {v14, v4, v15, v3}, Lcom/mediatek/internal/telephony/selfactivation/SaPersistDataHelper;->getIntData(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v14

    .line 367
    .local v14, "selfActivationState":I
    const-string v15, "persist.vendor.pco5.radio.ctrl"

    const-string v3, "0"

    invoke-static {v15, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 368
    .local v15, "pcoEnable":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v9, v14, :cond_1c7

    .line 369
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c7

    .line 370
    iget-object v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    aput v5, v3, v4

    const/4 v9, -0x1

    goto :goto_1cc

    .line 372
    :cond_1c7
    iget-object v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    const/4 v9, -0x1

    aput v9, v3, v4

    .line 374
    .end local v13    # "subId":I
    .end local v14    # "selfActivationState":I
    .end local v15    # "pcoEnable":Ljava/lang/String;
    :goto_1cc
    goto :goto_1d2

    .line 375
    :cond_1cd
    const/4 v9, -0x1

    iget-object v3, v0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    aput v9, v3, v4

    .line 362
    :goto_1d2
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x4

    goto :goto_1a0

    .line 379
    .end local v4    # "i":I
    :cond_1d7
    const/4 v3, 0x4

    new-array v4, v3, [Z

    iput-object v4, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsDsbpChanging:[Z

    .line 380
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1dd
    if-ge v4, v3, :cond_1e7

    .line 381
    iget-object v5, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsDsbpChanging:[Z

    const/4 v9, 0x0

    aput-boolean v9, v5, v4

    .line 380
    add-int/lit8 v4, v4, 0x1

    goto :goto_1dd

    .line 383
    .end local v4    # "i":I
    :cond_1e7
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 99
    invoke-static {p0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveForceSetRadioPowerIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/RadioManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;

    .line 99
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/RadioManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;

    .line 99
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/internal/telephony/RadioManager;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/RadioManager;)Lcom/mediatek/internal/telephony/RadioManager$PowerSM;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;

    .line 99
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/RadioManager;)[Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;

    .line 99
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsDsbpChanging:[Z

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/internal/telephony/RadioManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;
    .param p1, "x1"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsPendingRadioByDsbpChanging:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/RadioManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/RadioManager;

    .line 99
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPowerAfterCapabilitySwitch()V

    return-void
.end method

.method private binaryToHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "binaryStr"    # Ljava/lang/String;

    .line 2201
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    const-string v0, "%040x"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final cleanModemPowerMessage()V
    .registers 5

    .line 1826
    const-string v0, "cleanModemPowerMessage"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1827
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    if-eqz v0, :cond_17

    .line 1828
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_15

    .line 1829
    aput-object v3, v1, v0

    .line 1828
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1831
    .end local v0    # "i":I
    :cond_15
    iput-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    .line 1833
    :cond_17
    return-void
.end method

.method private convertPhoneCountIntoBitmap(I)I
    .registers 5
    .param p1, "phoneCount"    # I

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "ret":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_a

    .line 388
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 390
    .end local v1    # "i":I
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Convert phoneCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " into bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 391
    return v0
.end method

.method private static final createMessage(ZIII)[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;
    .registers 10
    .param p0, "power"    # Z
    .param p1, "phoneBitMap"    # I
    .param p2, "mainCapabilityPhoneId"    # I
    .param p3, "phoneCount"    # I

    .line 1852
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 1853
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMessage, config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1855
    new-array v1, p3, [Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    .line 1856
    .local v1, "msgs":[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;
    const/4 v2, 0x0

    .line 1857
    .local v2, "phoneId":I
    sget-object v3, Lcom/mediatek/internal/telephony/RadioManager$2;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_70

    .line 1865
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 1866
    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    invoke-direct {v3, v2}, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;-><init>(I)V

    aput-object v3, v1, v2

    goto :goto_43

    .line 1861
    :pswitch_3a
    move v2, p2

    .line 1862
    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    invoke-direct {v3, v2}, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;-><init>(I)V

    aput-object v3, v1, v2

    .line 1863
    nop

    .line 1870
    :goto_43
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_44
    if-ge v3, p3, :cond_6f

    .line 1871
    aget-object v4, v1, v3

    if-eqz v4, :cond_6c

    .line 1872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createMessage, ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1870
    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 1875
    .end local v3    # "i":I
    :cond_6f
    return-object v1

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method private eventIdtoString(I)Ljava/lang/String;
    .registers 3
    .param p1, "what"    # I

    .line 1558
    const/4 v0, 0x0

    .line 1559
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_1c

    :pswitch_4
    goto :goto_1a

    .line 1585
    :pswitch_5
    const-string v0, "EVENT_MULTI_SIM_CONFIG_CHANGED"

    .line 1586
    goto :goto_1a

    .line 1582
    :pswitch_8
    const-string v0, "EVENT_DSBP_STATE_CHANGED"

    .line 1583
    goto :goto_1a

    .line 1576
    :pswitch_b
    const-string v0, "EVENT_REPORT_SIM_MODE_DONE"

    .line 1577
    goto :goto_1a

    .line 1573
    :pswitch_e
    const-string v0, "EVENT_REPORT_AIRPLANE_DONE"

    .line 1574
    goto :goto_1a

    .line 1570
    :pswitch_11
    const-string v0, "EVENT_SET_SILENT_REBOOT_DONE"

    .line 1571
    goto :goto_1a

    .line 1567
    :pswitch_14
    const-string v0, "EVENT_VIRTUAL_SIM_ON"

    .line 1568
    goto :goto_1a

    .line 1564
    :pswitch_17
    const-string v0, "EVENT_RADIO_AVAILABLE"

    .line 1565
    nop

    .line 1590
    :goto_1a
    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_4
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private getCiIndex(Landroid/os/Message;)I
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1595
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1602
    .local v0, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_35

    .line 1603
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_18

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_18

    .line 1604
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_35

    .line 1605
    :cond_18
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_35

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_35

    .line 1606
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1607
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_35

    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_35

    .line 1608
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    .line 1612
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_35
    :goto_35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/RadioManager;
    .registers 2

    .line 270
    const-class v0, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v0

    .line 271
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    monitor-exit v0

    return-object v1

    .line 272
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/RadioManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneCount"    # I
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 245
    const-class v0, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v0

    .line 246
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    if-nez v1, :cond_e

    .line 247
    new-instance v1, Lcom/mediatek/internal/telephony/RadioManager;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    .line 249
    :cond_e
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->sRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    monitor-exit v0

    return-object v1

    .line 250
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static isFlightModePowerOffModemConfigEnabled()Z
    .registers 4

    .line 1365
    const-string v0, "vendor.ril.testmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1366
    const-string v0, "vendor.ril.test.poweroffmd"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1370
    :cond_19
    sget-boolean v0, Lcom/mediatek/internal/telephony/RadioManager;->isOP01:Z

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/mediatek/internal/telephony/RadioManager;->isOP09:Z

    if-eqz v0, :cond_66

    .line 1372
    :cond_21
    const-string v0, "vendor.ril.atci.flightmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1373
    .local v0, "fromAtci":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    .line 1374
    return v3

    .line 1378
    :cond_2f
    const-string v2, "vendor.gsm.sim.ril.testsim"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 1379
    const-string v2, "vendor.gsm.sim.ril.testsim.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 1380
    const-string v2, "vendor.gsm.sim.ril.testsim.3"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 1381
    const-string v2, "vendor.gsm.sim.ril.testsim.4"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    goto :goto_62

    :cond_60
    const/4 v1, 0x0

    goto :goto_63

    :cond_62
    :goto_62
    move v1, v3

    .line 1382
    .local v1, "isTestSim":Z
    :goto_63
    if-eqz v1, :cond_66

    .line 1383
    return v3

    .line 1388
    .end local v0    # "fromAtci":Ljava/lang/String;
    .end local v1    # "isTestSim":Z
    :cond_66
    sget-boolean v0, Lcom/mediatek/internal/telephony/RadioManager;->mFlightModePowerOffModem:Z

    return v0
.end method

.method public static isFlightModePowerOffModemEnabled()Z
    .registers 2

    .line 1393
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1394
    const-string v0, "Instance not exists, return config only"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1395
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v0

    return v0

    .line 1398
    :cond_10
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 1399
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    xor-int/2addr v0, v1

    return v0

    .line 1401
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public static isMSimModeSupport()Z
    .registers 1

    .line 1419
    const/4 v0, 0x1

    return v0
.end method

.method public static isModemPowerOff(I)Z
    .registers 2
    .param p0, "phoneId"    # I

    .line 1409
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/RadioManager;->isModemOff(I)Z

    move-result v0

    return v0
.end method

.method public static isPowerOnFeatureAllClosed()Z
    .registers 2

    .line 1354
    const/4 v0, 0x1

    .line 1355
    .local v0, "ret":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1356
    const/4 v0, 0x0

    goto :goto_10

    .line 1357
    :cond_9
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1358
    const/4 v0, 0x0

    .line 1360
    :cond_10
    :goto_10
    return v0
.end method

.method private isRadioAvaliable()Z
    .registers 5

    .line 1753
    const/4 v0, 0x1

    .line 1754
    .local v0, "isRadioAvaliable":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v2, :cond_25

    .line 1755
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioAvaliable(I)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRadioAvaliable=false, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1757
    const/4 v0, 0x0

    .line 1758
    goto :goto_25

    .line 1754
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1761
    .end local v1    # "i":I
    :cond_25
    :goto_25
    return v0
.end method

.method private isRadioAvaliable(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .line 1766
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1767
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1768
    return v1

    .line 1771
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", RadioState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1772
    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1771
    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1773
    iget-object v2, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1
.end method

.method private isRadioOn()Z
    .registers 4

    .line 1777
    const/4 v0, 0x1

    .line 1778
    .local v0, "isRadioOn":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v2, :cond_11

    .line 1779
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioOn(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1780
    const/4 v0, 0x0

    .line 1781
    goto :goto_11

    .line 1778
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1784
    .end local v1    # "i":I
    :cond_11
    :goto_11
    return v0
.end method

.method private isRadioOn(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .line 1789
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1790
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1791
    return v1

    .line 1794
    :cond_8
    iget-object v2, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    move v1, v3

    :cond_12
    return v1
.end method

.method private isRadioUnavailable()Z
    .registers 5

    .line 1798
    const/4 v0, 0x1

    .line 1799
    .local v0, "isRadioUnavailable":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v2, :cond_25

    .line 1800
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioAvaliable(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRadioUnavailable=false, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1802
    const/4 v0, 0x0

    .line 1803
    goto :goto_25

    .line 1799
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1806
    .end local v1    # "i":I
    :cond_25
    :goto_25
    return v0
.end method

.method private isRequiredRadioOff(Ljava/lang/String;)Z
    .registers 4
    .param p1, "iccid"    # Ljava/lang/String;

    .line 1896
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1897
    const/4 v0, 0x1

    return v0

    .line 1899
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private final isSetModemPowerFinish()Z
    .registers 4

    .line 1810
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    if-eqz v0, :cond_52

    .line 1811
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    array-length v2, v1

    if-ge v0, v2, :cond_52

    .line 1812
    aget-object v1, v1, v0

    const-string v2, "isSetModemPowerFinish ["

    if-eqz v1, :cond_38

    .line 1813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1814
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;->isFinish:Z

    if-nez v1, :cond_4f

    .line 1815
    const/4 v1, 0x0

    return v1

    .line 1818
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: MPMsg is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1811
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1822
    .end local v0    # "i":I
    :cond_52
    const/4 v0, 0x1

    return v0
.end method

.method public static isUnderCryptKeeper()Z
    .registers 2

    .line 701
    const-string v0, "ro.crypto.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "block"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 702
    const-string v0, "ro.crypto.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encrypted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 703
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trigger_restart_min_framework"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 704
    const-string v0, "[Special Case] Under CryptKeeper, Not to turn on/off modem"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 705
    const/4 v0, 0x1

    return v0

    .line 707
    :cond_31
    const-string v0, "[Special Case] Not Under CryptKeeper"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RadioManager] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    return-void
.end method

.method private notifyDsbpStateChanged(ILandroid/os/AsyncResult;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1523
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_55

    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_55

    .line 1524
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1525
    .local v0, "state":I
    const/4 v1, 0x0

    .line 1526
    .local v1, "phoneId":I
    packed-switch p1, :pswitch_data_56

    goto :goto_1d

    .line 1537
    :pswitch_15
    const/4 v1, 0x3

    .line 1538
    goto :goto_1d

    .line 1534
    :pswitch_17
    const/4 v1, 0x2

    .line 1535
    goto :goto_1d

    .line 1531
    :pswitch_19
    const/4 v1, 0x1

    .line 1532
    goto :goto_1d

    .line 1528
    :pswitch_1b
    const/4 v1, 0x0

    .line 1529
    nop

    .line 1542
    :goto_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDsbpStateChanged state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1543
    const/4 v2, 0x1

    if-ne v0, v2, :cond_41

    .line 1544
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsDsbpChanging:[Z

    aput-boolean v2, v3, v1

    goto :goto_55

    .line 1546
    :cond_41
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsDsbpChanging:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1547
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v2

    if-ne v2, v1, :cond_55

    .line 1548
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsPendingRadioByDsbpChanging:Z

    if-eqz v2, :cond_55

    .line 1549
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsPendingRadioByDsbpChanging:Z

    .line 1550
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPowerAfterCapabilitySwitch()V

    .line 1555
    .end local v0    # "state":I
    .end local v1    # "phoneId":I
    :cond_55
    :goto_55
    return-void

    :pswitch_data_56
    .packed-switch 0xa
        :pswitch_1b
        :pswitch_19
        :pswitch_17
        :pswitch_15
    .end packed-switch
.end method

.method private notifyMultiSimConfigChanged(I)V
    .registers 6
    .param p1, "activeModems"    # I

    .line 1509
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 1510
    .local v0, "phoneCount":I
    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    .line 1511
    .local v1, "oldPhoneCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multiSimConfigChanged, activeModems:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", phoneCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", oldPhoneCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1514
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->unregisterListener()V

    .line 1515
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 1517
    iput v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    .line 1518
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->convertPhoneCountIntoBitmap(I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    .line 1519
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->registerListener()V

    .line 1520
    return-void
.end method

.method private static declared-synchronized notifyRadioPowerChange(ZI)V
    .registers 7
    .param p0, "power"    # Z
    .param p1, "phoneId"    # I

    const-class v0, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v0

    .line 1662
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1663
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/IRadioPower;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRadioPowerChange: user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1664
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/IRadioPower;

    .line 1665
    .local v3, "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    invoke-interface {v3, p0, p1}, Lcom/mediatek/internal/telephony/IRadioPower;->notifyRadioPowerChange(ZI)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3f

    .line 1666
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/IRadioPower;Ljava/lang/String;>;"
    .end local v3    # "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    goto :goto_d

    .line 1667
    :cond_3d
    monitor-exit v0

    return-void

    .line 1661
    .end local p0    # "power":Z
    .end local p1    # "phoneId":I
    :catchall_3f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private onReceiveForceSetRadioPowerIntent(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "phoneId":I
    const-string v1, "mode"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 577
    .local v1, "mode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force set radio power, mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 578
    if-ne v1, v2, :cond_24

    .line 579
    const-string v2, "Invalid mode, MSIM_MODE intent has no extra value"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 580
    return-void

    .line 582
    :cond_24
    const/4 v0, 0x0

    :goto_25
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v2, :cond_3a

    .line 584
    const/4 v2, 0x1

    shl-int v3, v2, v0

    and-int/2addr v3, v1

    if-nez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_32

    :cond_31
    move v3, v2

    .line 585
    .local v3, "singlePhonePower":Z
    :goto_32
    if-ne v2, v3, :cond_37

    .line 586
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    .line 582
    .end local v3    # "singlePhonePower":Z
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 589
    :cond_3a
    return-void
.end method

.method private putIccIdToPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .registers 6
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "iccid"    # Ljava/lang/String;

    .line 1309
    if-eqz p2, :cond_36

    .line 1311
    const-string v0, "N/A"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1312
    const-string v0, "N/A"

    .local v0, "printableIccid":Ljava/lang/String;
    goto :goto_1a

    .line 1314
    .end local v0    # "printableIccid":Ljava/lang/String;
    :cond_d
    nop

    .line 1315
    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1314
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->binaryToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    .restart local v0    # "printableIccid":Ljava/lang/String;
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add radio off SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1320
    .end local v0    # "printableIccid":Ljava/lang/String;
    :cond_36
    return-void
.end method

.method public static declared-synchronized registerForRadioPowerChange(Ljava/lang/String;Lcom/mediatek/internal/telephony/IRadioPower;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "iRadioPower"    # Lcom/mediatek/internal/telephony/IRadioPower;

    const-class v0, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v0

    .line 1649
    if-nez p0, :cond_8

    .line 1650
    :try_start_5
    const-string v1, "NO_NAME"

    move-object p0, v1

    .line 1652
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " registerForRadioPowerChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1653
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    .line 1654
    monitor-exit v0

    return-void

    .line 1648
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    :catchall_23
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private registerListener()V
    .registers 5

    .line 1879
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v1, :cond_2b

    .line 1880
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1881
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    sget-object v2, Lcom/mediatek/internal/telephony/RadioManager;->EVENT_RADIO_AVAILABLE:[I

    aget v2, v2, v0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1882
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    sget-object v2, Lcom/mediatek/internal/telephony/RadioManager;->EVENT_DSBP_STATE_CHANGED:[I

    aget v2, v2, v0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForDsbpStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1879
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1885
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method

.method private removeIccIdFromPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .registers 6
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "iccid"    # Ljava/lang/String;

    .line 1323
    if-eqz p2, :cond_35

    .line 1325
    const-string v0, "N/A"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1326
    const-string v0, "N/A"

    .local v0, "printableIccid":Ljava/lang/String;
    goto :goto_1a

    .line 1328
    .end local v0    # "printableIccid":Ljava/lang/String;
    :cond_d
    nop

    .line 1329
    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->binaryToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1331
    .restart local v0    # "printableIccid":Ljava/lang/String;
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove radio off SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1334
    .end local v0    # "printableIccid":Ljava/lang/String;
    :cond_35
    return-void
.end method

.method public static sendRequestBeforeSetRadioPower(ZI)V
    .registers 4
    .param p0, "power"    # Z
    .param p1, "phoneId"    # I

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send request before EFUN, power:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1344
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->notifyRadioPowerChange(ZI)V

    .line 1345
    return-void
.end method

.method private setModemPower(ZI)V
    .registers 9
    .param p1, "power"    # Z
    .param p2, "phoneBitMap"    # I

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Modem Power according to bitmap, Power:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PhoneBitMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 773
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isDeviceShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 774
    const-string v0, "RadioManager"

    const-string v1, "[RadioManager] skip the request because device is shutdown"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void

    .line 778
    :cond_32
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 782
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->monitorModemPowerChangeDone(ZII)[Landroid/os/Message;

    move-result-object v1

    .line 785
    .local v1, "responses":[Landroid/os/Message;
    const/4 v2, 0x0

    .line 786
    .local v2, "phoneId":I
    sget-object v3, Lcom/mediatek/internal/telephony/RadioManager$2;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, ", phoneId:"

    packed-switch v3, :pswitch_data_d8

    .line 801
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 802
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Modem Power under SS mode:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 803
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v4, v1, v2

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_b4

    .line 790
    :pswitch_7e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v2

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Modem Power, Power:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 792
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    aget-object v4, v1, v2

    invoke-virtual {v3, p1, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setModemPower(ZLandroid/os/Message;)V

    .line 793
    if-nez p1, :cond_b4

    .line 794
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_aa
    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v3, v4, :cond_b4

    .line 795
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->resetSimInsertedStatus(I)V

    .line 794
    add-int/lit8 v3, v3, 0x1

    goto :goto_aa

    .line 807
    .end local v3    # "i":I
    :cond_b4
    :goto_b4
    const/4 v3, 0x1

    if-ne p1, v3, :cond_d7

    sget-boolean v3, Lcom/mediatek/internal/telephony/RadioManager;->isOP01:Z

    if-nez v3, :cond_bf

    sget-boolean v3, Lcom/mediatek/internal/telephony/RadioManager;->isOP09:Z

    if-eqz v3, :cond_d7

    .line 808
    :cond_bf
    const-string v3, "vendor.ril.atci.flightmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 809
    const-string v4, "Power on Modem, Set vendor.ril.atci.flightmode to 0"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 810
    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_d7
    return-void

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
    .end packed-switch
.end method

.method private setRadioPowerAfterCapabilitySwitch()V
    .registers 4

    .line 425
    const-string v0, "Update radio power after capability switch or dsbp changing"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 428
    .local v0, "targetPhoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 429
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 431
    :cond_19
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 432
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v2, :cond_31

    .line 433
    if-eq v0, v1, :cond_2e

    .line 438
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 432
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 441
    .end local v1    # "i":I
    :cond_31
    return-void
.end method

.method public static declared-synchronized unregisterForRadioPowerChange(Lcom/mediatek/internal/telephony/IRadioPower;)V
    .registers 4
    .param p0, "iRadioPower"    # Lcom/mediatek/internal/telephony/IRadioPower;

    const-class v0, Lcom/mediatek/internal/telephony/RadioManager;

    monitor-enter v0

    .line 1657
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unregisterForRadioPowerChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1658
    sget-object v1, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyRadioPowerChange:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    .line 1659
    monitor-exit v0

    return-void

    .line 1656
    .end local p0    # "iRadioPower":Lcom/mediatek/internal/telephony/IRadioPower;
    :catchall_26
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private unregisterListener()V
    .registers 4

    .line 1888
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 1889
    aget-object v1, v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForVirtualSimOn(Landroid/os/Handler;)V

    .line 1890
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 1891
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForDsbpStateChanged(Landroid/os/Handler;)V

    .line 1888
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1893
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method private waitRadioAvaliable(Z)Z
    .registers 5
    .param p1, "state"    # Z

    .line 1747
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOnlyDevice:Z

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioAvaliable()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1748
    .local v0, "wait":Z
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitRadioAvaliable, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", wait="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1749
    return v0
.end method


# virtual methods
.method protected findMainCapabilityPhoneId()I
    .registers 4

    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, "result":I
    nop

    .line 817
    const-string v1, "persist.vendor.radio.simswitch"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 816
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 818
    .local v1, "switchStatus":I
    add-int/lit8 v0, v1, -0x1

    .line 819
    if-ltz v0, :cond_1c

    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-lt v0, v2, :cond_1b

    goto :goto_1c

    .line 822
    :cond_1b
    return v0

    .line 820
    :cond_1c
    :goto_1c
    const/4 v2, 0x0

    return v2
.end method

.method public forceAllowAirplaneModeChange(Z)V
    .registers 2
    .param p1, "forceSwitch"    # Z

    .line 1684
    return-void
.end method

.method public forceRefreshSimState(ZI)V
    .registers 8
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force refresh sim state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1133
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1134
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_23

    .line 1135
    return-void

    .line 1138
    :cond_23
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v1, v2, :cond_34

    .line 1139
    const-string v1, "force refresh sim state under airplane mode, ignore"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1140
    return-void

    .line 1143
    :cond_34
    invoke-static {p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v1, v2, :cond_60

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modem Power Off for phone "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Power on modem first"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1145
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    shl-int v3, v2, p2

    const/16 v4, 0x10

    # invokes: Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->updateModemPowerState(ZII)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 1153
    :cond_60
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mForceRefreshSimStateRunnable:[Ljava/lang/Runnable;

    aget-object v1, v1, p2

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1154
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v1

    if-eqz v1, :cond_80

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v1, :cond_80

    if-ne p1, v2, :cond_80

    .line 1155
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemOff(I)Z

    move-result v1

    if-eqz v1, :cond_80

    goto :goto_8c

    .line 1164
    :cond_80
    move v1, p1

    .line 1165
    .local v1, "radioPower":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1166
    invoke-virtual {p0, v1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshSimSetting(ZI)V

    .line 1167
    return-void

    .line 1156
    .end local v1    # "radioPower":Z
    :cond_8c
    :goto_8c
    const-string v1, "force refresh sim state, read iccid not ready, wait for200ms"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1158
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mForceRefreshSimStateRunnable:[Ljava/lang/Runnable;

    new-instance v2, Lcom/mediatek/internal/telephony/RadioManager$ForceRefreshSimStateRunnable;

    invoke-direct {v2, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$ForceRefreshSimStateRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    aput-object v2, v1, p2

    .line 1160
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mForceRefreshSimStateRunnable:[Ljava/lang/Runnable;

    aget-object v1, v1, p2

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1161
    return-void
.end method

.method public forceSetRadioPower(ZI)V
    .registers 8
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force set radio power for phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1088
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1089
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_23

    .line 1090
    return-void

    .line 1093
    :cond_23
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v1, v2, :cond_34

    .line 1094
    const-string v1, "Force Set Radio Power under airplane mode, ignore"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1095
    return-void

    .line 1098
    :cond_34
    invoke-static {p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v1, v2, :cond_60

    .line 1100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modem Power Off for phone "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Power on modem first"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1101
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    shl-int v3, v2, p2

    const/16 v4, 0x10

    # invokes: Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->updateModemPowerState(ZII)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 1110
    :cond_60
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mForceSetRadioPowerRunnable:[Ljava/lang/Runnable;

    aget-object v1, v1, p2

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1111
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v1

    if-eqz v1, :cond_80

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v1, :cond_80

    if-ne p1, v2, :cond_80

    .line 1112
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemOff(I)Z

    move-result v1

    if-eqz v1, :cond_80

    goto :goto_90

    .line 1120
    :cond_80
    move v1, p1

    .line 1121
    .local v1, "radioPower":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1122
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(ZZZZ)V

    .line 1123
    invoke-virtual {p0, v1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshSimSetting(ZI)V

    .line 1124
    return-void

    .line 1113
    .end local v1    # "radioPower":Z
    :cond_90
    :goto_90
    const-string v1, "force set radio power, read iccid not ready, wait for200ms"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1115
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mForceSetRadioPowerRunnable:[Ljava/lang/Runnable;

    new-instance v2, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v2, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    aput-object v2, v1, p2

    .line 1116
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mForceSetRadioPowerRunnable:[Ljava/lang/Runnable;

    aget-object v1, v1, p2

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1117
    return-void
.end method

.method public getHashCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "iccid"    # Ljava/lang/String;

    .line 1904
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1905
    .local v0, "alga":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1906
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 1907
    .local v1, "hashCode":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_16} :catch_17

    .line 1908
    .local v2, "strIccid":Ljava/lang/String;
    return-object v2

    .line 1909
    .end local v0    # "alga":Ljava/security/MessageDigest;
    .end local v1    # "hashCode":[B
    .end local v2    # "strIccid":Ljava/lang/String;
    :catch_17
    move-exception v0

    .line 1910
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "isRequiredRadioOff SHA-256 must exist"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getSimInsertedStatus(I)I
    .registers 3
    .param p1, "phoneId"    # I

    .line 970
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aget v0, v0, p1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1440
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->getCiIndex(Landroid/os/Message;)I

    move-result v0

    .line 1442
    .local v0, "phoneIdForMsg":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg.what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->eventIdtoString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1443
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_f4

    .line 1503
    :pswitch_24
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_f3

    .line 1499
    :pswitch_29
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1500
    .local v1, "activeModems":I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->notifyMultiSimConfigChanged(I)V

    .line 1501
    goto/16 :goto_f3

    .line 1495
    .end local v1    # "activeModems":I
    :pswitch_3a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1496
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/RadioManager;->notifyDsbpStateChanged(ILandroid/os/AsyncResult;)V

    .line 1497
    goto/16 :goto_f3

    .line 1455
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle EVENT_SET_MODEM_POWER_OFF_DONE -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:Z

    if-eqz v3, :cond_56

    const-string v3, "ON"

    goto :goto_58

    :cond_56
    const-string v3, "OFF"

    :goto_58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1456
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:Z

    if-nez v1, :cond_e2

    .line 1457
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1458
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    .line 1459
    .local v3, "powerMessage":Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleModemPowerMessage, message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1460
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_a1

    .line 1461
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleModemPowerMessage, result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_b7

    .line 1464
    :cond_a1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleModemPowerMessage, Unhandle ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1467
    :goto_b7
    iput-boolean v2, v3, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;->isFinish:Z

    .line 1469
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->isSetModemPowerFinish()Z

    move-result v2

    if-nez v2, :cond_c0

    .line 1470
    return-void

    .line 1472
    :cond_c0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->cleanModemPowerMessage()V

    .line 1474
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->unMonitorModemPowerChangeDone()V

    .line 1475
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_d6

    .line 1476
    const-string v2, "send EVENT_MODEM_POWER_OFF_DONE"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1477
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    const/4 v4, 0x5

    # invokes: Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V
    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$700(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;I)V

    goto :goto_e1

    .line 1484
    :cond_d6
    const-string v2, "retry turn off MD()"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1485
    const/4 v2, 0x0

    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    invoke-direct {p0, v2, v4}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 1487
    .end local v3    # "powerMessage":Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;
    :goto_e1
    goto :goto_f3

    .line 1488
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_e2
    const-string v1, "EVENT_SET_MODEM_POWER_OFF_DONE: wrong state"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1490
    goto :goto_f3

    .line 1452
    :pswitch_e8
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/RadioManager;->forceSetRadioPower(ZI)V

    .line 1453
    goto :goto_f3

    .line 1449
    :pswitch_ec
    iget v1, p1, Landroid/os/Message;->what:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->notifyRadioAvailable(I)V

    .line 1450
    nop

    .line 1506
    :goto_f3
    return-void

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_ec
        :pswitch_ec
        :pswitch_ec
        :pswitch_ec
        :pswitch_e8
        :pswitch_45
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_29
    .end packed-switch
.end method

.method public isAllowAirplaneModeChange()Z
    .registers 2

    .line 1674
    const-string v0, "always allow airplane mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1675
    const/4 v0, 0x1

    return v0
.end method

.method protected isIccIdReady(I)Z
    .registers 5
    .param p1, "phoneId"    # I

    .line 992
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "iccId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 994
    .local v1, "ret":Z
    if-eqz v0, :cond_12

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_12

    .line 998
    :cond_10
    const/4 v1, 0x1

    goto :goto_13

    .line 995
    :cond_12
    :goto_12
    const/4 v1, 0x0

    .line 1000
    :goto_13
    return v1
.end method

.method protected isModemOff(I)Z
    .registers 7
    .param p1, "phoneId"    # I

    .line 1616
    const/4 v0, 0x0

    .line 1618
    .local v0, "powerOff":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 1619
    .local v1, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v2, Lcom/mediatek/internal/telephony/RadioManager$2;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "vendor.ril.ipo.radiooff"

    const-string v4, "1"

    packed-switch v2, :pswitch_data_4e

    .line 1641
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4c

    .line 1638
    :pswitch_21
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1639
    goto :goto_4c

    .line 1624
    :pswitch_2a
    packed-switch p1, :pswitch_data_58

    .line 1632
    const/4 v0, 0x1

    .line 1633
    goto :goto_4c

    .line 1629
    :pswitch_2f
    const-string v2, "vendor.ril.ipo.radiooff.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1630
    goto :goto_4c

    .line 1626
    :pswitch_3a
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1627
    goto :goto_4c

    .line 1621
    :pswitch_43
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1622
    nop

    .line 1644
    :goto_4c
    return v0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_43
        :pswitch_2a
        :pswitch_21
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_2f
    .end packed-switch
.end method

.method protected isValidPhoneId(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 592
    if-ltz p1, :cond_f

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_f

    .line 595
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 593
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method protected final monitorModemPowerChangeDone(ZII)[Landroid/os/Message;
    .registers 9
    .param p1, "power"    # Z
    .param p2, "phoneBitMap"    # I
    .param p3, "mainCapabilityPhoneId"    # I

    .line 1688
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:Z

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "monitorModemPowerChangeDone, Power:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PhoneBitMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainCapabilityPhoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPhoneCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNeedIgnoreMessageForChangeDone:Z

    .line 1694
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsRadioUnavailable:Z

    .line 1695
    iget v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    new-array v1, v0, [Landroid/os/Message;

    .line 1697
    .local v1, "msgs":[Landroid/os/Message;
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:Z

    if-nez v2, :cond_57

    .line 1700
    invoke-static {p1, p2, p3, v0}, Lcom/mediatek/internal/telephony/RadioManager;->createMessage(ZIII)[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    move-result-object v0

    .line 1702
    .local v0, "messages":[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;
    iput-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPowerMessages:[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;

    .line 1705
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_44
    array-length v3, v0

    if-ge v2, v3, :cond_57

    .line 1706
    aget-object v3, v0, v2

    if-eqz v3, :cond_54

    .line 1707
    const/4 v3, 0x6

    aget-object v4, v0, v2

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1705
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 1712
    .end local v0    # "messages":[Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;
    .end local v2    # "i":I
    :cond_57
    return-object v1
.end method

.method public notifyAirplaneModeChange(Z)V
    .registers 9
    .param p1, "enabled"    # Z

    .line 623
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne p1, v0, :cond_28

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAirplaneMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " is not expected (the same)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 626
    return-void

    .line 628
    :cond_28
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v0

    .line 629
    .local v0, "phoneId":I
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Airplane mode changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDesiredPower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-boolean v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentModemPower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-boolean v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mCurrentModemPower:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 635
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 636
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 633
    invoke-virtual {v1, v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 639
    if-eqz p1, :cond_72

    .line 640
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    .line 643
    :cond_72
    const/4 v1, -0x1

    .line 645
    .local v1, "radioAction":I
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v2

    if-nez v2, :cond_a6

    .line 646
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget-boolean v2, v2, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->mDesiredModemPower:Z

    if-eqz v2, :cond_90

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v2, :cond_90

    .line 648
    const-string v2, "Airplane mode changed: turn on all radio due to mode conflict"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 649
    const/4 v1, 0x1

    goto :goto_b2

    .line 650
    :cond_90
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v2, :cond_9f

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    if-eqz v2, :cond_9f

    .line 652
    const-string v2, "airplane mode changed: airplane mode on and wifi-calling on. Then,leave airplane mode: turn on/off all radio"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 654
    const/4 v1, 0x1

    goto :goto_b2

    .line 656
    :cond_9f
    const-string v2, "Airplane mode changed: turn on/off all modem"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 657
    const/4 v1, 0x2

    goto :goto_b2

    .line 659
    :cond_a6
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 660
    const-string v2, "Airplane mode changed: turn on/off all radio"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 661
    const/4 v1, 0x1

    .line 664
    :cond_b2
    :goto_b2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_f1

    .line 665
    xor-int/lit8 v2, p1, 0x1

    .line 667
    .local v2, "radioPower":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v3

    .line 668
    .local v3, "targetPhoneId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_cb

    .line 669
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    .line 671
    :cond_cb
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 672
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_cf
    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v4, v5, :cond_db

    .line 673
    if-eq v3, v4, :cond_d8

    .line 674
    invoke-virtual {p0, v2, v4}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 672
    :cond_d8
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    .line 678
    .end local v4    # "i":I
    :cond_db
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 679
    .local v4, "intent":Landroid/content/Intent;
    xor-int/lit8 v5, p1, 0x1

    const-string v6, "airplaneMode"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 680
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v2    # "radioPower":Z
    .end local v3    # "targetPhoneId":I
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_103

    .line 682
    :cond_f1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_103

    .line 683
    xor-int/lit8 v3, p1, 0x1

    .line 684
    .local v3, "modemPower":Z
    const-string v4, "1"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 685
    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    # invokes: Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->updateModemPowerState(ZII)V
    invoke-static {v4, v3, v5, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    goto :goto_104

    .line 682
    .end local v3    # "modemPower":Z
    :cond_103
    :goto_103
    nop

    .line 688
    :goto_104
    return-void
.end method

.method public notifyMSimModeChange(I)V
    .registers 8
    .param p1, "mode"    # I

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSIM mode changed, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1247
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1d

    .line 1248
    const-string v0, "Invalid mode, MSIM_MODE intent has no extra value"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1249
    return-void

    .line 1251
    :cond_1d
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    goto/16 :goto_b0

    .line 1256
    :cond_2a
    const/4 v0, 0x0

    .line 1257
    .local v0, "phoneId":I
    const/4 v2, 0x1

    .line 1258
    .local v2, "iccIdReady":Z
    const/4 v0, 0x0

    :goto_2d
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v3, :cond_3c

    .line 1259
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v3

    if-nez v3, :cond_39

    .line 1260
    const/4 v2, 0x0

    .line 1261
    goto :goto_3c

    .line 1258
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1265
    :cond_3c
    :goto_3c
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyMSimModeChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1266
    if-nez v2, :cond_50

    .line 1269
    new-instance v1, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;I)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifyMSimModeChangeRunnable:Ljava/lang/Runnable;

    .line 1271
    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1272
    return-void

    .line 1275
    :cond_50
    const/4 v0, 0x0

    :goto_51
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v3, :cond_af

    .line 1276
    shl-int v3, v1, v0

    and-int/2addr v3, p1

    if-nez v3, :cond_5c

    .line 1277
    const/4 v3, 0x0

    goto :goto_5d

    :cond_5c
    move v3, v1

    .line 1278
    .local v3, "singlePhonePower":Z
    :goto_5d
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "N/A"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 1279
    const/4 v3, 0x0

    .line 1280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sim not insert, set  power  to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1283
    :cond_86
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Radio Power due to MSIM mode change, power: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p0, v3, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 1275
    .end local v3    # "singlePhonePower":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 1289
    .end local v0    # "phoneId":I
    .end local v2    # "iccIdReady":Z
    :cond_af
    return-void

    .line 1252
    :cond_b0
    :goto_b0
    const-string v0, "Airplane mode on or MSIM Mode option is closed, do nothing!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1253
    return-void
.end method

.method public notifyRadioAvailable(I)V
    .registers 7
    .param p1, "phoneId"    # I

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " notifies radio available airplane mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cryptkeeper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsWifiOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 733
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioAvaliable()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 734
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    const/4 v1, 0x3

    # invokes: Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->sendEvent(I)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$700(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;I)V

    .line 736
    :cond_40
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_6d

    .line 739
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->cleanModemPowerMessage()V

    .line 740
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v0, v1, :cond_6d

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 741
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v0

    if-nez v0, :cond_6d

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    if-nez v0, :cond_6d

    .line 743
    const-string v0, "Power off modem because boot up under airplane mode"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    const/4 v2, 0x0

    shl-int v3, v1, p1

    const/16 v4, 0x40

    # invokes: Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->updateModemPowerState(ZII)V
    invoke-static {v0, v2, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 753
    :cond_6d
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirDnMsgSent:Z

    if-nez v0, :cond_96

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v0, v1, :cond_96

    .line 754
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isUnderCryptKeeper()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 755
    :cond_81
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 756
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "airplaneMode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 757
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 758
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirDnMsgSent:Z

    .line 760
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_96
    return-void
.end method

.method public notifySimModeChange(ZI)V
    .registers 6
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM mode changed, power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1195
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isMSimModeSupport()Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    goto :goto_9d

    .line 1199
    :cond_28
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifySimModeChangeRunnable:[Ljava/lang/Runnable;

    aget-object v0, v0, p2

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1200
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1201
    const-string v0, "sim mode read iccid not ready, wait for 200ms"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1203
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifySimModeChangeRunnable:[Ljava/lang/Runnable;

    new-instance v1, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    aput-object v1, v0, p2

    .line 1205
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNotifySimModeChangeRunnable:[Ljava/lang/Runnable;

    aget-object v0, v0, p2

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1206
    return-void

    .line 1209
    :cond_4d
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "N/A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1210
    const/4 p1, 0x0

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sim not insert, set  power  to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1213
    :cond_76
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/RadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Radio Power due to SIM mode change, power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 1218
    return-void

    .line 1196
    :cond_9d
    :goto_9d
    const-string v0, "Airplane mode on or MSIM Mode option is closed, do nothing!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1197
    return-void
.end method

.method protected onReceiveSimStateChangedIntent(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .line 499
    const-string v0, "android.telephony.extra.SIM_STATE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 503
    .local v0, "simStatus":I
    const-string v2, "phone"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 505
    .local v2, "phoneId":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INTENT:Invalid phone id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", do nothing!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 507
    return-void

    .line 510
    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INTENT:SIM_STATE_CHANGED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", sim status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 513
    const/4 v3, 0x1

    .line 515
    .local v3, "desiredRadioPower":Z
    const/16 v5, 0xb

    const-string v6, "]: "

    const-string v7, "Phone["

    const/4 v8, 0x1

    if-ne v5, v0, :cond_c9

    .line 516
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v8, v1, v2

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/RadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "iccid":Ljava/lang/String;
    const-string v5, "N/A"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":SIM ready but ICCID not ready, do nothing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 523
    return-void

    .line 526
    :cond_a6
    const/4 v3, 0x1

    .line 527
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v5, :cond_c8

    .line 528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 532
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_c8
    goto :goto_eb

    .line 534
    :cond_c9
    if-ne v8, v0, :cond_eb

    .line 535
    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v1, v4, v2

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 547
    :cond_eb
    :goto_eb
    return-void
.end method

.method public onReceiveWifiOnlyModeStateChangedIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 555
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 556
    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received ACTION_WIFI_ONLY_MODE_CHANGED, enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 559
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    if-ne v0, v1, :cond_43

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mWifiOnlyMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " is not expected (the same)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 562
    return-void

    .line 565
    :cond_43
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    .line 566
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v1, :cond_56

    .line 567
    xor-int/lit8 v1, v0, 0x1

    .line 568
    .local v1, "radioPower":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4c
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v2, v3, :cond_56

    .line 569
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    .line 568
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 572
    .end local v1    # "radioPower":Z
    .end local v2    # "i":I
    :cond_56
    return-void
.end method

.method protected onReceiveWifiStateChangedIntent(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 444
    const/4 v0, 0x1

    .line 445
    .local v0, "extraWifiState":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediatek.intent.action.WFC_POWER_ON_MODEM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 446
    const-string v1, "mediatek:POWER_ON_MODEM"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    .line 447
    const/4 v1, 0x3

    goto :goto_1a

    :cond_19
    move v1, v3

    :goto_1a
    move v0, v1

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiving ACTION_WIFI_OFFLOAD_SERVICE_ON, airplaneMode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isFlightModePowerOffModemConfigEnabled:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsWifiOn: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 460
    const/4 v1, 0x4

    const-string v4, "1"

    packed-switch v0, :pswitch_data_b4

    .line 493
    :pswitch_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default: WIFI_STATE_CHANGED extra"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_ad

    .line 462
    :pswitch_62
    const-string v5, "WIFI_STATE_CHANGED enabled"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 463
    const/4 v5, 0x1

    .line 464
    .local v5, "modemPower":Z
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    .line 465
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v6, v3, :cond_ad

    .line 466
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 469
    const/4 v3, 0x1

    .line 470
    .local v3, "currModemPower":Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 471
    const/4 v3, 0x0

    .line 474
    :cond_7c
    const-string v2, "WIFI_STATE_CHANGED enabled, set modem on"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    # invokes: Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->updateModemPowerState(ZII)V
    invoke-static {v2, v5, v4, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 478
    .end local v3    # "currModemPower":Z
    goto :goto_ad

    .line 481
    .end local v5    # "modemPower":Z
    :pswitch_8c
    const-string v5, "WIFI_STATE_CHANGED disabled"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 482
    const/4 v5, 0x0

    .line 483
    .restart local v5    # "modemPower":Z
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOn:Z

    .line 484
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v2, v3, :cond_ad

    .line 485
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemConfigEnabled()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 486
    const-string v2, "WIFI_STATE_CHANGED disabled, set modem off"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 488
    iget-object v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    # invokes: Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->updateModemPowerState(ZII)V
    invoke-static {v2, v5, v3, v1}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 496
    .end local v5    # "modemPower":Z
    :cond_ad
    :goto_ad
    return-void

    .line 449
    :cond_ae
    const-string v1, "Wrong intent"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 450
    return-void

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_4d
        :pswitch_62
    .end packed-switch
.end method

.method protected readIccIdUsingPhoneId(I)Ljava/lang/String;
    .registers 7
    .param p1, "phoneId"    # I

    .line 1004
    const-string v0, "N/A"

    .line 1007
    .local v0, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    .line 1008
    .local v1, "ctrl":Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    if-eqz v1, :cond_e

    .line 1009
    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->getIccid(I)Ljava/lang/String;

    move-result-object v0

    .line 1012
    :cond_e
    const-string v2, "N/A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1013
    const-string v2, "N/A"

    .local v2, "printableIccid":Ljava/lang/String;
    goto :goto_25

    .line 1015
    .end local v2    # "printableIccid":Ljava/lang/String;
    :cond_19
    invoke-static {v0}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/RadioManager;->binaryToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1017
    .restart local v2    # "printableIccid":Ljava/lang/String;
    :goto_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hash(ICCID) for phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1018
    return-object v0
.end method

.method protected refreshIccIdPreference(ZLjava/lang/String;)V
    .registers 5
    .param p1, "power"    # Z
    .param p2, "iccid"    # Ljava/lang/String;

    .line 1292
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->simSwitchMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 1294
    const-string v0, "SIM on/off feature is enabled, don\'t refresh iccid preference"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1295
    return-void

    .line 1298
    :cond_11
    const-string v0, "refresh iccid preference"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1299
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1300
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_2a

    const-string v1, "N/A"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1301
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->putIccIdToPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_2d

    .line 1303
    :cond_2a
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->removeIccIdFromPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 1305
    :goto_2d
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1306
    return-void
.end method

.method protected refreshSimSetting(ZI)V
    .registers 8
    .param p1, "radioPower"    # Z
    .param p2, "phoneId"    # I

    .line 1026
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isDeviceShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1027
    const-string v0, "RadioManager"

    const-string v1, "[RadioManager] skip the refreshSimSetting because device is shutdown"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    return-void

    .line 1032
    :cond_16
    iget v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    .line 1034
    .local v0, "oldMode":I
    const/4 v1, 0x1

    if-nez p1, :cond_23

    .line 1035
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    shl-int/2addr v1, p2

    not-int v1, v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    goto :goto_29

    .line 1037
    :cond_23
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    shl-int/2addr v1, p2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    .line 1040
    :goto_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh MSIM mode setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1041
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    .line 1043
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1044
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1041
    invoke-virtual {v1, v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 1045
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimModeSetting:I

    const-string v3, "msim_mode_setting"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1047
    return-void
.end method

.method protected resetSimInsertedStatus(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset Sim InsertedStatus for Phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 1425
    return-void
.end method

.method public setRadioPower(ZI)I
    .registers 13
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioPower, power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 848
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 849
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x1

    if-nez v0, :cond_24

    .line 850
    return v1

    .line 853
    :cond_24
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_2d

    if-eqz p1, :cond_37

    :cond_2d
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-ne v2, v1, :cond_37

    .line 854
    const-string v1, "Set Radio Power on under airplane mode, ignore"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 855
    return v3

    .line 859
    :cond_37
    invoke-static {}, Lcom/mediatek/internal/telephony/ratconfiguration/RatConfiguration;->getActiveRatConfig()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 860
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mIsWifiOnlyDevice:Z

    .line 861
    const-string v1, "wifi-only device, so return"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 862
    const/4 v1, 0x3

    return v1

    .line 867
    :cond_4c
    invoke-static {p2}, Lcom/mediatek/internal/telephony/RadioManager;->isModemPowerOff(I)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modem for phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " off, do not set radio again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 869
    const/4 v1, 0x4

    return v1

    .line 873
    :cond_6d
    const-string v2, "persist.vendor.pco5.radio.ctrl"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 874
    .local v2, "pcoEnable":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    aget v5, v5, p2

    if-ne v1, v5, :cond_8a

    if-eqz p1, :cond_8a

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 875
    const-string v1, "Not allow to turn on radio under PCO=5"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 876
    const/4 v1, 0x6

    return v1

    .line 880
    :cond_8a
    iget-object v4, p0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    aget v4, v4, p2

    if-ne v1, v4, :cond_9f

    iget-object v4, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 881
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v4

    if-nez v4, :cond_9f

    .line 882
    const-string v1, "PCO5 and already off"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 883
    const/4 v1, 0x7

    return v1

    .line 887
    :cond_9f
    const/4 v4, 0x0

    .line 888
    .local v4, "isInEcc":Z
    iget-object v5, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    const-string v6, "telecom"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    .line 889
    .local v5, "tm":Landroid/telecom/TelecomManager;
    if-eqz v5, :cond_b3

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 890
    const/4 v4, 0x1

    .line 894
    :cond_b3
    if-nez p1, :cond_bd

    if-eqz v4, :cond_bd

    .line 895
    const-string v1, "Not allow to operate radio power during emergency call"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 896
    return v3

    .line 903
    :cond_bd
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mRadioPowerRunnable:[Ljava/lang/Runnable;

    aget-object v3, v3, p2

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/RadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 904
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/RadioManager;->isRadioAvaliable()Z

    move-result v3

    if-eqz v3, :cond_174

    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->isIccIdReady(I)Z

    move-result v3

    if-nez v3, :cond_d2

    goto/16 :goto_174

    .line 918
    :cond_d2
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->updateSimInsertedStatus()V

    .line 920
    move v3, p1

    .line 921
    .local v3, "radioPower":Z
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->simSwitchMode()I

    move-result v6

    if-ne v6, v1, :cond_140

    .line 923
    const-string v6, "Radio on/off feature is enabled, adjust radio power according to ICCID"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v6

    .line 926
    .local v6, "iccId":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/RadioManager;->isRequiredRadioOff(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12f

    .line 927
    if-eqz v4, :cond_f9

    .line 928
    const-string v1, "Adjust radio to off because once manually turned off during ECC, return"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 929
    const/16 v1, 0x9

    return v1

    .line 932
    :cond_f9
    const-string v7, "N/A"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_104

    .line 933
    const-string v7, "N/A"

    .local v7, "printableIccid":Ljava/lang/String;
    goto :goto_111

    .line 935
    .end local v7    # "printableIccid":Ljava/lang/String;
    :cond_104
    nop

    .line 936
    invoke-static {v6}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 935
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/RadioManager;->getHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/RadioManager;->binaryToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 938
    .restart local v7    # "printableIccid":Ljava/lang/String;
    :goto_111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adjust radio to off because once manually turned off, hash(iccid): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " , phone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 940
    const/4 v3, 0x0

    .line 941
    .end local v7    # "printableIccid":Ljava/lang/String;
    :cond_12e
    goto :goto_140

    :cond_12f
    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/RadioManager;->mAirplaneMode:Z

    if-nez v7, :cond_12e

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isShuttingDown()Z

    move-result v7

    if-nez v7, :cond_12e

    iget-object v7, p0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    aget v7, v7, p2

    if-eq v1, v7, :cond_12e

    .line 943
    const/4 v3, 0x1

    .line 947
    .end local v6    # "iccId":Ljava/lang/String;
    :cond_140
    :goto_140
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/RadioManager;->mWifiOnlyMode:Z

    if-ne v6, v1, :cond_14c

    if-nez v4, :cond_14c

    .line 948
    const-string v1, "setradiopower but wifi only, turn off"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 949
    const/4 v3, 0x0

    .line 952
    :cond_14c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trigger set Radio Power, power: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", phoneId: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 953
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v6, v6}, Lcom/android/internal/telephony/Phone;->setRadioPower(ZZZZ)V

    .line 955
    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshSimSetting(ZI)V

    .line 956
    return v6

    .line 905
    .end local v3    # "radioPower":Z
    :cond_174
    :goto_174
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mForceSetRadioPowerRunnable:[Ljava/lang/Runnable;

    aget-object v1, v1, p2

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_193

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ForceSetRadioPowerRunnable exists queue, do not execute RadioPowerRunnablefor phone "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    goto :goto_1aa

    .line 909
    :cond_193
    const-string v1, "RILD initialize not completed, wait for 200ms"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 910
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mRadioPowerRunnable:[Ljava/lang/Runnable;

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    aput-object v3, v1, p2

    .line 911
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mRadioPowerRunnable:[Ljava/lang/Runnable;

    aget-object v1, v1, p2

    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v1, v6, v7}, Lcom/mediatek/internal/telephony/RadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 913
    :goto_1aa
    const/4 v1, 0x5

    return v1
.end method

.method public setRadioPower(ZII)I
    .registers 5
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I
    .param p3, "reason"    # I

    .line 965
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mReason:[I

    aput p3, v0, p2

    .line 966
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)I

    move-result v0

    return v0
.end method

.method public setSilentRebootPropertyForAllModem(Ljava/lang/String;)V
    .registers 9
    .param p1, "isSilentReboot"    # Ljava/lang/String;

    .line 713
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 714
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/RadioManager;->findMainCapabilityPhoneId()I

    move-result v1

    .line 715
    .local v1, "phoneId":I
    const/4 v2, 0x0

    .line 716
    .local v2, "on":I
    const-string v3, "1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 717
    const/4 v2, 0x1

    .line 720
    :cond_16
    const-string v3, "enable silent reboot"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 721
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v1

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v4, 0xa

    .line 722
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    .line 723
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/RadioManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 721
    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->setVendorSetting(ILjava/lang/String;Landroid/os/Message;)V

    .line 724
    return-void
.end method

.method protected setSimInsertedStatus(I)V
    .registers 6
    .param p1, "phoneId"    # I

    .line 974
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "iccId":Ljava/lang/String;
    const-string v1, "N/A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    .line 976
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v2, v1, p1

    goto :goto_17

    .line 978
    :cond_13
    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v3, v1, p1

    .line 982
    :goto_17
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ne v1, v3, :cond_2d

    .line 985
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_22
    iget v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v1, v3, :cond_2d

    .line 986
    iget-object v3, p0, Lcom/mediatek/internal/telephony/RadioManager;->mSimInsertedStatus:[I

    aput v2, v3, v1

    .line 985
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 989
    .end local v1    # "i":I
    :cond_2d
    return-void
.end method

.method protected simStatusToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "simStatus"    # I

    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_10

    goto :goto_e

    .line 606
    :pswitch_5
    const-string v0, "SIM DETECTED"

    .line 607
    goto :goto_e

    .line 609
    :pswitch_8
    const-string v0, "NO SIM DETECTED"

    goto :goto_e

    .line 603
    :pswitch_b
    const-string v0, "SIM HAVE NOT INITIALIZED"

    .line 604
    nop

    .line 612
    :goto_e
    return-object v0

    nop

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method protected unMonitorModemPowerChangeDone()V
    .registers 6

    .line 1716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mNeedIgnoreMessageForChangeDone:Z

    .line 1718
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1719
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mModemPower:Z

    xor-int/2addr v0, v2

    const-string v2, "airplaneMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1720
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1723
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v2, :cond_41

    .line 1724
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1725
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_25

    .line 1726
    goto :goto_3e

    .line 1728
    :cond_25
    iget-object v3, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 1729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unMonitorModemPowerChangeDone, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1723
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1731
    .end local v0    # "i":I
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_41
    return-void
.end method

.method protected updateSimInsertedStatus()V
    .registers 4

    .line 1428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPhoneCount:I

    if-ge v0, v1, :cond_1f

    .line 1429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update Sim InsertedStatus for Phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setSimInsertedStatus(I)V

    .line 1428
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1432
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method protected waitForReady(Z)Z
    .registers 5
    .param p1, "state"    # Z

    .line 1734
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/RadioManager;->waitRadioAvaliable(Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1735
    const-string v0, "waitForReady, wait radio avaliable"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->log(Ljava/lang/String;)V

    .line 1736
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager;->mPowerSM:Lcom/mediatek/internal/telephony/RadioManager$PowerSM;

    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager;->mBitmapForPhoneCount:I

    const/4 v2, 0x2

    # invokes: Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->updateModemPowerState(ZII)V
    invoke-static {v0, p1, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager$PowerSM;->access$300(Lcom/mediatek/internal/telephony/RadioManager$PowerSM;ZII)V

    .line 1740
    const/4 v0, 0x1

    return v0

    .line 1742
    :cond_15
    const/4 v0, 0x0

    return v0
.end method
